// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecurityGroupRule.
class SecurityGroupRuleArgs {
  /// List of CIDR blocks. Cannot be specified with <span pulumi-lang-nodejs="`sourceSecurityGroupId`" pulumi-lang-dotnet="`SourceSecurityGroupId`" pulumi-lang-go="`sourceSecurityGroupId`" pulumi-lang-python="`source_security_group_id`" pulumi-lang-yaml="`sourceSecurityGroupId`" pulumi-lang-java="`sourceSecurityGroupId`">`source_security_group_id`</span> or <span pulumi-lang-nodejs="`self`" pulumi-lang-dotnet="`Self`" pulumi-lang-go="`self`" pulumi-lang-python="`self`" pulumi-lang-yaml="`self`" pulumi-lang-java="`self`">`self`</span>.
  final Input<List<String>>? cidrBlocks;

  /// Description of the rule.
  final Input<String>? description;

  /// Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  final Input<int> fromPort;

  /// List of IPv6 CIDR blocks. Cannot be specified with <span pulumi-lang-nodejs="`sourceSecurityGroupId`" pulumi-lang-dotnet="`SourceSecurityGroupId`" pulumi-lang-go="`sourceSecurityGroupId`" pulumi-lang-python="`source_security_group_id`" pulumi-lang-yaml="`sourceSecurityGroupId`" pulumi-lang-java="`sourceSecurityGroupId`">`source_security_group_id`</span> or <span pulumi-lang-nodejs="`self`" pulumi-lang-dotnet="`Self`" pulumi-lang-go="`self`" pulumi-lang-python="`self`" pulumi-lang-yaml="`self`" pulumi-lang-java="`self`">`self`</span>.
  final Input<List<String>>? ipv6CidrBlocks;

  /// List of Prefix List IDs.
  final Input<List<String>>? prefixListIds;

  /// Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  final Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > **Note** Although <span pulumi-lang-nodejs="`cidrBlocks`" pulumi-lang-dotnet="`CidrBlocks`" pulumi-lang-go="`cidrBlocks`" pulumi-lang-python="`cidr_blocks`" pulumi-lang-yaml="`cidrBlocks`" pulumi-lang-java="`cidrBlocks`">`cidr_blocks`</span>, <span pulumi-lang-nodejs="`ipv6CidrBlocks`" pulumi-lang-dotnet="`Ipv6CidrBlocks`" pulumi-lang-go="`ipv6CidrBlocks`" pulumi-lang-python="`ipv6_cidr_blocks`" pulumi-lang-yaml="`ipv6CidrBlocks`" pulumi-lang-java="`ipv6CidrBlocks`">`ipv6_cidr_blocks`</span>, <span pulumi-lang-nodejs="`prefixListIds`" pulumi-lang-dotnet="`PrefixListIds`" pulumi-lang-go="`prefixListIds`" pulumi-lang-python="`prefix_list_ids`" pulumi-lang-yaml="`prefixListIds`" pulumi-lang-java="`prefixListIds`">`prefix_list_ids`</span>, and <span pulumi-lang-nodejs="`sourceSecurityGroupId`" pulumi-lang-dotnet="`SourceSecurityGroupId`" pulumi-lang-go="`sourceSecurityGroupId`" pulumi-lang-python="`source_security_group_id`" pulumi-lang-yaml="`sourceSecurityGroupId`" pulumi-lang-java="`sourceSecurityGroupId`">`source_security_group_id`</span> are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
  final Input<String>? region;

  /// Security group to apply this rule to.
  final Input<String> securityGroupId;

  /// Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with <span pulumi-lang-nodejs="`cidrBlocks`" pulumi-lang-dotnet="`CidrBlocks`" pulumi-lang-go="`cidrBlocks`" pulumi-lang-python="`cidr_blocks`" pulumi-lang-yaml="`cidrBlocks`" pulumi-lang-java="`cidrBlocks`">`cidr_blocks`</span>, <span pulumi-lang-nodejs="`ipv6CidrBlocks`" pulumi-lang-dotnet="`Ipv6CidrBlocks`" pulumi-lang-go="`ipv6CidrBlocks`" pulumi-lang-python="`ipv6_cidr_blocks`" pulumi-lang-yaml="`ipv6CidrBlocks`" pulumi-lang-java="`ipv6CidrBlocks`">`ipv6_cidr_blocks`</span>, or <span pulumi-lang-nodejs="`sourceSecurityGroupId`" pulumi-lang-dotnet="`SourceSecurityGroupId`" pulumi-lang-go="`sourceSecurityGroupId`" pulumi-lang-python="`source_security_group_id`" pulumi-lang-yaml="`sourceSecurityGroupId`" pulumi-lang-java="`sourceSecurityGroupId`">`source_security_group_id`</span>.
  final Input<bool>? self;

  /// Security group id to allow access to/from, depending on the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>. Cannot be specified with <span pulumi-lang-nodejs="`cidrBlocks`" pulumi-lang-dotnet="`CidrBlocks`" pulumi-lang-go="`cidrBlocks`" pulumi-lang-python="`cidr_blocks`" pulumi-lang-yaml="`cidrBlocks`" pulumi-lang-java="`cidrBlocks`">`cidr_blocks`</span>, <span pulumi-lang-nodejs="`ipv6CidrBlocks`" pulumi-lang-dotnet="`Ipv6CidrBlocks`" pulumi-lang-go="`ipv6CidrBlocks`" pulumi-lang-python="`ipv6_cidr_blocks`" pulumi-lang-yaml="`ipv6CidrBlocks`" pulumi-lang-java="`ipv6CidrBlocks`">`ipv6_cidr_blocks`</span>, or <span pulumi-lang-nodejs="`self`" pulumi-lang-dotnet="`Self`" pulumi-lang-go="`self`" pulumi-lang-python="`self`" pulumi-lang-yaml="`self`" pulumi-lang-java="`self`">`self`</span>.
  final Input<String>? sourceSecurityGroupId;

  /// End port (or ICMP code if protocol is "icmp").
  final Input<int> toPort;

  /// Type of rule being created. Valid options are <span pulumi-lang-nodejs="`ingress`" pulumi-lang-dotnet="`Ingress`" pulumi-lang-go="`ingress`" pulumi-lang-python="`ingress`" pulumi-lang-yaml="`ingress`" pulumi-lang-java="`ingress`">`ingress`</span> (inbound)
  /// or <span pulumi-lang-nodejs="`egress`" pulumi-lang-dotnet="`Egress`" pulumi-lang-go="`egress`" pulumi-lang-python="`egress`" pulumi-lang-yaml="`egress`" pulumi-lang-java="`egress`">`egress`</span> (outbound).
  ///
  /// The following arguments are optional:
  final Input<String> type;

  SecurityGroupRuleArgs({
    this.cidrBlocks,
    this.description,
    required this.fromPort,
    this.ipv6CidrBlocks,
    this.prefixListIds,
    required this.protocol,
    this.region,
    required this.securityGroupId,
    this.self,
    this.sourceSecurityGroupId,
    required this.toPort,
    required this.type,
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupId'] = securityGroupId;
    final selfValue = self;
    if (selfValue != null) {
      map['self'] = selfValue;
    }
    final sourceSecurityGroupIdValue = sourceSecurityGroupId;
    if (sourceSecurityGroupIdValue != null) {
      map['sourceSecurityGroupId'] = sourceSecurityGroupIdValue;
    }
    map['toPort'] = toPort;
    map['type'] = type;
    return map;
  }

  factory SecurityGroupRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupRuleArgs(
      cidrBlocks: Input.asOptionalInput<List<String>>(map['cidrBlocks']),
      description: Input.asOptionalInput<String>(map['description']),
      fromPort: Input.asInput<int>(map['fromPort']),
      ipv6CidrBlocks:
          Input.asOptionalInput<List<String>>(map['ipv6CidrBlocks']),
      prefixListIds: Input.asOptionalInput<List<String>>(map['prefixListIds']),
      protocol: Input.asInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupId: Input.asInput<String>(map['securityGroupId']),
      self: Input.asOptionalInput<bool>(map['self']),
      sourceSecurityGroupId:
          Input.asOptionalInput<String>(map['sourceSecurityGroupId']),
      toPort: Input.asInput<int>(map['toPort']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
