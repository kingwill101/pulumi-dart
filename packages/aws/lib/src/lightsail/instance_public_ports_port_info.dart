// ignore_for_file: unused_element, unnecessary_cast

class InstancePublicPortsPortInfo {
  /// Set of CIDR aliases that define access for a preconfigured range of IP addresses.
  final List<String>? cidrListAliases;

  /// Set of IPv4 addresses or ranges of IPv4 addresses (in CIDR notation) that are allowed to connect to an instance through the ports, and the protocol.
  final List<String>? cidrs;

  /// First port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final int fromPort;

  /// Set of IPv6 addresses or ranges of IPv6 addresses (in CIDR notation) that are allowed to connect to an instance through the ports, and the protocol.
  final List<String>? ipv6Cidrs;

  /// IP protocol name. Valid values: `tcp`, `all`, `udp`, `icmp`, `icmpv6`. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final String protocol;

  /// Last port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final int toPort;

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
    final map = <String, dynamic>{};
    final cidrListAliasesValue = cidrListAliases;
    if (cidrListAliasesValue != null) {
      map['cidrListAliases'] = cidrListAliasesValue;
    }
    final cidrsValue = cidrs;
    if (cidrsValue != null) {
      map['cidrs'] = cidrsValue;
    }
    map['fromPort'] = fromPort;
    final ipv6CidrsValue = ipv6Cidrs;
    if (ipv6CidrsValue != null) {
      map['ipv6Cidrs'] = ipv6CidrsValue;
    }
    map['protocol'] = protocol;
    map['toPort'] = toPort;
    return map;
  }

  factory InstancePublicPortsPortInfo.fromMap(Map<String, dynamic> map) {
    return InstancePublicPortsPortInfo(
      cidrListAliases: map['cidrListAliases'] == null
          ? null
          : (map['cidrListAliases'] as List).cast<String>(),
      cidrs:
          map['cidrs'] == null ? null : (map['cidrs'] as List).cast<String>(),
      fromPort: map['fromPort'] as int,
      ipv6Cidrs: map['ipv6Cidrs'] == null
          ? null
          : (map['ipv6Cidrs'] as List).cast<String>(),
      protocol: map['protocol'] as String,
      toPort: map['toPort'] as int,
    );
  }
}
