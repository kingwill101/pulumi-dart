import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;

class NginxStack extends pulumi.Stack {
  NginxStack() : super() {
    final config = pulumi.Config();
    final replicas = (config.getNumber('replicas') ?? 2).toInt();

    final nginxLabels = <String, String>{'app': 'nginx'};
    final nginxDeployment = k8sapps.DeploymentAppsV1(
      'nginx-deployment',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: nginxLabels.output(),
          ).output(),
          replicas: replicas.output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: nginxLabels.output()).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'nginx'.output(),
                  image: 'nginx:1.7.9'.output(),
                  ports: [
                    k8score.ContainerPort(containerPort: 80.output()),
                  ].output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
    );

    final nginx = nginxDeployment.metadata.apply((metadata) => metadata.name);
    registerOutputs({'nginx': nginx});
  }
}
