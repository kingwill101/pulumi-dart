import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart' as crypto;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_kubernetes/apps.dart' as k8sapps;
import 'package:pulumi_kubernetes/core.dart' as k8score;
import 'package:pulumi_kubernetes/meta.dart' as k8smeta;

class S3RolloutStack extends pulumi.Stack {
  S3RolloutStack() : super() {
    final config = pulumi.Config();
    final isMinikube = config.getBoolean('isMinikube') ?? false;

    const appName = 'nginx';
    const configFile = 'default.conf';
    final appLabels = <String, String>{'app': appName};

    final fileContents = File(configFile).readAsStringSync();
    final fileDigest = crypto.md5
        .convert(utf8.encode(fileContents))
        .toString()
        .substring(0, 6);

    final configBucket = aws.s3.Bucket('nginx-configs');
    final configObject = aws.s3.BucketObject(
      configFile,
      args: aws.s3.BucketObjectArgs(
        bucket: configBucket.bucket,
        key: configFile.output(),
        source: pulumi.FileAsset(configFile).output(),
        contentType: 'text/plain'.output(),
      ),
    );

    final publicAccess = aws.s3.BucketPublicAccessBlock(
      'nginx-configs-public-access',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: configBucket.bucket,
        blockPublicAcls: false.output(),
        blockPublicPolicy: false.output(),
        ignorePublicAcls: false.output(),
        restrictPublicBuckets: false.output(),
      ),
    );

    final bucketPolicyJson = configBucket.arn.apply<String>(
      (arn) => jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Principal': '*',
            'Action': ['s3:GetObject'],
            'Resource': ['$arn/*'],
          },
        ],
      }),
    );

    aws.s3.BucketPolicy(
      'nginx-configs-policy',
      args: aws.s3.BucketPolicyArgs(
        bucket: configBucket.bucket,
        policy: bucketPolicyJson.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [publicAccess]),
    );

    final nginxConfigUrl = configBucket.bucketDomainName.apply<String>(
      (domain) => '$domain/$configFile',
    );
    final configVolumeName = configBucket.bucket.apply<String>(
      (bucket) => '$bucket-$fileDigest',
    );

    k8sapps.DeploymentAppsV1(
      appName,
      args: k8sapps.DeploymentArgs(
        spec: k8sapps.DeploymentSpec(
          selector: k8smeta.LabelSelector(
            matchLabels: appLabels.output(),
          ).output(),
          replicas: 1.output(),
          template: k8score.PodTemplateSpec(
            metadata: k8smeta.ObjectMeta(labels: appLabels.output()).output(),
            spec: k8score.PodSpec(
              initContainers: [
                k8score.Container(
                  name: 'curl'.output(),
                  image: 'byrnedo/alpine-curl'.output(),
                  args: nginxConfigUrl.apply(
                    (url) => [
                      '-o',
                      '/etc/nginx/conf.d/$configFile',
                      '-sL',
                      url,
                    ],
                  ),
                  volumeMounts: [
                    k8score.VolumeMount(
                      name: configVolumeName,
                      mountPath: '/etc/nginx/conf.d'.output(),
                    ),
                  ].output(),
                ),
              ].output(),
              containers: [
                k8score.Container(
                  image: 'nginx:1.13.6-alpine'.output(),
                  name: appName.output(),
                  volumeMounts: [
                    k8score.VolumeMount(
                      name: configVolumeName,
                      mountPath: '/etc/nginx/conf.d'.output(),
                    ),
                  ].output(),
                ),
              ].output(),
              volumes: [
                k8score.Volume(
                  name: configVolumeName,
                  emptyDir: k8score.EmptyDirVolumeSource().output(),
                ),
              ].output(),
            ).output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [configObject]),
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

    registerOutputs({
      'nginxConfigUrl': nginxConfigUrl,
      'frontendIp': frontendIp,
    });
  }
}
