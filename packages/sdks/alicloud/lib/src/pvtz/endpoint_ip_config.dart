// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointIpConfig {
  /// The Subnet mask.
  final pulumi.Input<String> cidrBlock;
  /// The IP address within the parameter range of the subnet mask.  It is recommended to use the IP address assigned by the system.
  final pulumi.Input<String>? ip;
  /// The Vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The Zone ID.
  final pulumi.Input<String> zoneId;

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
      cidrBlock: (map['cidrBlock'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

