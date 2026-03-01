import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_docker/pulumi_docker.dart' as docker;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;
import 'package:pulumi_kubernetes/providers.dart' as k8sproviders;

class K8sRubyOnRailsPostgresqlStack extends pulumi.Stack {
  K8sRubyOnRailsPostgresqlStack() {
    final config = pulumi.Config();
    final gcpConfig = pulumi.Config('gcp');

    // Docker config.
    final dockerUsername = config.require('dockerUsername');
    config.require('dockerPassword');

    // PostgreSQL config.
    final dbUsername = config.get('dbUsername') ?? 'rails';
    final dbPassword = config.require('dbPassword');

    // Kubernetes config.
    final clusterNodeCount = config.getNumber('clusterNodeCount') ?? 3;
    final clusterNodeMachineType =
        config.get('clusterNodeMachineType') ?? 'n1-standard-1';
    config.get('clusterUsername') ?? 'admin';
    config.require('clusterPassword');
    final masterVersionSetting = config.get('masterVersion');
    final masterVersion = masterVersionSetting != null
        ? masterVersionSetting.output()
        : pulumi.Output.create('').apply<String>((_) async {
            final versions = await gcp.container.getEngineVersions(
              gcp.container.GetEngineVersionsArgs(),
            );
            return versions.latestMasterVersion;
          });

    // Provision a PostgreSQL instance for the Rails app.
    final dbInstance = gcp.sql.DatabaseInstance(
      'web-db',
      args: gcp.sql.DatabaseInstanceArgs(
        databaseVersion: 'POSTGRES_9_6',
        settings: gcp.sql
            .DatabaseInstanceSettings(
              tier: 'db-f1-micro',
              ipConfiguration: gcp.sql
                  .DatabaseInstanceSettingsIpConfiguration(
                    authorizedNetworks: [
                      gcp.sql
                          .DatabaseInstanceSettingsIpConfigurationAuthorizedNetworks(
                            value: '0.0.0.0/0',
                          ),
                    ],
                  )
                  .output(),
            )
            .output(),
      ),
    );

    gcp.sql.User(
      'web-db-user',
      args: gcp.sql.UserArgs(
        instance: dbInstance.name,
        name: dbUsername,
        password: dbPassword,
      ),
    );

    // Create a GKE cluster using defaults from the GCP provider configuration.
    final cluster = gcp.container.Cluster(
      'gke-cluster',
      args: gcp.container.ClusterArgs(
        // We can't create a cluster with no node pool defined, but we want to only
        // use separately managed node pools.
        initialNodeCount: 1,
        removeDefaultNodePool: true,
        minMasterVersion: masterVersion,
      ),
    );

    final nodePool = gcp.container.NodePool(
      'primary-node-pool',
      args: gcp.container.NodePoolArgs(
        cluster: cluster.name,
        initialNodeCount: clusterNodeCount,
        location: cluster.location,
        nodeConfig: gcp.container.NodePoolNodeConfig(
          preemptible: true,
          machineType: clusterNodeMachineType,
          oauthScopes: const [
            'https://www.googleapis.com/auth/compute',
            'https://www.googleapis.com/auth/devstorage.read_only',
            'https://www.googleapis.com/auth/logging.write',
            'https://www.googleapis.com/auth/monitoring',
          ],
        ),
        version: masterVersion,
        management: gcp.container.NodePoolManagement(autoRepair: true),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cluster]),
    );

    // Manufacture a GKE-style kubeconfig.
    final kubeConfig =
        pulumi.Output.tuple3(
          cluster.name,
          cluster.endpoint,
          cluster.masterAuth,
        ).apply((values) {
          final clusterName = values.$1;
          final endpoint = values.$2;
          final masterAuth = values.$3;
          final project =
              gcpConfig.get('project') ??
              pulumi.Deployment.instance.projectName;
          final zone = gcpConfig.get('zone') ?? 'us-west1-a';
          final context = '${project}_${zone}_$clusterName';
          return '''apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${masterAuth.clusterCaCertificate}
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

    final provider = k8sproviders.ProviderProvider(
      'gke-k8s',
      args: k8sproviders.ProviderArgs(kubeconfig: kubeConfig),
      options: pulumi.CustomResourceOptions(dependsOn: [nodePool]),
    );

    final appImage = docker.Image(
      'rails-app',
      args: docker.ImageArgs(
        imageName:
            '$dockerUsername/${pulumi.Deployment.instance.projectName}_${pulumi.Deployment.instance.stackName}',
        build: docker.DockerBuild(context: './app'),
      ),
    );

    const appPort = 3000;
    const appLabels = {'app': 'rails-app'};

    final appDeployment = k8sapps.DeploymentAppsV1(
      'rails-deployment',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(matchLabels: appLabels),
          replicas: 1,
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'rails-app',
                  image: appImage.imageName,
                  env: [
                    k8score.EnvVar(
                      name: 'DB_HOST',
                      value: dbInstance.firstIpAddress,
                    ),
                    k8score.EnvVar(name: 'DB_USERNAME', value: dbUsername),
                    k8score.EnvVar(name: 'DB_PASSWORD', value: dbPassword),
                  ],
                  ports: [k8score.ContainerPort(containerPort: appPort)],
                ),
              ],
            ),
          ),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final appService = k8score.ServiceCoreV1(
      'rails-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          labels: appDeployment.metadata.apply(
            (metadata) => metadata.labels ?? appLabels,
          ),
        ).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer',
          selector: appLabels,
          ports: [k8score.ServicePort(port: appPort, targetPort: appPort)],
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final appAddress = appService.status.apply((s) {
      final ingress = s?.loadBalancer?.ingress;
      final firstIngress = ingress?.first;
      return 'http://${firstIngress?.ip}:$appPort';
    });

    registerOutputs({
      'appName': appDeployment.metadata.apply(
        (metadata) => metadata.name ?? '',
      ),
      'appAddress': appAddress,
      'dbAddress': dbInstance.firstIpAddress,
      'kubeConfig': kubeConfig,
    });
  }
}

Future<void> run() async {
  await pulumi.Deployment.run(() => K8sRubyOnRailsPostgresqlStack());
}
