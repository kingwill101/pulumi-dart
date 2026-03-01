// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AwsVpcConfiguration
class AwsVpcConfigurationResponse {
  /// Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
  final String? assignPublicIp;
  /// The IDs of the security groups associated with the task or service. If you don't specify a security group, the default security group for the VPC is used. There's a limit of 5 security groups that can be specified per ``AwsVpcConfiguration``.  All specified security groups must be from the same VPC.
  final List<String>? securityGroups;
  /// The IDs of the subnets associated with the task or service. There's a limit of 16 subnets that can be specified per ``AwsVpcConfiguration``.  All specified subnets must be from the same VPC.
  final List<String>? subnets;

  /// Creates a new [AwsVpcConfigurationResponse].
  /// [assignPublicIp] Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
  /// [securityGroups] The IDs of the security groups associated with the task or service. If you don't specify a security group, the default security group for the VPC is used. There's a limit of 5 security groups that can be specified per ``AwsVpcConfiguration``.  All specified security groups must be from the same VPC.
  /// [subnets] The IDs of the subnets associated with the task or service. There's a limit of 16 subnets that can be specified per ``AwsVpcConfiguration``.  All specified subnets must be from the same VPC.
  AwsVpcConfigurationResponse({
    this.assignPublicIp,
    this.securityGroups,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': ?assignPublicIp,
      'securityGroups': ?securityGroups,
      'subnets': ?subnets,
    };
  }

  factory AwsVpcConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AwsVpcConfigurationResponse(
      assignPublicIp: map['assignPublicIp'] == null ? null : map['assignPublicIp'] as String,
      securityGroups: map['securityGroups'] == null ? null : (map['securityGroups'] as List).cast<String>(),
      subnets: map['subnets'] == null ? null : (map['subnets'] as List).cast<String>(),
    );
  }
}

