// ignore_for_file: unused_element, unnecessary_cast


class InstanceZoneVswitchSecurityGroup {
  /// The CIDR block of the VSwitch.
  final String cidrBlock;
  /// The ID of the security group.
  final String securityGroup;
  /// The VSwitch ID.
  final String vswitchId;
  /// The zone ID.
  final String zoneId;

  /// Creates a new [InstanceZoneVswitchSecurityGroup].
  /// [cidrBlock] The CIDR block of the VSwitch.
  /// [securityGroup] The ID of the security group.
  /// [vswitchId] The VSwitch ID.
  /// [zoneId] The zone ID.
  InstanceZoneVswitchSecurityGroup({
    required this.cidrBlock,
    required this.securityGroup,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'securityGroup': securityGroup,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory InstanceZoneVswitchSecurityGroup.fromMap(Map<String, dynamic> map) {
    return InstanceZoneVswitchSecurityGroup(
      cidrBlock: map['cidrBlock'] as String,
      securityGroup: map['securityGroup'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

