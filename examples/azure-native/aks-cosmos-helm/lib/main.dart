import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerservice.dart' as containerservice;
import 'package:pulumi_azure_native/cosmosdb.dart' as cosmosdb;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azuread/index.dart' as azuread;
import 'package:pulumi_kubernetes/core.dart' as core;
import 'package:pulumi_kubernetes/helm_sh.dart' as helm;
import 'package:pulumi_kubernetes/meta.dart' as meta;
import 'package:pulumi_kubernetes/providers.dart' as k8s;
import 'package:pulumi_random/index.dart' as random;
import 'package:pulumi_tls/index.dart' as tls;

class AzureNativeAksCosmosHelmStack extends pulumi.Stack {
  AzureNativeAksCosmosHelmStack() : super() {
    final resourceGroup = resources.ResourceGroup('cosmosrg');

    final cosmosConfig = pulumi.Config('azure-native');
    final cosmosLocation = cosmosConfig.require('location');

    final databaseAccount = cosmosdb.DatabaseAccount(
      'cosmos-mongodb',
      args: cosmosdb.DatabaseAccountArgs(
        resourceGroupName: resourceGroup.name,
        databaseAccountOfferType: cosmosdb
            .DatabaseAccountOfferType
            .valueStandard
            .output(),
        kind: cosmosdb.DatabaseAccountKind.valueMongoDB.wireValue.output(),
        consistencyPolicy: cosmosdb.ConsistencyPolicy(
          defaultConsistencyLevel: cosmosdb
              .DefaultConsistencyLevel
              .valueBoundedStaleness
              .output(),
          maxIntervalInSeconds: 10.output(),
          maxStalenessPrefix: 200.0.output(),
        ).output(),
        locations: [
          cosmosdb.Location(
            failoverPriority: 0.output(),
            locationName: cosmosLocation.output(),
          ),
        ].output(),
      ),
    );

    final database = cosmosdb.MongoDBResourceMongoDBDatabase(
      'todos',
      args: cosmosdb.MongoDBResourceMongoDBDatabaseArgs(
        resourceGroupName: resourceGroup.name,
        accountName: databaseAccount.name,
        databaseName: 'todos'.output(),
        resource: cosmosdb.MongoDBDatabaseResource(
          id: 'todos'.output(),
        ).output(),
      ),
    );

    final adApp = azuread.Application(
      'app',
      args: azuread.ApplicationArgs(displayName: 'aks-cosmos'.output()),
    );
    final adSp = azuread.ServicePrincipal(
      'service-principal',
      args: azuread.ServicePrincipalArgs(clientId: adApp.clientId),
    );
    final password = random.RandomPassword(
      'pw',
      args: random.RandomPasswordArgs(
        length: 20.output(),
        special: true.output(),
      ),
    );
    final adSpPassword = azuread.ServicePrincipalPassword(
      'sp-password',
      args: azuread.ServicePrincipalPasswordArgs(
        servicePrincipalId: adSp.id,
        endDate: '2099-01-01T00:00:00Z'.output(),
      ),
    );
    final keyPair = tls.PrivateKey(
      'ssh-key',
      args: tls.PrivateKeyArgs(
        algorithm: 'RSA'.output(),
        rsaBits: 4096.output(),
      ),
    );

    final cluster = containerservice.ManagedCluster(
      'demoaks',
      args: containerservice.ManagedClusterArgs(
        resourceGroupName: resourceGroup.name,
        addonProfiles: {
          'KubeDashboard': containerservice.ManagedClusterAddonProfile(
            enabled: true.output(),
          ),
        }.output(),
        agentPoolProfiles: [
          containerservice.ManagedClusterAgentPoolProfile(
            count: 1.output(),
            vmSize: 'Standard_D2_v2'.output(),
            maxPods: 110.output(),
            mode: containerservice.AgentPoolMode.valueSystem.wireValue.output(),
            name: 'agentpool'.output(),
            osDiskSizeGB: 30.output(),
            osType: 'Linux'.output(),
            type: 'VirtualMachineScaleSets'.output(),
          ),
        ].output(),
        dnsPrefix: resourceGroup.name,
        enableRBAC: true.output(),
        kubernetesVersion: '1.34.0'.output(),
        linuxProfile: containerservice.ContainerServiceLinuxProfile(
          adminUsername: 'testuser'.output(),
          ssh: containerservice.ContainerServiceSshConfiguration(
            publicKeys: [
              containerservice.ContainerServiceSshPublicKey(
                keyData: keyPair.publicKeyOpenssh,
              ),
            ].output(),
          ).output(),
        ).output(),
        nodeResourceGroup: 'demoaks-node-rg'.output(),
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

    final secretName = 'mongo-secrets';
    final mongoSecretData = _kubernetesSecretData(
      resourceGroup.name,
      databaseAccount.name,
      database.name,
    );
    core.SecretCoreV1(
      secretName,
      args: core.SecretArgs(
        metadata: meta.ObjectMeta(name: secretName.output()).output(),
        data: mongoSecretData,
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    final chart = helm.Chart(
      'node',
      args: helm.ChartArgs(
        chart: 'node'.output(),
        version: '15.2.3'.output(),
        fetchOpts: helm.FetchOpts(
          repo: 'https://charts.bitnami.com/bitnami'.output(),
        ).input(),
        values: {
          'service': <String, dynamic>{'type': 'LoadBalancer'},
          'mongodb': <String, dynamic>{'enabled': false},
          'externaldb': <String, dynamic>{
            'enabled': true,
            'ssl': true,
            'secretName': secretName,
          },
        }.output(),
      ),
      options: pulumi.ComponentResourceOptions(provider: k8sProvider),
    );

    final service = core.ServiceCoreV1(
      'node-service',
      args: core.ServiceArgs(
        metadata: meta.ObjectMeta(name: 'node'.output()).output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: k8sProvider,
        dependsOn: [chart],
        id: 'default/node'.output(),
      ),
    );

    final endpoint = service.status.apply<String?>((status) async {
      if (status == null || status.loadBalancer == null) {
        return null;
      }
      final loadBalancer = await status.loadBalancer!.output().getValue();
      final ingress = loadBalancer.ingress == null
          ? const []
          : await loadBalancer.ingress!.output().getValue();
      if (ingress.isEmpty) {
        return null;
      }
      final firstIngress = ingress.first;
      if (firstIngress.ip == null) {
        return null;
      }
      final ip = await firstIngress.ip!.output().getValue();
      return 'http://$ip';
    });

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'endpoint': endpoint,
      'clusterName': cluster.name,
      'generatedPassword': password.result,
    });
  }
}

pulumi.Output<Map<String, String>> _kubernetesSecretData(
  pulumi.Output<String> resourceGroupName,
  pulumi.Output<String> accountName,
  pulumi.Output<String> databaseName,
) {
  return pulumi.Output.all<String>([
    resourceGroupName,
    accountName,
    databaseName,
  ]).apply<Map<String, String>>((values) async {
    final connectionStrings = await cosmosdb
        .listDatabaseAccountConnectionStrings(
          cosmosdb.ListDatabaseAccountConnectionStringsArgs(
            resourceGroupName: values[0].output(),
            accountName: values[1].output(),
          ),
        );
    final results = connectionStrings.connectionStrings ?? const [];
    if (results.isEmpty) {
      throw Exception('No database account connection strings were returned');
    }

    final first = results.first;
    final connectionString = await first.connectionString.output().getValue();
    return _parseMongoConnectionString(connectionString, values[2]);
  });
}

Map<String, String> _parseMongoConnectionString(
  String connectionString,
  String databaseName,
) {
  final match = RegExp(
    r'^mongodb://([^:]+):([^@]+)@([^:]+):(\d+)/',
  ).firstMatch(connectionString);
  if (match == null) {
    throw FormatException('Unexpected MongoDB connection string format');
  }

  final username = match.group(1)!;
  final password = match.group(2)!;
  final host = match.group(3)!;
  final port = match.group(4)!;

  String base64Of(String value) => base64Encode(utf8.encode(value));

  return <String, String>{
    'host': base64Of(host),
    'port': base64Of(port),
    'username': base64Of(username),
    'password': base64Of(Uri.encodeComponent(password)),
    'database': base64Of(databaseName),
  };
}
