// ignore_for_file: unused_element, unnecessary_cast


class InstanceToConnectVpcIpBlock {
  /// The CIDR block of the VSwitch.
  final String cidrBlock;
  /// Specifies whether the IP block is customized.
  final bool? customized;
  /// The VSwitch ID.
  final String? vswitchId;
  /// The zone ID.
  final String? zoneId;

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
      cidrBlock: map['cidrBlock'] as String,
      customized: map['customized'] == null ? null : map['customized'] as bool,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

