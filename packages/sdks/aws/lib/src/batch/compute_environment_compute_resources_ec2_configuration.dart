// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeEnvironmentComputeResourcesEc2Configuration {
  /// The AMI ID used for instances launched in the compute environment that match the image type. This setting overrides the `image_id` argument in the `compute_resources` block.
  final pulumi.Input<String>? imageIdOverride;
  /// The Kubernetes version for the compute environment. If you don't specify a value, the latest version that AWS Batch supports is used. See [Supported Kubernetes versions](https://docs.aws.amazon.com/batch/latest/userguide/supported_kubernetes_version.html) for the list of Kubernetes versions supported by AWS Batch on Amazon EKS.
  final pulumi.Input<String>? imageKubernetesVersion;
  /// The image type to match with the instance type to select an AMI. If the `image_id_override` parameter isn't specified, then a recent [Amazon ECS-optimized Amazon Linux 2 AMI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami) (`ECS_AL2`) is used.
  final pulumi.Input<String>? imageType;

  /// Creates a new [ComputeEnvironmentComputeResourcesEc2Configuration].
  /// [imageIdOverride] The AMI ID used for instances launched in the compute environment that match the image type. This setting overrides the `image_id` argument in the `compute_resources` block.
  /// [imageKubernetesVersion] The Kubernetes version for the compute environment. If you don't specify a value, the latest version that AWS Batch supports is used. See [Supported Kubernetes versions](https://docs.aws.amazon.com/batch/latest/userguide/supported_kubernetes_version.html) for the list of Kubernetes versions supported by AWS Batch on Amazon EKS.
  /// [imageType] The image type to match with the instance type to select an AMI. If the `image_id_override` parameter isn't specified, then a recent [Amazon ECS-optimized Amazon Linux 2 AMI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami) (`ECS_AL2`) is used.
  const ComputeEnvironmentComputeResourcesEc2Configuration({
    this.imageIdOverride,
    this.imageKubernetesVersion,
    this.imageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageIdOverride': ?imageIdOverride,
      'imageKubernetesVersion': ?imageKubernetesVersion,
      'imageType': ?imageType,
    };
  }

  factory ComputeEnvironmentComputeResourcesEc2Configuration.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentComputeResourcesEc2Configuration(
      imageIdOverride: (() { final guardedValue = map['imageIdOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageKubernetesVersion: (() { final guardedValue = map['imageKubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

