// ignore_for_file: unused_element, unnecessary_cast

class SecurityGroupEgress {
  /// List of CIDR blocks.
  final List<String>? cidrBlocks;

  /// Description of this egress rule.
  final String? description;

  /// Start port (or ICMP type number if protocol is <span pulumi-lang-nodejs="`icmp`" pulumi-lang-dotnet="`Icmp`" pulumi-lang-go="`icmp`" pulumi-lang-python="`icmp`" pulumi-lang-yaml="`icmp`" pulumi-lang-java="`icmp`">`icmp`</span>)
  final int fromPort;

  /// List of IPv6 CIDR blocks.
  final List<String>? ipv6CidrBlocks;

  /// List of Prefix List IDs.
  final List<String>? prefixListIds;

  /// Protocol. If you select a protocol of `-1` (semantically equivalent to <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, which is not a valid value here), you must specify a <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> equal to 0. The supported values are defined in the `IpProtocol` argument in the [IpPermission](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IpPermission.html) API reference.
  final String protocol;

  /// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  final List<String>? securityGroups;

  /// Whether the security group itself will be added as a source to this egress rule.
  final bool? self;

  /// End range port (or ICMP code if protocol is <span pulumi-lang-nodejs="`icmp`" pulumi-lang-dotnet="`Icmp`" pulumi-lang-go="`icmp`" pulumi-lang-python="`icmp`" pulumi-lang-yaml="`icmp`" pulumi-lang-java="`icmp`">`icmp`</span>).
  ///
  /// The following arguments are optional:
  ///
  /// > **Note** Although <span pulumi-lang-nodejs="`cidrBlocks`" pulumi-lang-dotnet="`CidrBlocks`" pulumi-lang-go="`cidrBlocks`" pulumi-lang-python="`cidr_blocks`" pulumi-lang-yaml="`cidrBlocks`" pulumi-lang-java="`cidrBlocks`">`cidr_blocks`</span>, <span pulumi-lang-nodejs="`ipv6CidrBlocks`" pulumi-lang-dotnet="`Ipv6CidrBlocks`" pulumi-lang-go="`ipv6CidrBlocks`" pulumi-lang-python="`ipv6_cidr_blocks`" pulumi-lang-yaml="`ipv6CidrBlocks`" pulumi-lang-java="`ipv6CidrBlocks`">`ipv6_cidr_blocks`</span>, <span pulumi-lang-nodejs="`prefixListIds`" pulumi-lang-dotnet="`PrefixListIds`" pulumi-lang-go="`prefixListIds`" pulumi-lang-python="`prefix_list_ids`" pulumi-lang-yaml="`prefixListIds`" pulumi-lang-java="`prefixListIds`">`prefix_list_ids`</span>, and <span pulumi-lang-nodejs="`securityGroups`" pulumi-lang-dotnet="`SecurityGroups`" pulumi-lang-go="`securityGroups`" pulumi-lang-python="`security_groups`" pulumi-lang-yaml="`securityGroups`" pulumi-lang-java="`securityGroups`">`security_groups`</span> are all marked as optional, you _must_ provide one of them in order to configure the destination of the traffic.
  final int toPort;

  SecurityGroupEgress({
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

  factory SecurityGroupEgress.fromMap(Map<String, dynamic> map) {
    return SecurityGroupEgress(
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
