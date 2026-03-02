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
    final clusterNodeCount = (config.getNumber('clusterNodeCount') ?? 3).toInt();
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
        databaseVersion: 'POSTGRES_9_6'.output(),
        settings: gcp.sql
            .DatabaseInstanceSettings(
              tier: 'db-f1-micro'.output(),
              ipConfiguration: gcp.sql
                  .DatabaseInstanceSettingsIpConfiguration(
                    authorizedNetworks: [
                      gcp.sql
                    .DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork(
                            value: '0.0.0.0/0'.output(),
                          ),
                    ].output(),
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
        name: dbUsername.output(),
        password: dbPassword.output(),
      ),
    );

    // Create a GKE cluster using defaults from the GCP provider configuration.
    final cluster = gcp.container.Cluster(
      'gke-cluster',
      args: gcp.container.ClusterArgs(
        // We can't create a cluster with no node pool defined, but we want to only
        // use separately managed node pools.
        initialNodeCount: 1.output(),
        removeDefaultNodePool: true.output(),
        minMasterVersion: masterVersion,
      ),
    );

    final nodePool = gcp.container.NodePool(
      'primary-node-pool',
      args: gcp.container.NodePoolArgs(
        cluster: cluster.name,
        initialNodeCount: clusterNodeCount.output(),
        location: cluster.location,
        nodeConfig: gcp.container.NodePoolNodeConfig(
          preemptible: true.output(),
          machineType: clusterNodeMachineType.output(),
          oauthScopes: const [
            'https://www.googleapis.com/auth/compute',
            'https://www.googleapis.com/auth/devstorage.read_only',
            'https://www.googleapis.com/auth/logging.write',
            'https://www.googleapis.com/auth/monitoring',
          ].output(),
        ).output(),
        version: masterVersion,
        management: gcp.container.NodePoolManagement(autoRepair: true.output())
            .output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [cluster]),
    );

    // Manufacture a GKE-style kubeconfig.
    final kubeConfig =
        pulumi.Output.tuple3(
          cluster.name,
          cluster.endpoint,
          cluster.masterAuth,
        ).apply<String>((values) {
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

    final appImage = docker.index.Image(
      'rails-app',
      args: docker.index.ImageArgs(
        imageName:
            '$dockerUsername/${pulumi.Deployment.instance.projectName}_${pulumi.Deployment.instance.stackName}'.output(),
        build: docker.index.DockerBuild(context: './app'.output()).output(),
      ),
    );

    const appPort = 3000;
    const appLabels = {'app': 'rails-app'};

    final appDeployment = k8sapps.DeploymentAppsV1(
      'rails-deployment',
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
                  name: 'rails-app'.output(),
                  image: appImage.imageName,
                  env: [
                    k8score.EnvVar(
                      name: 'DB_HOST'.output(),
                      value: dbInstance.firstIpAddress,
                    ),
                    k8score.EnvVar(
                      name: 'DB_USERNAME'.output(),
                      value: dbUsername.output(),
                    ),
                    k8score.EnvVar(
                      name: 'DB_PASSWORD'.output(),
                      value: dbPassword.output(),
                    ),
                  ].output(),
                  ports: [k8score.ContainerPort(containerPort: appPort.output())]
                      .output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final appService = k8score.ServiceCoreV1(
      'rails-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          labels: appDeployment.metadata
              .apply<Map<String, String>>(
                (metadata) => metadata.labels ?? appLabels,
              ),
        ).output(),
        spec: k8score.ServiceSpec(
          type: 'LoadBalancer'.output(),
          selector: appLabels.output(),
          ports: [
            k8score.ServicePort(
              port: appPort.output(),
              targetPort: appPort.output(),
            ),
          ].output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    final appAddress = appService.status
        .apply((s) => s?.loadBalancer)
        .apply((lb) => lb?.ingress)
        .apply((ingress) {
          if (ingress == null || ingress.isEmpty) {
            return '';
          }
          return 'http://${ingress.first.ip ?? ""}:$appPort';
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
