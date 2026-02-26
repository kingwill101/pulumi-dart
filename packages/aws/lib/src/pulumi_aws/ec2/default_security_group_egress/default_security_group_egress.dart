// ignore_for_file: unused_element, unnecessary_cast

class DefaultSecurityGroupEgress {
  /// List of CIDR blocks.
  final List<String>? cidrBlocks;

  /// Description of this rule.
  final String? description;

  /// Start port (or ICMP type number if protocol is <span pulumi-lang-nodejs="`icmp`" pulumi-lang-dotnet="`Icmp`" pulumi-lang-go="`icmp`" pulumi-lang-python="`icmp`" pulumi-lang-yaml="`icmp`" pulumi-lang-java="`icmp`">`icmp`</span>)
  final int fromPort;

  /// List of IPv6 CIDR blocks.
  final List<String>? ipv6CidrBlocks;

  /// List of prefix list IDs (for allowing access to VPC endpoints)
  final List<String>? prefixListIds;

  /// Protocol. If you select a protocol of "-1" (semantically equivalent to <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, which is not a valid value here), you must specify a <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> equal to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. If not <span pulumi-lang-nodejs="`icmp`" pulumi-lang-dotnet="`Icmp`" pulumi-lang-go="`icmp`" pulumi-lang-python="`icmp`" pulumi-lang-yaml="`icmp`" pulumi-lang-java="`icmp`">`icmp`</span>, <span pulumi-lang-nodejs="`tcp`" pulumi-lang-dotnet="`Tcp`" pulumi-lang-go="`tcp`" pulumi-lang-python="`tcp`" pulumi-lang-yaml="`tcp`" pulumi-lang-java="`tcp`">`tcp`</span>, <span pulumi-lang-nodejs="`udp`" pulumi-lang-dotnet="`Udp`" pulumi-lang-go="`udp`" pulumi-lang-python="`udp`" pulumi-lang-yaml="`udp`" pulumi-lang-java="`udp`">`udp`</span>, or `-1` use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).
  final String protocol;

  /// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  final List<String>? securityGroups;

  /// Whether the security group itself will be added as a source to this egress rule.
  final bool? self;

  /// End range port (or ICMP code if protocol is <span pulumi-lang-nodejs="`icmp`" pulumi-lang-dotnet="`Icmp`" pulumi-lang-go="`icmp`" pulumi-lang-python="`icmp`" pulumi-lang-yaml="`icmp`" pulumi-lang-java="`icmp`">`icmp`</span>).
  final int toPort;

  DefaultSecurityGroupEgress({
    this.cidrBlocks,
    this.description,
    required this.fromPort,
    this.ipv6CidrBlocks,
    this.prefixListIds,
    required this.protocol,
    this.securityGroups,
    this.self,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlocksValue = cidrBlocks;
    if (cidrBlocksValue != null) {
      map['cidrBlocks'] = cidrBlocksValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fromPort'] = fromPort;
    final ipv6CidrBlocksValue = ipv6CidrBlocks;
    if (ipv6CidrBlocksValue != null) {
      map['ipv6CidrBlocks'] = ipv6CidrBlocksValue;
    }
    final prefixListIdsValue = prefixListIds;
    if (prefixListIdsValue != null) {
      map['prefixListIds'] = prefixListIdsValue;
    }
    map['protocol'] = protocol;
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final selfValue = self;
    if (selfValue != null) {
      map['self'] = selfValue;
    }
    map['toPort'] = toPort;
    return map;
  }

  factory DefaultSecurityGroupEgress.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupEgress(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : (map['cidrBlocks'] as List).cast<String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      fromPort: map['fromPort'] as int,
      ipv6CidrBlocks: map['ipv6CidrBlocks'] == null
          ? null
          : (map['ipv6CidrBlocks'] as List).cast<String>(),
      prefixListIds: map['prefixListIds'] == null
          ? null
          : (map['prefixListIds'] as List).cast<String>(),
      protocol: map['protocol'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      self: map['self'] == null ? null : map['self'] as bool,
      toPort: map['toPort'] as int,
    );
  }
}
