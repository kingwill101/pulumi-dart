import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;

class JenkinsStack extends pulumi.Stack {
  JenkinsStack() : super() {
    final config = pulumi.Config();
    final isMinikube = config.getBoolean('isMinikube') ?? false;
    final username = config.require('username');
    final password = config.require('password');

    final labels = <String, String>{'app': 'jenkins'};

    final secret = k8score.SecretCoreV1(
      'jenkins-secret',
      args: k8score.SecretArgs(
        metadata: k8smeta.ObjectMeta(name: 'jenkins'.output()).output(),
        type: 'Opaque'.output(),
        stringData: {'jenkins-password': password}.output(),
      ),
    );

    final pvc = k8score.PersistentVolumeClaimCoreV1(
      'jenkins-pvc',
      args: k8score.PersistentVolumeClaimArgs(
        metadata: k8smeta.ObjectMeta(name: 'jenkins'.output()).output(),
        spec: k8score.PersistentVolumeClaimSpec(
          accessModes: ['ReadWriteOnce'].output(),
          resources: k8score.VolumeResourceRequirements(
            requests: {'storage': '8Gi'}.output(),
          ).output(),
        ).output(),
      ),
    );

    final deployment = k8sapps.DeploymentAppsV1(
      'jenkins-deploy',
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          replicas: 1.output(),
          selector: k8smeta.LabelSelector(
            matchLabels: labels.output(),
          ).output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: labels.output()).output(),
            spec: k8score.PodSpec(
              volumes: [
                k8score.Volume(
                  name: 'jenkins-data'.output(),
                  persistentVolumeClaim:
                      k8score.PersistentVolumeClaimVolumeSource(
                        claimName: 'jenkins'.output(),
                      ).output(),
                ),
              ].output(),
              containers: [
                k8score.Container(
                  name: 'jenkins'.output(),
                  image: 'docker.io/bitnami/jenkins:2.121.2'.output(),
                  imagePullPolicy: 'IfNotPresent'.output(),
                  env: [
                    k8score.EnvVar(
                      name: 'JENKINS_USERNAME'.output(),
                      value: username.output(),
                    ),
                    k8score.EnvVar(
                      name: 'JENKINS_PASSWORD'.output(),
                      valueFrom: k8score.EnvVarSource(
                        secretKeyRef: k8score.SecretKeySelector(
                          name: 'jenkins'.output(),
                          key: 'jenkins-password'.output(),
                        ).output(),
                      ).output(),
                    ),
                  ].output(),
                  ports: [
                    k8score.ContainerPort(containerPort: 8080.output()),
                    k8score.ContainerPort(containerPort: 8443.output()),
                  ].output(),
                  volumeMounts: [
                    k8score.VolumeMount(
                      name: 'jenkins-data'.output(),
                      mountPath: '/bitnami/jenkins'.output(),
                    ),
                  ].output(),
                  resources: k8score.ResourceRequirements(
                    requests: {'memory': '512Mi', 'cpu': '100m'}.output(),
                  ).output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [secret, pvc]),
    );

    final service = k8score.ServiceCoreV1(
      'jenkins-service',
      args: k8score.ServiceArgs(
        metadata: k8smeta.ObjectMeta(
          name: 'jenkins'.output(),
          labels: labels.output(),
        ).output(),
        spec: k8score.ServiceSpec(
          type: (isMinikube ? 'ClusterIP' : 'LoadBalancer').output(),
          ports: [
            k8score.ServicePort(
              name: 'http'.output(),
              port: 80.output(),
              targetPort: 8080.output(),
            ),
            k8score.ServicePort(
              name: 'https'.output(),
              port: 443.output(),
              targetPort: 8443.output(),
            ),
          ].output(),
          selector: labels.output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [deployment]),
    );

    final externalIp = isMinikube
        ? service.spec.apply((spec) => spec.clusterIP)
        : service.status.apply((status) {
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

    registerOutputs({'externalIp': externalIp});
  }
}
