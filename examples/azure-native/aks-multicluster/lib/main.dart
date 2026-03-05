import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerservice.dart' as containerservice;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azuread/index.dart' as azuread;

class AzureNativeAksMulticlusterStack extends pulumi.Stack {
  AzureNativeAksMulticlusterStack() : super() {
    final config = pulumi.Config();

    final clusterConfigs = <Map<String, dynamic>>[
      <String, dynamic>{
        'name': 'east',
        'location': 'eastus',
        'nodeCount': 2,
        'nodeSize': 'Standard_D2_v2',
      },
      <String, dynamic>{
        'name': 'west',
        'location': 'westus',
        'nodeCount': 5,
        'nodeSize': 'Standard_D2_v2',
      },
    ];

    final resourceGroup = resources.ResourceGroup(
      'aks',
      args: resources.ResourceGroupArgs(
        location: (config.get('location') ?? 'eastus').output(),
      ),
    );

    final adApp = azuread.Application(
      'aks',
      args: azuread.ApplicationArgs(
        displayName: 'my-aks-multicluster'.output(),
      ),
    );

    final adSp = azuread.ServicePrincipal(
      'aksSp',
      args: azuread.ServicePrincipalArgs(clientId: adApp.clientId),
    );

    final adSpPassword = azuread.ServicePrincipalPassword(
      'aksSpPassword',
      args: azuread.ServicePrincipalPasswordArgs(
        servicePrincipalId: adSp.id,
        endDate: '2099-01-01T00:00:00Z'.output(),
      ),
    );

    final sshPublicKey = config.require('sshPublicKey').output();

    final aksClusterNames = <pulumi.Output<String>>[];

    for (final clusterConfig in clusterConfigs) {
      final clusterName = clusterConfig['name'] as String;
      final clusterLocation = clusterConfig['location'] as String;
      final clusterNodeCount = clusterConfig['nodeCount'] as int;
      final clusterNodeSize = clusterConfig['nodeSize'] as String;

      final cluster = containerservice.ManagedCluster(
        'aksCluster-$clusterName',
        args: containerservice.ManagedClusterArgs(
          resourceGroupName: resourceGroup.name,
          linuxProfile: containerservice.ContainerServiceLinuxProfile(
            adminUsername: 'aksuser'.output(),
            ssh: containerservice.ContainerServiceSshConfiguration(
              publicKeys: [
                containerservice.ContainerServiceSshPublicKey(
                  keyData: sshPublicKey,
                ),
              ].output(),
            ).output(),
          ).output(),
          servicePrincipalProfile:
              containerservice.ManagedClusterServicePrincipalProfile(
                clientId: adApp.clientId,
                secret: adSpPassword.value,
              ).output(),
          location: clusterLocation.output(),
          agentPoolProfiles: [
            containerservice.ManagedClusterAgentPoolProfile(
              mode: 'System'.output(),
              name: 'agentpool'.output(),
              count: clusterNodeCount.output(),
              vmSize: clusterNodeSize.output(),
            ),
          ].output(),
          dnsPrefix: '$clusterName-kube'.output(),
          kubernetesVersion: '1.34.0'.output(),
        ),
      );

      aksClusterNames.add(cluster.name);
    }

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'aksClusterNames': pulumi.Output.all<String>(aksClusterNames),
    });
  }
}
