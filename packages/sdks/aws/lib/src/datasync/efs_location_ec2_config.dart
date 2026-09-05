// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EfsLocationEc2Config {
  /// List of ARNs of the EC2 Security Groups that are associated with the EFS Mount Target.
  final pulumi.Input<List<String>> securityGroupArns;
  /// ARN of the EC2 Subnet that is associated with the EFS Mount Target.
  final pulumi.Input<String> subnetArn;

  /// Creates a new [EfsLocationEc2Config].
  /// [securityGroupArns] List of ARNs of the EC2 Security Groups that are associated with the EFS Mount Target.
  /// [subnetArn] ARN of the EC2 Subnet that is associated with the EFS Mount Target.
  const EfsLocationEc2Config({
    required this.securityGroupArns,
    required this.subnetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupArns': securityGroupArns,
      'subnetArn': subnetArn,
    };
  }

  factory EfsLocationEc2Config.fromMap(Map<String, dynamic> map) {
    return EfsLocationEc2Config(
      securityGroupArns: pulumi.Input.fromValue((map['securityGroupArns'] as List).cast<String>()),
      subnetArn: pulumi.Input.fromValue(map['subnetArn'] as String),
    );
  }
}
