// ignore_for_file: unused_element, unnecessary_cast


class EcsLaunchTemplateNetworkInterfaces {
  /// Specifies whether to release ENI N when the instance is released. Valid values: `true`, `false`.
  final bool? deleteOnRelease;
  /// The ENI description.
  final String? description;
  /// The ENI name.
  final String? name;
  /// The primary private IP address of the ENI.
  final String? primaryIp;
  /// The security group ID must be one in the same VPC.
  final String? securityGroupId;
  /// The VSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  final String? vswitchId;

  /// Creates a new [EcsLaunchTemplateNetworkInterfaces].
  /// [deleteOnRelease] Specifies whether to release ENI N when the instance is released. Valid values: `true`, `false`.
  /// [description] The ENI description.
  /// [name] The ENI name.
  /// [primaryIp] The primary private IP address of the ENI.
  /// [securityGroupId] The security group ID must be one in the same VPC.
  /// [vswitchId] The VSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  EcsLaunchTemplateNetworkInterfaces({
    this.deleteOnRelease,
    this.description,
    this.name,
    this.primaryIp,
    this.securityGroupId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnRelease': ?deleteOnRelease,
      'description': ?description,
      'name': ?name,
      'primaryIp': ?primaryIp,
      'securityGroupId': ?securityGroupId,
      'vswitchId': ?vswitchId,
    };
  }

  factory EcsLaunchTemplateNetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return EcsLaunchTemplateNetworkInterfaces(
      deleteOnRelease: map['deleteOnRelease'] == null ? null : map['deleteOnRelease'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primaryIp: map['primaryIp'] == null ? null : map['primaryIp'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

