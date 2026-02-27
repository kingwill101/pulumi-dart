// ignore_for_file: unused_element, unnecessary_cast

class ComputeEnvironmentComputeResourcesEc2Configuration {
  /// The AMI ID used for instances launched in the compute environment that match the image type. This setting overrides the `image_id` argument in the `compute_resources` block.
  final String? imageIdOverride;

  /// The Kubernetes version for the compute environment. If you don't specify a value, the latest version that AWS Batch supports is used. See [Supported Kubernetes versions](https://docs.aws.amazon.com/batch/latest/userguide/supported_kubernetes_version.html) for the list of Kubernetes versions supported by AWS Batch on Amazon EKS.
  final String? imageKubernetesVersion;

  /// The image type to match with the instance type to select an AMI. If the `image_id_override` parameter isn't specified, then a recent [Amazon ECS-optimized Amazon Linux 2 AMI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami) (`ECS_AL2`) is used.
  final String? imageType;

  ComputeEnvironmentComputeResourcesEc2Configuration({
    this.imageIdOverride,
    this.imageKubernetesVersion,
    this.imageType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageIdOverrideValue = imageIdOverride;
    if (imageIdOverrideValue != null) {
      map['imageIdOverride'] = imageIdOverrideValue;
    }
    final imageKubernetesVersionValue = imageKubernetesVersion;
    if (imageKubernetesVersionValue != null) {
      map['imageKubernetesVersion'] = imageKubernetesVersionValue;
    }
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
    }
    return map;
  }

  factory ComputeEnvironmentComputeResourcesEc2Configuration.fromMap(
      Map<String, dynamic> map) {
    return ComputeEnvironmentComputeResourcesEc2Configuration(
      imageIdOverride: map['imageIdOverride'] == null
          ? null
          : map['imageIdOverride'] as String,
      imageKubernetesVersion: map['imageKubernetesVersion'] == null
          ? null
          : map['imageKubernetesVersion'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
    );
  }
}
