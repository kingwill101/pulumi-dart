// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_security_group_rule_security_group_rule_args_doc}
/// The set of arguments for SecurityGroupRule.
/// {@endtemplate}
/// {@macro pulumi_ec2_security_group_rule_security_group_rule_args_doc}
class SecurityGroupRuleArgs {
  /// List of CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  final pulumi.Input<List<String>>? cidrBlocks;

  /// Description of the rule.
  final pulumi.Input<String>? description;

  /// Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  final pulumi.Input<int> fromPort;

  /// List of IPv6 CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  final pulumi.Input<List<String>>? ipv6CidrBlocks;

  /// List of Prefix List IDs.
  final pulumi.Input<List<String>>? prefixListIds;

  /// Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  final pulumi.Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `source_security_group_id` are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
  final pulumi.Input<String>? region;

  /// Security group to apply this rule to.
  final pulumi.Input<String> securityGroupId;

  /// Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `source_security_group_id`.
  final pulumi.Input<bool>? self;

  /// Security group id to allow access to/from, depending on the `type`. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `self`.
  final pulumi.Input<String>? sourceSecurityGroupId;

  /// End port (or ICMP code if protocol is "icmp").
  final pulumi.Input<int> toPort;

  /// Type of rule being created. Valid options are `ingress` (inbound)
  /// or `egress` (outbound).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [SecurityGroupRuleArgs].
  /// [cidrBlocks] List of CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  /// [description] Description of the rule.
  /// [fromPort] Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  /// [ipv6CidrBlocks] List of IPv6 CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  /// [prefixListIds] List of Prefix List IDs.
  /// [protocol] Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] Security group to apply this rule to.
  /// [self] Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `source_security_group_id`.
  /// [sourceSecurityGroupId] Security group id to allow access to/from, depending on the `type`. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `self`.
  /// [toPort] End port (or ICMP code if protocol is "icmp").
  /// [type] Type of rule being created. Valid options are `ingress` (inbound)
  SecurityGroupRuleArgs({
    List<String>? cidrBlocks,
    String? description,
    required int fromPort,
    List<String>? ipv6CidrBlocks,
    List<String>? prefixListIds,
    required String protocol,
    String? region,
    required String securityGroupId,
    bool? self,
    String? sourceSecurityGroupId,
    required int toPort,
    required String type,
  })  : cidrBlocks = pulumi.Input.asOptionalInput<List<String>>(cidrBlocks),
        description = pulumi.Input.asOptionalInput<String>(description),
        fromPort = pulumi.Input.asInput<int>(fromPort),
        ipv6CidrBlocks =
            pulumi.Input.asOptionalInput<List<String>>(ipv6CidrBlocks),
        prefixListIds =
            pulumi.Input.asOptionalInput<List<String>>(prefixListIds),
        protocol = pulumi.Input.asInput<String>(protocol),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
        self = pulumi.Input.asOptionalInput<bool>(self),
        sourceSecurityGroupId =
            pulumi.Input.asOptionalInput<String>(sourceSecurityGroupId),
        toPort = pulumi.Input.asInput<int>(toPort),
        type = pulumi.Input.asInput<String>(type);

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
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
      self: map['self'] == null ? null : map['self'] as bool,
      sourceSecurityGroupId: map['sourceSecurityGroupId'] == null
          ? null
          : map['sourceSecurityGroupId'] as String,
      toPort: map['toPort'] as int,
      type: map['type'] as String,
    );
  }
}
