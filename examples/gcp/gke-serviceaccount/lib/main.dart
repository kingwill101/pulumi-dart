import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class GkeServiceAccountStack extends pulumi.Stack {
  late final pulumi.Output<String> clusterName;
  late final pulumi.Output<String> kubeconfig;

  GkeServiceAccountStack() {
    final config = pulumi.Config();
    final name = config.get('name') ?? 'gke-serviceaccount-example';
    final machineType = config.get('machineType') ?? 'n1-standard-1';

    final gcpConfig = pulumi.Config('gcp');
    final project = gcpConfig.require('project');
    final zone = gcpConfig.require('zone');

    final serviceAccount = gcp.serviceaccount.Account(
      'service-account',
      args: gcp.serviceaccount.AccountArgs(
        accountId: name.output(),
        displayName: 'A service account for a GKE application'.output(),
      ),
    );

    final serviceAccountKey = gcp.serviceaccount.Key(
      'service-account-key',
      args: gcp.serviceaccount.KeyArgs(
        serviceAccountId: serviceAccount.name,
        publicKeyType: 'TYPE_X509_PEM_FILE'.output(),
      ),
    );

    gcp.projects.IAMBinding(
      'service-account-pub',
      args: gcp.projects.IAMBindingArgs(
        role: 'roles/pubsub.subscriber'.output(),
        project: project.output(),
        members: serviceAccount.email.apply(
          (email) => ['serviceAccount:$email'],
        ),
      ),
    );

    final cluster = gcp.container.Cluster(
      'cluster',
      args: gcp.container.ClusterArgs(
        name: name.output(),
        location: zone.output(),
        initialNodeCount: 1.output(),
        removeDefaultNodePool: true,
      ),
    );

    final nodePool = gcp.container.NodePool(
      'primary-node-pool',
      args: gcp.container.NodePoolArgs(
        cluster: cluster.name,
        location: cluster.location,
        initialNodeCount: 2.output(),
        nodeConfig: gcp.container.NodePoolNodeConfig(
          preemptible: true,
          machineType: machineType,
          oauthScopes: const [
            'https://www.googleapis.com/auth/compute',
            'https://www.googleapis.com/auth/devstorage.read_only',
            'https://www.googleapis.com/auth/logging.write',
            'https://www.googleapis.com/auth/monitoring',
          ],
        ),
        management: gcp.container.NodePoolManagement(autoRepair: true),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cluster]),
    );

    final kubeConfigValue =
        pulumi.Output.tuple3(
          cluster.name,
          cluster.endpoint,
          cluster.masterAuth,
        ).apply<String>((values) {
          final clusterNameValue = values.$1;
          final endpoint = values.$2;
          final masterAuth = values.$3;
          final context = '${project}_${zone}_$clusterNameValue';
          return '''apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${masterAuth.clusterCaCertificate ?? ''}
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
      provideClusterInfo: true
''';
        });

    final k8sProvider = k8sproviders.ProviderProvider(
      'k8s-provider',
      args: k8sproviders.ProviderArgs(kubeconfig: kubeConfigValue),
      options: pulumi.CustomResourceOptions(dependsOn: [nodePool]),
    );

    final appLabels = <String, String>{'appClass': 'pubsub'};

    final ns = k8score.NamespaceCoreV1(
      'pubsub-ns',
      args: k8score.NamespaceArgs(
        metadata: k8smeta.ObjectMeta(
          name: 'pubsub',
          labels: appLabels,
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    final credentialsSecret = k8score.SecretCoreV1(
      'gcp-credentials',
      args: k8score.SecretArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: ns.metadata.apply((m) => m.name ?? 'pubsub'),
          labels: appLabels,
        ).output(),
        type: 'Opaque',
        stringData: serviceAccountKey.privateKey.apply((key) {
          final decoded = utf8.decode(base64Decode(key));
          return {'gcp-credentials.json': decoded};
        }),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    k8sapps.DeploymentAppsV1(
      'pubsub',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          namespace: ns.metadata.apply((m) => m.name ?? 'pubsub'),
          labels: appLabels,
        ).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1,
          selector: k8smeta.LabelSelector(matchLabels: appLabels),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels),
            spec: k8score.PodSpec(
              volumes: [
                k8score.Volume(
                  name: 'google-cloud-key',
                  secret: k8score.SecretVolumeSource(
                    secretName: credentialsSecret.metadata.apply(
                      (m) => m.name ?? 'gcp-credentials',
                    ),
                  ),
                ),
              ],
              containers: [
                k8score.Container(
                  name: 'pubsub-example',
                  image: 'gcr.io/google-samples/pubsub-sample:v1',
                  volumeMounts: [
                    k8score.VolumeMount(
                      name: 'google-cloud-key',
                      mountPath: '/var/secrets/google',
                    ),
                  ],
                  env: [
                    k8score.EnvVar(
                      name: 'GOOGLE_APPLICATION_CREDENTIALS',
                      value: '/var/secrets/google/gcp-credentials.json',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: k8sProvider),
    );

    clusterName = cluster.name;
    kubeconfig = kubeConfigValue;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('clusterName', clusterName),
      pulumi.OutputProperty('kubeconfig', kubeconfig),
    ];
  }
}
