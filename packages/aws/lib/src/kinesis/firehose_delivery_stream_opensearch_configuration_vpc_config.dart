// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamOpensearchConfigurationVpcConfig {
  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon EC2 configuration API and for creating network interfaces. Make sure role has necessary [IAM permissions](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-es-vpc)
  final String roleArn;

  /// A list of security group IDs to associate with Kinesis Firehose.
  final List<String> securityGroupIds;

  /// A list of subnet IDs to associate with Kinesis Firehose.
  final List<String> subnetIds;
  final String? vpcId;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationVpcConfig].
  /// [roleArn] The ARN of the IAM role to be assumed by Firehose for calling the Amazon EC2 configuration API and for creating network interfaces. Make sure role has necessary [IAM permissions](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-es-vpc)
  /// [securityGroupIds] A list of security group IDs to associate with Kinesis Firehose.
  /// [subnetIds] A list of subnet IDs to associate with Kinesis Firehose.
  /// [vpcId] Optional.
  FirehoseDeliveryStreamOpensearchConfigurationVpcConfig({
    required this.roleArn,
    required this.securityGroupIds,
    required this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationVpcConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamOpensearchConfigurationVpcConfig(
      roleArn: map['roleArn'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
