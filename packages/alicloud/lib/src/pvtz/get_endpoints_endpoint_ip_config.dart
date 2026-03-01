// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointsEndpointIpConfig {
  /// The Subnet mask.
  final String cidrBlock;
  /// The IP address within the parameter range of the subnet mask. **NOTE:** It is recommended to use the IP address assigned by the system.
  final String ip;
  /// The Vswitch id.
  final String vswitchId;
  /// The Zone ID.
  final String zoneId;

  /// Creates a new [GetEndpointsEndpointIpConfig].
  /// [cidrBlock] The Subnet mask.
  /// [ip] The IP address within the parameter range of the subnet mask. **NOTE:** It is recommended to use the IP address assigned by the system.
  /// [vswitchId] The Vswitch id.
  /// [zoneId] The Zone ID.
  GetEndpointsEndpointIpConfig({
    required this.cidrBlock,
    required this.ip,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'ip': ip,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetEndpointsEndpointIpConfig.fromMap(Map<String, dynamic> map) {
    return GetEndpointsEndpointIpConfig(
      cidrBlock: map['cidrBlock'] as String,
      ip: map['ip'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

