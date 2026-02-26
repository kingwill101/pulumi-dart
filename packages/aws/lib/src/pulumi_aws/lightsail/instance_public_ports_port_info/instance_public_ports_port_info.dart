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

  /// IP protocol name. Valid values: <span pulumi-lang-nodejs="`tcp`" pulumi-lang-dotnet="`Tcp`" pulumi-lang-go="`tcp`" pulumi-lang-python="`tcp`" pulumi-lang-yaml="`tcp`" pulumi-lang-java="`tcp`">`tcp`</span>, <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, <span pulumi-lang-nodejs="`udp`" pulumi-lang-dotnet="`Udp`" pulumi-lang-go="`udp`" pulumi-lang-python="`udp`" pulumi-lang-yaml="`udp`" pulumi-lang-java="`udp`">`udp`</span>, <span pulumi-lang-nodejs="`icmp`" pulumi-lang-dotnet="`Icmp`" pulumi-lang-go="`icmp`" pulumi-lang-python="`icmp`" pulumi-lang-yaml="`icmp`" pulumi-lang-java="`icmp`">`icmp`</span>, <span pulumi-lang-nodejs="`icmpv6`" pulumi-lang-dotnet="`Icmpv6`" pulumi-lang-go="`icmpv6`" pulumi-lang-python="`icmpv6`" pulumi-lang-yaml="`icmpv6`" pulumi-lang-java="`icmpv6`">`icmpv6`</span>. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final String protocol;

  /// Last port in a range of open ports on an instance. See [PortInfo](https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_PortInfo.html) for details.
  final int toPort;

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
