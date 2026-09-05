// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamOpensearchConfigurationVpcConfig {
  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon EC2 configuration API and for creating network interfaces. Make sure role has necessary [IAM permissions](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-es-vpc)
  final pulumi.Input<String> roleArn;
  /// A list of security group IDs to associate with Kinesis Firehose.
  final pulumi.Input<List<String>> securityGroupIds;
  /// A list of subnet IDs to associate with Kinesis Firehose.
  final pulumi.Input<List<String>> subnetIds;
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationVpcConfig].
  /// [roleArn] The ARN of the IAM role to be assumed by Firehose for calling the Amazon EC2 configuration API and for creating network interfaces. Make sure role has necessary [IAM permissions](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-es-vpc)
  /// [securityGroupIds] A list of security group IDs to associate with Kinesis Firehose.
  /// [subnetIds] A list of subnet IDs to associate with Kinesis Firehose.
  /// [vpcId] Optional.
  const FirehoseDeliveryStreamOpensearchConfigurationVpcConfig({
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

  factory FirehoseDeliveryStreamOpensearchConfigurationVpcConfig.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationVpcConfig(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
