// ignore_for_file: unused_element, unnecessary_cast

class ComputeEnvironmentComputeResourcesEc2Configuration {
  /// The AMI ID used for instances launched in the compute environment that match the image type. This setting overrides the <span pulumi-lang-nodejs="`imageId`" pulumi-lang-dotnet="`ImageId`" pulumi-lang-go="`imageId`" pulumi-lang-python="`image_id`" pulumi-lang-yaml="`imageId`" pulumi-lang-java="`imageId`">`image_id`</span> argument in the <span pulumi-lang-nodejs="`computeResources`" pulumi-lang-dotnet="`ComputeResources`" pulumi-lang-go="`computeResources`" pulumi-lang-python="`compute_resources`" pulumi-lang-yaml="`computeResources`" pulumi-lang-java="`computeResources`">`compute_resources`</span> block.
  final String? imageIdOverride;

  /// The Kubernetes version for the compute environment. If you don't specify a value, the latest version that AWS Batch supports is used. See [Supported Kubernetes versions](https://docs.aws.amazon.com/batch/latest/userguide/supported_kubernetes_version.html) for the list of Kubernetes versions supported by AWS Batch on Amazon EKS.
  final String? imageKubernetesVersion;

  /// The image type to match with the instance type to select an AMI. If the <span pulumi-lang-nodejs="`imageIdOverride`" pulumi-lang-dotnet="`ImageIdOverride`" pulumi-lang-go="`imageIdOverride`" pulumi-lang-python="`image_id_override`" pulumi-lang-yaml="`imageIdOverride`" pulumi-lang-java="`imageIdOverride`">`image_id_override`</span> parameter isn't specified, then a recent [Amazon ECS-optimized Amazon Linux 2 AMI](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami) (`ECS_AL2`) is used.
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
