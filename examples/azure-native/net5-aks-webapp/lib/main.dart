import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerservice.dart' as containerservice;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azuread/index.dart' as azuread;
import 'package:pulumi_kubernetes/apps.dart' as apps;
import 'package:pulumi_kubernetes/core.dart' as core;
import 'package:pulumi_kubernetes/meta.dart' as meta;
import 'package:pulumi_kubernetes/providers.dart' as k8s;
import 'package:pulumi_random/index.dart' as random;
import 'package:pulumi_tls/index.dart' as tls;

class AzureNativeNet5AksWebappStack extends pulumi.Stack {
  AzureNativeNet5AksWebappStack() : super() {
    final config = pulumi.Config();
    final dockerImage = config.get('dockerImage') ?? 'strm/helloworld-http';
    final vmCount = int.tryParse(config.get('vmCount') ?? '') ?? 3;
    final vmSize = config.get('vmSize') ?? 'Standard_DS2_v2';
    final kubernetesVersion = config.get('kubernetesVersion') ?? '1.34.0';

    final resourceGroup = resources.ResourceGroup('rg');

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
      'managedCluster',
      args: containerservice.ManagedClusterArgs(
        resourceGroupName: resourceGroup.name,
        addonProfiles: {
          'KubeDashboard': containerservice.ManagedClusterAddonProfile(
            enabled: true.output(),
          ),
        }.output(),
        agentPoolProfiles: [
          containerservice.ManagedClusterAgentPoolProfile(
            count: vmCount.output(),
            maxPods: 110.output(),
            mode: 'System'.output(),
            name: 'agentpool'.output(),
            osDiskSizeGB: 30.output(),
            osType: 'Linux'.output(),
            type: 'VirtualMachineScaleSets'.output(),
            vmSize: vmSize.output(),
          ),
        ].output(),
        dnsPrefix: 'demoapppulumiaks'.output(),
        enableRBAC: true.output(),
        identity: containerservice.ManagedClusterIdentity(
          type: containerservice.ResourceIdentityType.valueSystemAssigned
              .output(),
        ).output(),
        kubernetesVersion: kubernetesVersion.output(),
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
        nodeResourceGroup: 'MC_demoapppulumiaks'.output(),
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

    final provider = k8s.ProviderProvider(
      'k8s-provider',
      args: k8s.ProviderArgs(kubeconfig: kubeConfig),
    );

    final labels = <String, String>{
      'app.kubernetes.io/component': 'app',
    }.output();

    final deployment = apps.DeploymentAppsV1(
      'app',
      args: apps.DeploymentArgs(
        metadata: meta.ObjectMeta(
          namespace: 'default'.output(),
          labels: labels,
        ).output(),
        spec: apps.DeploymentSpec(
          replicas: 1.output(),
          selector: meta.LabelSelector(matchLabels: labels).output(),
          template: core.PodTemplateSpec(
            metadata: meta.ObjectMeta(labels: labels).output(),
            spec: core.PodSpec(
              containers: [
                core.Container(
                  name: 'web-app'.output(),
                  image: dockerImage.output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final service = core.ServiceCoreV1(
      'app',
      args: core.ServiceArgs(
        metadata: meta.ObjectMeta(
          namespace: 'default'.output(),
          labels: labels,
        ).output(),
        spec: core.ServiceSpec(
          type: 'LoadBalancer'.output(),
          ports: [
            core.ServicePort(port: 80.output(), targetPort: 80.output()),
          ].output(),
          selector: labels,
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(
        provider: provider,
        dependsOn: [deployment],
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
      final first = ingress.first;
      if (first.ip == null) {
        return null;
      }
      final ip = await first.ip!.output().getValue();
      return 'http://$ip';
    });

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'endpoint': endpoint,
      'kubeconfig': kubeConfig,
      'generatedPassword': password.result,
    });
  }
}
