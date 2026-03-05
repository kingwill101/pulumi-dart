import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;

class GuestbookStack extends pulumi.Stack {
  GuestbookStack() : super() {
    final config = pulumi.Config();
    final isMinikube = config.getBoolean('isMinikube') ?? false;

    final redisLeaderLabels = <String, String>{'app': 'redis-leader'};
    k8sapps.DeploymentAppsV1(
      'redis-leader',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: redisLeaderLabels.output(),
          ).output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(
              labels: redisLeaderLabels.output(),
            ).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'redis-leader'.output(),
                  image: 'redis'.output(),
                  resources: k8score.ResourceRequirements(
                    requests: {'cpu': '100m', 'memory': '100Mi'}.output(),
                  ).output(),
                  ports: [
                    k8score.ContainerPort(containerPort: 6379.output()),
                  ].output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
    );

    k8score.ServiceCoreV1(
      'redis-leader',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          name: 'redis-leader'.output(),
          labels: redisLeaderLabels.output(),
        ).output(),
        spec: k8score.ServiceSpec(
          ports: [
            k8score.ServicePort(port: 6379.output(), targetPort: 6379.output()),
          ].output(),
          selector: redisLeaderLabels.output(),
        ).output(),
      ),
    );

    final redisReplicaLabels = <String, String>{'app': 'redis-replica'};
    k8sapps.DeploymentAppsV1(
      'redis-replica',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: redisReplicaLabels.output(),
          ).output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(
              labels: redisReplicaLabels.output(),
            ).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'replica'.output(),
                  image: 'pulumi/guestbook-redis-replica'.output(),
                  resources: k8score.ResourceRequirements(
                    requests: {'cpu': '100m', 'memory': '100Mi'}.output(),
                  ).output(),
                  env: [
                    k8score.EnvVar(
                      name: 'GET_HOSTS_FROM'.output(),
                      value: 'dns'.output(),
                    ),
                  ].output(),
                  ports: [
                    k8score.ContainerPort(containerPort: 6379.output()),
                  ].output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
    );

    k8score.ServiceCoreV1(
      'redis-replica',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          name: 'redis-replica'.output(),
          labels: redisReplicaLabels.output(),
        ).output(),
        spec: k8score.ServiceSpec(
          ports: [
            k8score.ServicePort(port: 6379.output(), targetPort: 6379.output()),
          ].output(),
          selector: redisReplicaLabels.output(),
        ).output(),
      ),
    );

    final frontendLabels = <String, String>{'app': 'frontend'};
    final frontendDeployment = k8sapps.DeploymentAppsV1(
      'frontend',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: frontendLabels.output(),
          ).output(),
          replicas: 3.output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(
              labels: frontendLabels.output(),
            ).output(),
            spec: k8score.PodSpec(
              containers: [
                k8score.Container(
                  name: 'frontend'.output(),
                  image: 'pulumi/guestbook-php-redis'.output(),
                  resources: k8score.ResourceRequirements(
                    requests: {'cpu': '100m', 'memory': '100Mi'}.output(),
                  ).output(),
                  env: [
                    k8score.EnvVar(
                      name: 'GET_HOSTS_FROM'.output(),
                      value: 'dns'.output(),
                    ),
                  ].output(),
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

    final frontendService = k8score.ServiceCoreV1(
      'frontend',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          labels: frontendDeployment.metadata.apply<Map<String, String>>(
            (metadata) => metadata.labels ?? frontendLabels,
          ),
          name: 'frontend'.output(),
        ).output(),
        spec: k8score.ServiceSpec(
          type: (isMinikube ? 'ClusterIP' : 'LoadBalancer').output(),
          ports: [k8score.ServicePort(port: 80.output())].output(),
          selector: frontendLabels.output(),
        ).output(),
      ),
    );

    final frontendIp = isMinikube
        ? frontendService.spec.apply((spec) => spec.clusterIP)
        : frontendService.status.apply((status) {
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
