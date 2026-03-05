import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/authorization.dart' as authorization;
import 'package:pulumi_azure_native/containerservice.dart' as containerservice;
import 'package:pulumi_azure_native/managedidentity.dart' as managedidentity;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_tls/index.dart' as tls;

class AzureNativeAksManagedIdentityStack extends pulumi.Stack {
  AzureNativeAksManagedIdentityStack() : super() {
    final resourceGroup = resources.ResourceGroup('resourceGroup');

    final privateKey = tls.PrivateKey(
      'privateKey',
      args: tls.PrivateKeyArgs(
        algorithm: 'RSA'.output(),
        rsaBits: 4096.output(),
      ),
    );

    final identity = managedidentity.UserAssignedIdentity(
      'identity',
      args: managedidentity.UserAssignedIdentityArgs(
        resourceGroupName: resourceGroup.name,
      ),
    );

    final cluster = containerservice.ManagedCluster(
      'cluster',
      args: containerservice.ManagedClusterArgs(
        resourceGroupName: resourceGroup.name,
        identity: containerservice.ManagedClusterIdentity(
          type: containerservice.ResourceIdentityType.valueUserAssigned
              .output(),
          userAssignedIdentities: identity.id.apply((id) => <String>[id]),
        ).output(),
        kubernetesVersion: '1.34.0'.output(),
        dnsPrefix: 'dns-prefix'.output(),
        enableRBAC: true.output(),
        agentPoolProfiles: [
          containerservice.ManagedClusterAgentPoolProfile(
            name: 'agentpool'.output(),
            mode: 'System'.output(),
            count: 1.output(),
            vmSize: 'Standard_A2_v2'.output(),
            osType: 'Linux'.output(),
            osDiskSizeGB: 30.output(),
            type: 'VirtualMachineScaleSets'.output(),
          ),
        ].output(),
        linuxProfile: containerservice.ContainerServiceLinuxProfile(
          adminUsername: 'aksuser'.output(),
          ssh: containerservice.ContainerServiceSshConfiguration(
            publicKeys: [
              containerservice.ContainerServiceSshPublicKey(
                keyData: privateKey.publicKeyOpenssh,
              ),
            ].output(),
          ).output(),
        ).output(),
      ),
    );

    authorization.RoleAssignment(
      'roleAssignment',
      args: authorization.RoleAssignmentArgs(
        principalId: identity.principalId,
        principalType: 'ServicePrincipal'.output(),
        roleDefinitionId:
            '/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c'
                .output(),
        scope: resourceGroup.id,
      ),
    );

    final kubeConfig = pulumi.Output.tuple(resourceGroup.name, cluster.name)
        .apply((pair) async {
          final credentials = await containerservice
              .listManagedClusterAdminCredentials(
                containerservice.ListManagedClusterAdminCredentialsArgs(
                  resourceGroupName: pair.$1.output(),
                  resourceName: pair.$2.output(),
                ),
              );

          if (credentials.kubeconfigs.isEmpty) {
            throw Exception(
              'No kubeconfig returned by listManagedClusterAdminCredentials',
            );
          }

          final encoded = await credentials.kubeconfigs.first.value
              .output()
              .getValue();
          return utf8.decode(base64Decode(encoded));
        });

    registerOutputs(<String, pulumi.Output<dynamic>>{'kubeconfig': kubeConfig});
  }
}
