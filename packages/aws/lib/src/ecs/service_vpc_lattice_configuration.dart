// ignore_for_file: unused_element, unnecessary_cast

class ServiceVpcLatticeConfiguration {
  /// The name of the port for a target group associated with the VPC Lattice configuration.
  final String portName;

  /// The ARN of the IAM role to associate with this volume. This is the Amazon ECS infrastructure IAM role that is used to manage your AWS infrastructure.
  final String roleArn;

  /// The full ARN of the target group or groups associated with the VPC Lattice configuration.
  final String targetGroupArn;

  /// Creates a new [ServiceVpcLatticeConfiguration].
  /// [portName] The name of the port for a target group associated with the VPC Lattice configuration.
  /// [roleArn] The ARN of the IAM role to associate with this volume. This is the Amazon ECS infrastructure IAM role that is used to manage your AWS infrastructure.
  /// [targetGroupArn] The full ARN of the target group or groups associated with the VPC Lattice configuration.
  ServiceVpcLatticeConfiguration({
    required this.portName,
    required this.roleArn,
    required this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['portName'] = portName;
    map['roleArn'] = roleArn;
    map['targetGroupArn'] = targetGroupArn;
    return map;
  }

  factory ServiceVpcLatticeConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceVpcLatticeConfiguration(
      portName: map['portName'] as String,
      roleArn: map['roleArn'] as String,
      targetGroupArn: map['targetGroupArn'] as String,
    );
  }
}
