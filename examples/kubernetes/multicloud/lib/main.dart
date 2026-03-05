import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class MulticloudStack extends pulumi.Stack {
  MulticloudStack() : super() {
    final config = pulumi.Config();
    final imageTag = config.get('imageTag') ?? 'blue';

    final localProvider = k8sproviders.ProviderProvider('local');
    final providers =
        <
          ({
            String name,
            k8sproviders.ProviderProvider provider,
            String? staticIp,
          })
        >[(name: 'local', provider: localProvider, staticIp: null)];

    final aksKubeconfig = config.get('aksKubeconfig');
    if (aksKubeconfig != null && aksKubeconfig.isNotEmpty) {
      providers.add((
        name: 'aks',
        provider: k8sproviders.ProviderProvider(
          'aks',
          args: k8sproviders.ProviderArgs(kubeconfig: aksKubeconfig.output()),
        ),
        staticIp: config.get('aksStaticAppIp'),
      ));
    }

    final eksKubeconfig = config.get('eksKubeconfig');
    if (eksKubeconfig != null && eksKubeconfig.isNotEmpty) {
      providers.add((
        name: 'eks',
        provider: k8sproviders.ProviderProvider(
          'eks',
          args: k8sproviders.ProviderArgs(kubeconfig: eksKubeconfig.output()),
        ),
        staticIp: null,
      ));
    }

    final gkeKubeconfig = config.get('gkeKubeconfig');
    if (gkeKubeconfig != null && gkeKubeconfig.isNotEmpty) {
      providers.add((
        name: 'gke',
        provider: k8sproviders.ProviderProvider(
          'gke',
          args: k8sproviders.ProviderArgs(kubeconfig: gkeKubeconfig.output()),
        ),
        staticIp: null,
      ));
    }

    final appUrlsByCluster = <String, pulumi.Output<String?>>{};
    for (final cluster in providers) {
      appUrlsByCluster[cluster.name] = _deployDemoApp(
        clusterName: cluster.name,
        provider: cluster.provider,
        imageTag: imageTag,
        staticAppIp: cluster.staticIp,
      );
    }

    final appUrls =
        pulumi.Output.all(
          appUrlsByCluster.entries.map(
            (entry) =>
                entry.value.apply((url) => <String, String?>{entry.key: url}),
          ),
        ).apply((entries) {
          final merged = <String, String?>{};
          for (final entry in entries) {
            merged.addAll(entry);
          }
          return merged;
        });

    registerOutputs({'appUrls': appUrls});
  }

  pulumi.Output<String?> _deployDemoApp({
    required String clusterName,
    required k8sproviders.ProviderProvider provider,
    required String imageTag,
    required String? staticAppIp,
  }) {
    final appLabels = <String, String>{'app': 'kuard'};

    k8sapps.DeploymentAppsV1(
      '$clusterName-demo-app',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: appLabels.output(),
          ).output(),
          replicas: 1.output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels.output()).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'kuard'.output(),
                  image: 'gcr.io/kuar-demo/kuard-amd64:$imageTag'.output(),
                  ports: [
                    k8score.ContainerPort(
                      containerPort: 8080.output(),
                      name: 'http'.output(),
                    ),
                  ].output(),
                  livenessProbe: k8score.Probe(
                    httpGet: k8score.HTTPGetAction(
                      path: '/healthy'.output(),
                      port: 8080.output(),
                    ).output(),
                    initialDelaySeconds: 5.output(),
                    timeoutSeconds: 1.output(),
                    periodSeconds: 10.output(),
                    failureThreshold: 3.output(),
                  ).output(),
                  readinessProbe: k8score.Probe(
                    httpGet: k8score.HTTPGetAction(
                      path: '/ready'.output(),
                      port: 8080.output(),
                    ).output(),
                    initialDelaySeconds: 5.output(),
                    timeoutSeconds: 1.output(),
                    periodSeconds: 10.output(),
                    failureThreshold: 3.output(),
                  ).output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final service = k8score.ServiceCoreV1(
      '$clusterName-demo-app',
      args: k8score.ServiceArgs(
        spec: k8score.ServiceSpec(
          loadBalancerIP: staticAppIp?.output(),
          selector: appLabels.output(),
          ports: [
            k8score.ServicePort(port: 80.output(), targetPort: 8080.output()),
          ].output(),
          type: 'LoadBalancer'.output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final address = service.status.apply((status) {
      final ingress =
          (status?.loadBalancer as dynamic)?.ingress as List<dynamic>?;
      if (ingress == null || ingress.isEmpty) {
        return null;
      }
      final first = ingress.first;
      if (first is Map<String, dynamic>) {
        return (first['ip'] as String?) ?? (first['hostname'] as String?);
      }
      return null;
    });

    return address.apply((value) => value == null ? null : 'http://$value:80');
  }
}
