// ignore_for_file: unused_element, unnecessary_cast


class GetEcsLaunchTemplatesTemplateNetworkInterface {
  /// System disk description.
  final String description;
  /// System disk name.
  final String name;
  /// The primary private IP address of the ENI.
  final String primaryIp;
  /// The security group ID must be one in the same VPC.
  final String securityGroupId;
  /// The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  final String vswitchId;

  /// Creates a new [GetEcsLaunchTemplatesTemplateNetworkInterface].
  /// [description] System disk description.
  /// [name] System disk name.
  /// [primaryIp] The primary private IP address of the ENI.
  /// [securityGroupId] The security group ID must be one in the same VPC.
  /// [vswitchId] The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  GetEcsLaunchTemplatesTemplateNetworkInterface({
    required this.description,
    required this.name,
    required this.primaryIp,
    required this.securityGroupId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'primaryIp': primaryIp,
      'securityGroupId': securityGroupId,
      'vswitchId': vswitchId,
    };
  }

  factory GetEcsLaunchTemplatesTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesTemplateNetworkInterface(
      description: map['description'] as String,
      name: map['name'] as String,
      primaryIp: map['primaryIp'] as String,
      securityGroupId: map['securityGroupId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

