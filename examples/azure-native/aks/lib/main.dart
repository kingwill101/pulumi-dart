import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerservice.dart' as containerservice;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azuread/index.dart' as azuread;
import 'package:pulumi_random/index.dart' as random;
import 'package:pulumi_tls/index.dart' as tls;

class AzureNativeAksStack extends pulumi.Stack {
  AzureNativeAksStack() : super() {
    final resourceGroup = resources.ResourceGroup('azure-cs-aks');

    final adApp = azuread.Application(
      'aks',
      args: azuread.ApplicationArgs(displayName: 'aks'.output()),
    );

    final adSp = azuread.ServicePrincipal(
      'aksSp',
      args: azuread.ServicePrincipalArgs(clientId: adApp.clientId),
    );

    final password = random.RandomPassword(
      'password',
      args: random.RandomPasswordArgs(
        length: 20.output(),
        special: true.output(),
      ),
    );

    final adSpPassword = azuread.ServicePrincipalPassword(
      'aksSpPassword',
      args: azuread.ServicePrincipalPasswordArgs(
        servicePrincipalId: adSp.id,
        endDate: '2099-01-01T00:00:00Z'.output(),
      ),
    );

    final sshKey = tls.PrivateKey(
      'ssh-key',
      args: tls.PrivateKeyArgs(
        algorithm: 'RSA'.output(),
        rsaBits: 4096.output(),
      ),
    );

    final cluster = containerservice.ManagedCluster(
      'my-aks',
      args: containerservice.ManagedClusterArgs(
        resourceGroupName: resourceGroup.name,
        agentPoolProfiles: [
          containerservice.ManagedClusterAgentPoolProfile(
            count: 3.output(),
            maxPods: 110.output(),
            mode: 'System'.output(),
            name: 'agentpool'.output(),
            osDiskSizeGB: 30.output(),
            osType: 'Linux'.output(),
            type: 'VirtualMachineScaleSets'.output(),
            vmSize: 'Standard_DS2_v2'.output(),
          ),
        ].output(),
        dnsPrefix: 'AzureNativeprovider'.output(),
        enableRBAC: true.output(),
        kubernetesVersion: '1.34.0'.output(),
        linuxProfile: containerservice.ContainerServiceLinuxProfile(
          adminUsername: 'testuser'.output(),
          ssh: containerservice.ContainerServiceSshConfiguration(
            publicKeys: [
              containerservice.ContainerServiceSshPublicKey(
                keyData: sshKey.publicKeyOpenssh,
              ),
            ].output(),
          ).output(),
        ).output(),
        nodeResourceGroup: 'MC_azure-cs_my_aks'.output(),
        servicePrincipalProfile:
            containerservice.ManagedClusterServicePrincipalProfile(
              clientId: adApp.clientId,
              secret: adSpPassword.value,
            ).output(),
      ),
    );

    final kubeConfig = pulumi.Output.tuple(resourceGroup.name, cluster.name)
        .apply((pair) async {
          final credentials = await containerservice
              .listManagedClusterUserCredentials(
                containerservice.ListManagedClusterUserCredentialsArgs(
                  resourceGroupName: pair.$1.output(),
                  resourceName: pair.$2.output(),
                ),
              );

          if (credentials.kubeconfigs.isEmpty) {
            throw Exception(
              'No kubeconfig returned by listManagedClusterUserCredentials',
            );
          }

          final encoded = await credentials.kubeconfigs.first.value
              .output()
              .getValue();
          return utf8.decode(base64Decode(encoded));
        });

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'kubeconfig': kubeConfig,
      'generatedPassword': password.result,
    });
  }
}
