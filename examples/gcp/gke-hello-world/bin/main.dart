import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final config = pulumi.Config();
    final gcpConfig = pulumi.Config('gcp');
    final project = gcpConfig.get('project');
    final zone = gcpConfig.get('zone');

    if (project == null || project.isEmpty) {
      throw Exception('Missing required GCP config: gcp:project');
    }
    if (zone == null || zone.isEmpty) {
      throw Exception('Missing required GCP config: gcp:zone');
    }

    final masterVersionConfig = config.get('masterVersion');
    final pulumi.Output<String> masterVersion = masterVersionConfig != null
        ? masterVersionConfig.output()
        : pulumi.Output.create('').apply<String>((_) async {
            final versions = await gcp.container.getEngineVersions(
              gcp.container.GetEngineVersionsArgs(location: zone.output()),
            );
            return versions.latestMasterVersion;
          });

    const name = 'helloworld';

    final cluster = gcp.container.Cluster(
      name,
      args: gcp.container.ClusterArgs(
        location: zone.output(),
        initialNodeCount: 1.output(),
        removeDefaultNodePool: true.output(),
        minMasterVersion: masterVersion,
      ),
    );

    final nodePool = gcp.container.NodePool(
      'primary-node-pool',
      args: gcp.container.NodePoolArgs(
        cluster: cluster.name,
        location: cluster.location,
        initialNodeCount: 2.output(),
        nodeConfig: gcp.container
            .NodePoolNodeConfig(
              preemptible: true,
              machineType: 'n1-standard-1',
              oauthScopes: const [
                'https://www.googleapis.com/auth/compute',
                'https://www.googleapis.com/auth/devstorage.read_only',
                'https://www.googleapis.com/auth/logging.write',
                'https://www.googleapis.com/auth/monitoring',
              ],
            )
            .output(),
        version: masterVersion,
        management: gcp.container.NodePoolManagement(autoRepair: true).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cluster]),
    );

    final kubeConfig =
        pulumi.Output.all([
          cluster.name,
          cluster.endpoint,
          cluster.masterAuth,
        ]).apply<String>((values) {
          final clusterName = values[0] as String;
          final endpoint = values[1] as String;
          final masterAuth = values[2] as dynamic;
          final context = '${project}_${zone}_$clusterName';

          return '''apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${(masterAuth.clusterCaCertificate as String?) ?? ''}
    server: https://$endpoint
  name: $context
contexts:
- context:
    cluster: $context
    user: $context
  name: $context
current-context: $context
kind: Config
preferences: {}
users:
- name: $context
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1beta1
      command: gke-gcloud-auth-plugin
      installHint: Install gke-gcloud-auth-plugin for use with kubectl by following
        https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
      provideClusterInfo: true
''';
        });

    final clusterProvider = k8sproviders.ProviderProvider(
      name,
      args: k8sproviders.ProviderArgs(kubeconfig: kubeConfig),
      options: pulumi.CustomResourceOptions(dependsOn: [nodePool]),
    );

    final namespace = k8score.NamespaceCoreV1(
      name,
      args: k8score.NamespaceArgs(),
      options: pulumi.CustomResourceOptions(provider: clusterProvider),
    );

    final namespaceName = namespace.metadata.apply(
      (metadata) => metadata.name ?? name,
    );
    final appLabels = <String, String>{'appClass': name};

    final deployment = k8sapps.DeploymentAppsV1(
      name,
      args: k8sapps.DeploymentArgs(
        metadata: namespaceName.apply(
          (ns) => k8smeta.ObjectMeta(namespace: ns, labels: appLabels),
        ),
        spec: k8sapps.DeploymentSpec(
          replicas: 1,
          selector: k8smeta.LabelSelector(matchLabels: appLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: name,
                  image: 'nginx:latest',
                  ports: [
                    k8score.ContainerPort(name: 'http', containerPort: 80),
                  ],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: clusterProvider),
    );

    final service = k8score.ServiceCoreV1(
      name,
      args: k8score.ServiceArgs(
        metadata: namespaceName.apply(
          (ns) => k8smeta.ObjectMeta(namespace: ns, labels: appLabels),
        ),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          ports: [k8score.ServicePort(port: 80, targetPort: 80)],
          selector: appLabels,
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: clusterProvider),
    );

    final servicePublicIp = service.status.apply((status) {
      final ingress = status?.loadBalancer?.ingress;
      if (ingress == null || ingress.isEmpty) {
        return '';
      }
      return ingress.first.ip ?? '';
    });

    registerOutputs({
      'masterVersion': masterVersion,
      'clusterName': cluster.name,
      'kubeconfig': kubeConfig,
      'namespaceName': namespaceName,
      'deploymentName': deployment.metadata.apply((meta) => meta.name ?? ''),
      'serviceName': service.metadata.apply((meta) => meta.name ?? ''),
      'servicePublicIP': servicePublicIp,
    });
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => ExampleStack());
}
