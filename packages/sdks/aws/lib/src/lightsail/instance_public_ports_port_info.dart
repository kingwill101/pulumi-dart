// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePublicPortsPortInfo {
  /// Set of CIDR aliases that define access for a preconfigured range of IP addresses.
  final pulumi.Input<List<String>>? cidrListAliases;
  /// Set of IPv4 addresses or ranges of IPv4 addresses (in CIDR notation) that are allowed to connect to an instance through the ports, and the protocol.
  final pulumi.Input<List<String>>? cidrs;
  /// First port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final pulumi.Input<int> fromPort;
  /// Set of IPv6 addresses or ranges of IPv6 addresses (in CIDR notation) that are allowed to connect to an instance through the ports, and the protocol.
  final pulumi.Input<List<String>>? ipv6Cidrs;
  /// IP protocol name. Valid values: `tcp`, `all`, `udp`, `icmp`, `icmpv6`. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final pulumi.Input<String> protocol;
  /// Last port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final pulumi.Input<int> toPort;

  /// Creates a new [InstancePublicPortsPortInfo].
  /// [cidrListAliases] Set of CIDR aliases that define access for a preconfigured range of IP addresses.
  /// [cidrs] Set of IPv4 addresses or ranges of IPv4 addresses (in CIDR notation) that are allowed to connect to an instance through the ports, and the protocol.
  /// [fromPort] First port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  /// [ipv6Cidrs] Set of IPv6 addresses or ranges of IPv6 addresses (in CIDR notation) that are allowed to connect to an instance through the ports, and the protocol.
  /// [protocol] IP protocol name. Valid values: `tcp`, `all`, `udp`, `icmp`, `icmpv6`. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  /// [toPort] Last port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  InstancePublicPortsPortInfo({
    this.cidrListAliases,
    this.cidrs,
    required this.fromPort,
    this.ipv6Cidrs,
    required this.protocol,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrListAliases': ?cidrListAliases,
      'cidrs': ?cidrs,
      'fromPort': fromPort,
      'ipv6Cidrs': ?ipv6Cidrs,
      'protocol': protocol,
      'toPort': toPort,
    };
  }

  factory InstancePublicPortsPortInfo.fromMap(Map<String, dynamic> map) {
    return InstancePublicPortsPortInfo(
      cidrListAliases: (() { final guardedValue = map['cidrListAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cidrs: (() { final guardedValue = map['cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      ipv6Cidrs: (() { final guardedValue = map['ipv6Cidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
    );
  }
}

