// ignore_for_file: unused_element, unnecessary_cast

class WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints {
  /// When SourceIp is Enabled the worker's IP address when a task is rendered in the worker portal is added to the IAM policy as a Condition used to generate the Amazon S3 presigned URL. This IP address is checked by Amazon S3 and must match in order for the Amazon S3 resource to be rendered in the worker portal. Valid values are `Enabled` or `Disabled`
  final String? sourceIp;

  /// When VpcSourceIp is Enabled the worker's IP address when a task is rendered in private worker portal inside the VPC is added to the IAM policy as a Condition used to generate the Amazon S3 presigned URL. To render the task successfully Amazon S3 checks that the presigned URL is being accessed over an Amazon S3 VPC Endpoint, and that the worker's IP address matches the IP address in the IAM policy. To learn more about configuring private worker portal, see [Use Amazon VPC mode from a private worker portal](https://docs.aws.amazon.com/sagemaker/latest/dg/samurai-vpc-worker-portal.html). Valid values are `Enabled` or `Disabled`
  final String? vpcSourceIp;

  /// Creates a new [WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints].
  /// [sourceIp] When SourceIp is Enabled the worker's IP address when a task is rendered in the worker portal is added to the IAM policy as a Condition used to generate the Amazon S3 presigned URL. This IP address is checked by Amazon S3 and must match in order for the Amazon S3 resource to be rendered in the worker portal. Valid values are `Enabled` or `Disabled`
  /// [vpcSourceIp] When VpcSourceIp is Enabled the worker's IP address when a task is rendered in private worker portal inside the VPC is added to the IAM policy as a Condition used to generate the Amazon S3 presigned URL. To render the task successfully Amazon S3 checks that the presigned URL is being accessed over an Amazon S3 VPC Endpoint, and that the worker's IP address matches the IP address in the IAM policy. To learn more about configuring private worker portal, see [Use Amazon VPC mode from a private worker portal](https://docs.aws.amazon.com/sagemaker/latest/dg/samurai-vpc-worker-portal.html). Valid values are `Enabled` or `Disabled`
  WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints({
    this.sourceIp,
    this.vpcSourceIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceIpValue = sourceIp;
    if (sourceIpValue != null) {
      map['sourceIp'] = sourceIpValue;
    }
    final vpcSourceIpValue = vpcSourceIp;
    if (vpcSourceIpValue != null) {
      map['vpcSourceIp'] = vpcSourceIpValue;
    }
    return map;
  }

  factory WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints.fromMap(
      Map<String, dynamic> map) {
    return WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints(
      sourceIp: map['sourceIp'] == null ? null : map['sourceIp'] as String,
      vpcSourceIp:
          map['vpcSourceIp'] == null ? null : map['vpcSourceIp'] as String,
    );
  }
}
