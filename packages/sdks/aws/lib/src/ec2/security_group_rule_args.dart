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
  /// &gt; **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `source_security_group_id` are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
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
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks,
      'description': ?description,
      'fromPort': fromPort,
      'ipv6CidrBlocks': ?ipv6CidrBlocks,
      'prefixListIds': ?prefixListIds,
      'protocol': protocol,
      'region': ?region,
      'securityGroupId': securityGroupId,
      'self': ?self,
      'sourceSecurityGroupId': ?sourceSecurityGroupId,
      'toPort': toPort,
      'type': type,
    };
  }

  factory SecurityGroupRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupRuleArgs(
      cidrBlocks: (() {
        final guardedValue = map['cidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      ipv6CidrBlocks: (() {
        final guardedValue = map['ipv6CidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      prefixListIds: (() {
        final guardedValue = map['prefixListIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      self: (() {
        final guardedValue = map['self'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceSecurityGroupId: (() {
        final guardedValue = map['sourceSecurityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
