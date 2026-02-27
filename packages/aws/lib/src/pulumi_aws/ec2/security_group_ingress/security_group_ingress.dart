// ignore_for_file: unused_element, unnecessary_cast

class SecurityGroupIngress {
  /// List of CIDR blocks.
  final List<String>? cidrBlocks;

  /// Description of this ingress rule.
  final String? description;

  /// Start port (or ICMP type number if protocol is `icmp` or `icmpv6`).
  final int fromPort;

  /// List of IPv6 CIDR blocks.
  final List<String>? ipv6CidrBlocks;

  /// List of Prefix List IDs.
  final List<String>? prefixListIds;

  /// Protocol. If you select a protocol of `-1` (semantically equivalent to `all`, which is not a valid value here), you must specify a `from_port` and `to_port` equal to 0. The supported values are defined in the `IpProtocol` argument on the [IpPermission](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IpPermission.html) API reference.
  ///
  /// The following arguments are optional:
  ///
  /// > **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `security_groups` are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
  final String protocol;

  /// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  final List<String>? securityGroups;

  /// Whether the security group itself will be added as a source to this ingress rule.
  final bool? self;

  /// End range port (or ICMP code if protocol is `icmp`).
  final int toPort;

  SecurityGroupIngress({
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

  factory SecurityGroupIngress.fromMap(Map<String, dynamic> map) {
    return SecurityGroupIngress(
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
