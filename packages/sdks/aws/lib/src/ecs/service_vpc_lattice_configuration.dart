// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceVpcLatticeConfiguration {
  /// The name of the port for a target group associated with the VPC Lattice configuration.
  final pulumi.Input<String> portName;
  /// The ARN of the IAM role to associate with this volume. This is the Amazon ECS infrastructure IAM role that is used to manage your AWS infrastructure.
  final pulumi.Input<String> roleArn;
  /// The full ARN of the target group or groups associated with the VPC Lattice configuration.
  final pulumi.Input<String> targetGroupArn;

  /// Creates a new [ServiceVpcLatticeConfiguration].
  /// [portName] The name of the port for a target group associated with the VPC Lattice configuration.
  /// [roleArn] The ARN of the IAM role to associate with this volume. This is the Amazon ECS infrastructure IAM role that is used to manage your AWS infrastructure.
  /// [targetGroupArn] The full ARN of the target group or groups associated with the VPC Lattice configuration.
  const ServiceVpcLatticeConfiguration({
    required this.portName,
    required this.roleArn,
    required this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portName': portName,
      'roleArn': roleArn,
      'targetGroupArn': targetGroupArn,
    };
  }

  factory ServiceVpcLatticeConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceVpcLatticeConfiguration(
      portName: pulumi.Input.fromValue(map['portName'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      targetGroupArn: pulumi.Input.fromValue(map['targetGroupArn'] as String),
    );
  }
}

