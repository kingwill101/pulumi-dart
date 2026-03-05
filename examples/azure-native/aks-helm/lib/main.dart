import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerservice.dart' as containerservice;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azuread/index.dart' as azuread;
import 'package:pulumi_kubernetes/helm_sh.dart' as helm;
import 'package:pulumi_kubernetes/providers.dart' as k8s;
import 'package:pulumi_tls/index.dart' as tls;

class AzureNativeAksHelmStack extends pulumi.Stack {
  AzureNativeAksHelmStack() : super() {
    final config = pulumi.Config();

    final k8sVersion = config.get('k8sVersion') ?? '1.26.3';
    final nodeCount = int.tryParse(config.get('nodeCount') ?? '') ?? 2;
    final nodeSize = config.get('nodeSize') ?? 'Standard_D2_v2';
    final adminUserName = config.get('adminUserName') ?? 'testuser';

    final resourceGroup = resources.ResourceGroup('rg');

    final adApp = azuread.Application(
      'app',
      args: azuread.ApplicationArgs(displayName: 'app'.output()),
    );

    final adSp = azuread.ServicePrincipal(
      'service-principal',
      args: azuread.ServicePrincipalArgs(clientId: adApp.clientId),
    );

    final adSpPassword = azuread.ServicePrincipalPassword(
      'sp-password',
      args: azuread.ServicePrincipalPasswordArgs(
        servicePrincipalId: adSp.id,
        endDate: '2099-01-01T00:00:00Z'.output(),
      ),
    );

    final generatedKeyPair = tls.PrivateKey(
      'ssh-key',
      args: tls.PrivateKeyArgs(
        algorithm: 'RSA'.output(),
        rsaBits: 4096.output(),
      ),
    );
    final sshPublicKey =
        config.get('sshPublicKey')?.output() ??
        generatedKeyPair.publicKeyOpenssh;

    final cluster = containerservice.ManagedCluster(
      'cluster',
      args: containerservice.ManagedClusterArgs(
        resourceGroupName: resourceGroup.name,
        addonProfiles: {
          'KubeDashboard': containerservice.ManagedClusterAddonProfile(
            enabled: true.output(),
          ),
        }.output(),
        agentPoolProfiles: [
          containerservice.ManagedClusterAgentPoolProfile(
            count: nodeCount.output(),
            vmSize: nodeSize.output(),
            maxPods: 110.output(),
            mode: 'System'.output(),
            name: 'agentpool'.output(),
            osDiskSizeGB: 30.output(),
            osType: 'Linux'.output(),
            type: 'VirtualMachineScaleSets'.output(),
          ),
        ].output(),
        dnsPrefix: resourceGroup.name,
        enableRBAC: true.output(),
        kubernetesVersion: k8sVersion.output(),
        linuxProfile: containerservice.ContainerServiceLinuxProfile(
          adminUsername: adminUserName.output(),
          ssh: containerservice.ContainerServiceSshConfiguration(
            publicKeys: [
              containerservice.ContainerServiceSshPublicKey(
                keyData: sshPublicKey,
              ),
            ].output(),
          ).output(),
        ).output(),
        nodeResourceGroup: 'node-resource-group'.output(),
        servicePrincipalProfile:
            containerservice.ManagedClusterServicePrincipalProfile(
              clientId: adApp.clientId,
              secret: adSpPassword.value,
            ).output(),
      ),
    );

    final kubeConfig = pulumi.Output.tuple(resourceGroup.name, cluster.name)
        .apply<String>((pair) async {
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

    final k8sProvider = k8s.ProviderProvider(
      'k8s-provider',
      args: k8s.ProviderArgs(kubeconfig: kubeConfig),
    );

    helm.Chart(
      'apache-chart',
      args: helm.ChartArgs(
        chart: 'apache'.output(),
        version: '8.3.2'.output(),
        fetchOpts: helm.FetchOpts(
          repo: 'https://charts.bitnami.com/bitnami'.output(),
        ).input(),
      ),
      options: pulumi.ComponentResourceOptions(provider: k8sProvider),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'clusterName': cluster.name,
      'kubeconfig': kubeConfig,
    });
  }
}
