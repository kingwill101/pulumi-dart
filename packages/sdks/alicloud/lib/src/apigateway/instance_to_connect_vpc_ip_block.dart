// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceToConnectVpcIpBlock {
  /// The CIDR block of the VSwitch.
  final pulumi.Input<String> cidrBlock;
  /// Specifies whether the IP block is customized.
  final pulumi.Input<bool>? customized;
  /// The VSwitch ID.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceToConnectVpcIpBlock].
  /// [cidrBlock] The CIDR block of the VSwitch.
  /// [customized] Specifies whether the IP block is customized.
  /// [vswitchId] The VSwitch ID.
  /// [zoneId] The zone ID.
  InstanceToConnectVpcIpBlock({
    required this.cidrBlock,
    this.customized,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'customized': ?customized,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceToConnectVpcIpBlock.fromMap(Map<String, dynamic> map) {
    return InstanceToConnectVpcIpBlock(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      customized: (() { final guardedValue = map['customized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

