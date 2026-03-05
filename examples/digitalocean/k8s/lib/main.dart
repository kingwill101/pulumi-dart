import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_digitalocean/index.dart' as digitalocean;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class DigitalOceanK8sStack extends pulumi.Stack {
  DigitalOceanK8sStack() : super() {
    final config = pulumi.Config();

    final nodeCount = int.tryParse(config.get('nodeCount') ?? '') ?? 2;
    final appReplicaCount =
        int.tryParse(config.get('appReplicaCount') ?? '') ?? 5;
    final domainName = config.get('domainName');

    final latestVersion = pulumi.Output.create('').apply<String>((_) async {
      final versions = await digitalocean.getKubernetesVersions(
        digitalocean.GetKubernetesVersionsArgs(),
      );
      return versions.latestVersion;
    });

    final cluster = digitalocean.KubernetesCluster(
      'do-cluster',
      args: digitalocean.KubernetesClusterArgs(
        region: 'nyc3'.output(),
        version: latestVersion,
        nodePool: digitalocean.KubernetesClusterNodePool(
          name: 'default'.output(),
          size: 's-2vcpu-2gb'.output(),
          nodeCount: nodeCount.output(),
        ).output(),
      ),
    );

    final kubeconfig = cluster.kubeConfigs.apply<String>((configs) {
      if (configs.isEmpty) {
        return '';
      }
      final rawConfig = configs.first['rawConfig'] as String?;
      return rawConfig ?? '';
    });

    final provider = k8sproviders.ProviderProvider(
      'do-k8s',
      args: k8sproviders.ProviderArgs(kubeconfig: kubeconfig),
    );

    final appLabels = <String, String>{'app': 'app-nginx'};

    k8sapps.DeploymentAppsV1(
      'do-app-dep',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: appLabels.output(),
          ).output(),
          replicas: appReplicaCount.output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels.output()).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'nginx'.output(),
                  image: 'nginx'.output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final appService = k8score.ServiceCoreV1(
      'do-app-svc',
      args: k8score.ServiceArgs(
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.output(),
          selector: appLabels.output(),
          ports: [k8score.ServicePort(port: 80.output())].output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final ingressIp = appService.status
        .apply(
          (status) =>
              (status?.loadBalancer as dynamic)?.ingress as List<dynamic>?,
        )
        .apply<String>((ingress) {
          if (ingress == null || ingress.isEmpty) {
            return '';
          }
          final first = ingress.first;
          if (first is Map<String, dynamic>) {
            return (first['ip'] as String?) ?? '';
          }
          return '';
        });

    if (domainName != null && domainName.isNotEmpty) {
      final domain = digitalocean.Domain(
        'do-domain',
        args: digitalocean.DomainArgs(
          name: domainName.output(),
          ipAddress: ingressIp,
        ),
      );

      digitalocean.DnsRecord(
        'do-domain-cname',
        args: digitalocean.DnsRecordArgs(
          domain: domain.name,
          type: 'CNAME'.output(),
          name: 'www'.output(),
          value: '@'.output(),
        ),
      );
    }

    registerOutputs({'ingressIp': ingressIp, 'kubeconfig': kubeconfig});
  }
}
