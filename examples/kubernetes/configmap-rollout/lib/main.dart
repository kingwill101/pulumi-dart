import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;

class ConfigMapRolloutStack extends pulumi.Stack {
  ConfigMapRolloutStack() : super() {
    final config = pulumi.Config();
    final isMinikube = config.require('isMinikube') == 'true';

    const appName = 'nginx';
    final appLabels = <String, String>{'app': appName};

    final nginxConfig = k8score.ConfigMapCoreV1(
      appName,
      args: k8score.ConfigMapArgs(
        metadata: k8smeta.ObjectMeta(labels: appLabels.output()).output(),
        data: {
          'default.conf': File('default.conf').readAsStringSync(),
        }.output(),
      ),
    );
    final nginxConfigName = nginxConfig.metadata.apply<String>(
      (metadata) => metadata.name,
    );

    k8sapps.DeploymentAppsV1(
      appName,
      args: k8sapps.DeploymentArgs(
        metadata: k8smeta.ObjectMeta(labels: appLabels.output()).output(),
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
                  image: 'nginx:1.13.6-alpine'.output(),
                  name: 'nginx'.output(),
                  volumeMounts: [
                    k8score.VolumeMount(
                      name: 'nginx-configs'.output(),
                      mountPath: '/etc/nginx/conf.d'.output(),
                    ),
                  ].output(),
                ),
              ].output(),
              volumes: [
                k8score.Volume(
                  name: 'nginx-configs'.output(),
                  configMap: k8score.ConfigMapVolumeSource(
                    name: nginxConfigName,
                  ).output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
    );

    final frontend = k8score.ServiceCoreV1(
      appName,
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(labels: appLabels.output()).output(),
        spec: k8score.ServiceSpec(
          type: (isMinikube ? 'ClusterIP' : 'LoadBalancer').output(),
          ports: [
            k8score.ServicePort(
              port: 80.output(),
              targetPort: 80.output(),
              protocol: 'TCP'.output(),
            ),
          ].output(),
          selector: appLabels.output(),
        ).output(),
      ),
    );

    final frontendIp = isMinikube
        ? frontend.spec.apply((spec) => spec.clusterIP)
        : frontend.status.apply((status) {
            final ingress =
                (status?.loadBalancer as dynamic)?.ingress as List<dynamic>?;
            if (ingress == null || ingress.isEmpty) {
              return null;
            }
            final first = ingress.first;
            if (first is Map<String, dynamic>) {
              return first['ip'] as String?;
            }
            return null;
          });

    registerOutputs({'frontendIp': frontendIp});
  }
}
