// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityGroupRule resources.
class SecurityGroupRuleState {
  /// List of CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  final pulumi.Input<List<String>>? cidrBlocks;
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  final pulumi.Input<int>? fromPort;
  /// List of IPv6 CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  final pulumi.Input<List<String>>? ipv6CidrBlocks;
  /// List of Prefix List IDs.
  final pulumi.Input<List<String>>? prefixListIds;
  /// Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `source_security_group_id` are all marked as optional, you _must_ provide one of them in order to configure the source of the traffic.
  final pulumi.Input<String>? region;
  /// Security group to apply this rule to.
  final pulumi.Input<String>? securityGroupId;
  /// If the `aws.ec2.SecurityGroupRule` resource has a single source or destination then this is the AWS Security Group Rule resource ID. Otherwise it is empty.
  final pulumi.Input<String>? securityGroupRuleId;
  /// Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `source_security_group_id`.
  final pulumi.Input<bool>? self;
  /// Security group id to allow access to/from, depending on the `type`. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `self`.
  final pulumi.Input<String>? sourceSecurityGroupId;
  /// End port (or ICMP code if protocol is "icmp").
  final pulumi.Input<int>? toPort;
  /// Type of rule being created. Valid options are `ingress` (inbound)
  /// or `egress` (outbound).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityGroupRuleState].
  /// [cidrBlocks] List of CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  /// [description] Description of the rule.
  /// [fromPort] Start port (or ICMP type number if protocol is "icmp" or "icmpv6").
  /// [ipv6CidrBlocks] List of IPv6 CIDR blocks. Cannot be specified with `source_security_group_id` or `self`.
  /// [prefixListIds] List of Prefix List IDs.
  /// [protocol] Protocol. If not icmp, icmpv6, tcp, udp, or all use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] Security group to apply this rule to.
  /// [securityGroupRuleId] If the `aws.ec2.SecurityGroupRule` resource has a single source or destination then this is the AWS Security Group Rule resource ID. Otherwise it is empty.
  /// [self] Whether the security group itself will be added as a source to this ingress rule. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `source_security_group_id`.
  /// [sourceSecurityGroupId] Security group id to allow access to/from, depending on the `type`. Cannot be specified with `cidr_blocks`, `ipv6_cidr_blocks`, or `self`.
  /// [toPort] End port (or ICMP code if protocol is "icmp").
  /// [type] Type of rule being created. Valid options are `ingress` (inbound)
  SecurityGroupRuleState({
    this.cidrBlocks,
    this.description,
    this.fromPort,
    this.ipv6CidrBlocks,
    this.prefixListIds,
    this.protocol,
    this.region,
    this.securityGroupId,
    this.securityGroupRuleId,
    this.self,
    this.sourceSecurityGroupId,
    this.toPort,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks,
      'description': ?description,
      'fromPort': ?fromPort,
      'ipv6CidrBlocks': ?ipv6CidrBlocks,
      'prefixListIds': ?prefixListIds,
      'protocol': ?protocol,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'securityGroupRuleId': ?securityGroupRuleId,
      'self': ?self,
      'sourceSecurityGroupId': ?sourceSecurityGroupId,
      'toPort': ?toPort,
      'type': ?type,
    };
  }

  factory SecurityGroupRuleState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupRuleState(
      cidrBlocks: map['cidrBlocks'] == null ? null : ((map['cidrBlocks'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fromPort: map['fromPort'] == null ? null : (map['fromPort'] as int).input(),
      ipv6CidrBlocks: map['ipv6CidrBlocks'] == null ? null : ((map['ipv6CidrBlocks'] as List).cast<String>()).input(),
      prefixListIds: map['prefixListIds'] == null ? null : ((map['prefixListIds'] as List).cast<String>()).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      securityGroupRuleId: map['securityGroupRuleId'] == null ? null : (map['securityGroupRuleId'] as String).input(),
      self: map['self'] == null ? null : (map['self'] as bool).input(),
      sourceSecurityGroupId: map['sourceSecurityGroupId'] == null ? null : (map['sourceSecurityGroupId'] as String).input(),
      toPort: map['toPort'] == null ? null : (map['toPort'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

