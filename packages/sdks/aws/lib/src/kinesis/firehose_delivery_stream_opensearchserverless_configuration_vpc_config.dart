// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig {
  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon EC2 configuration API and for creating network interfaces. Make sure role has necessary [IAM permissions](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-es-vpc)
  final pulumi.Input<String> roleArn;
  /// A list of security group IDs to associate with Kinesis Firehose.
  final pulumi.Input<List<String>> securityGroupIds;
  /// A list of subnet IDs to associate with Kinesis Firehose.
  final pulumi.Input<List<String>> subnetIds;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig].
  /// [roleArn] The ARN of the IAM role to be assumed by Firehose for calling the Amazon EC2 configuration API and for creating network interfaces. Make sure role has necessary [IAM permissions](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-es-vpc)
  /// [securityGroupIds] A list of security group IDs to associate with Kinesis Firehose.
  /// [subnetIds] A list of subnet IDs to associate with Kinesis Firehose.
  /// [vpcId] Optional.
  FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig({
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

  factory FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig(
      roleArn: (map['roleArn'] as String).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

