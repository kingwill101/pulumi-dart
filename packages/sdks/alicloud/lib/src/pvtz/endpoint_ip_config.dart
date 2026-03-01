// ignore_for_file: unused_element, unnecessary_cast


class EndpointIpConfig {
  /// The Subnet mask.
  final String cidrBlock;
  /// The IP address within the parameter range of the subnet mask.  It is recommended to use the IP address assigned by the system.
  final String? ip;
  /// The Vswitch id.
  final String vswitchId;
  /// The Zone ID.
  final String zoneId;

  /// Creates a new [EndpointIpConfig].
  /// [cidrBlock] The Subnet mask.
  /// [ip] The IP address within the parameter range of the subnet mask.  It is recommended to use the IP address assigned by the system.
  /// [vswitchId] The Vswitch id.
  /// [zoneId] The Zone ID.
  EndpointIpConfig({
    required this.cidrBlock,
    this.ip,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'ip': ?ip,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory EndpointIpConfig.fromMap(Map<String, dynamic> map) {
    return EndpointIpConfig(
      cidrBlock: map['cidrBlock'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

