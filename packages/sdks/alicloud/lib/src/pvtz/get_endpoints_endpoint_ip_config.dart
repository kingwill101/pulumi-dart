// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointsEndpointIpConfig {
  /// The Subnet mask.
  final pulumi.Input<String> cidrBlock;
  /// The IP address within the parameter range of the subnet mask. **NOTE:** It is recommended to use the IP address assigned by the system.
  final pulumi.Input<String> ip;
  /// The Vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The Zone ID.
  final pulumi.Input<String> zoneId;

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
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

