import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/helm_sh.dart' as k8shelm;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;

class StagedRolloutWithPrometheusStack extends pulumi.Stack {
  StagedRolloutWithPrometheusStack() : super() {
    final config = pulumi.Config();
    final p90AnnotationValue =
        config.get('p90ResponseTime') ?? 'not-checked-in-dart-port';

    final prometheus = k8shelm.Release(
      'p8s',
      args: k8shelm.ReleaseArgs(
        chart: 'prometheus'.output(),
        name: 'p8s'.output(),
        repositoryOpts: k8shelm.RepositoryOpts(
          repo: 'https://prometheus-community.github.io/helm-charts'.output(),
        ).output(),
        version: '13.8.0'.output(),
      ),
    );

    final canaryLabels = <String, String>{
      'app': 'example-app',
      'track': 'canary',
    };
    final stagingLabels = <String, String>{
      'app': 'example-app',
      'track': 'staging',
    };

    final canary = k8sapps.DeploymentAppsV1(
      'canary-example-app',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          replicas: 1.output(),
          selector: k8smeta.LabelSelector(
            matchLabels: canaryLabels.output(),
          ).output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(
              annotations: {'prometheus.io/scrape': 'true'}.output(),
              labels: canaryLabels.output(),
            ).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'example-app'.output(),
                  image: 'fabxc/instrumented_app'.output(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'web'.output(),
                      containerPort: 8080.output(),
                    ),
                  ].output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [prometheus]),
    );

    final staging = k8sapps.DeploymentAppsV1(
      'staging-example-app',
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(
          annotations: {
            'example.com/p90ResponseTime': p90AnnotationValue,
          }.output(),
        ).output(),
        spec: k8sapps.DeploymentSpec(
          replicas: 1.output(),
          selector: k8smeta.LabelSelector(
            matchLabels: stagingLabels.output(),
          ).output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(
              annotations: {'prometheus.io/scrape': 'true'}.output(),
              labels: stagingLabels.output(),
            ).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'example-app'.output(),
                  image: 'fabxc/instrumented_app'.output(),
                  ports: [
                    k8score.ContainerPort(
                      name: 'web'.output(),
                      containerPort: 8080.output(),
                    ),
                  ].output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [canary]),
    );

    final p90ResponseTime = staging.metadata.apply(
      (metadata) =>
          (metadata.annotations as dynamic)?['example.com/p90ResponseTime'],
    );

    registerOutputs({'p90ResponseTime': p90ResponseTime});
  }
}
