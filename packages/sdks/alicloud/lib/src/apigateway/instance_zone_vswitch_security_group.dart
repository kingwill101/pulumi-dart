// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceZoneVswitchSecurityGroup {
  /// The CIDR block of the VSwitch.
  final pulumi.Input<String> cidrBlock;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroup;
  /// The VSwitch ID.
  final pulumi.Input<String> vswitchId;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [InstanceZoneVswitchSecurityGroup].
  /// [cidrBlock] The CIDR block of the VSwitch.
  /// [securityGroup] The ID of the security group.
  /// [vswitchId] The VSwitch ID.
  /// [zoneId] The zone ID.
  const InstanceZoneVswitchSecurityGroup({
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
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      securityGroup: pulumi.Input.fromValue(map['securityGroup'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

