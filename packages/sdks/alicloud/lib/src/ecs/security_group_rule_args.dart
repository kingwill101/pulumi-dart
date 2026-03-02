// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_security_group_rule_security_group_rule_args_doc}
/// The set of arguments for SecurityGroupRule.
/// {@endtemplate}
/// {@macro pulumi_ecs_security_group_rule_security_group_rule_args_doc}
class SecurityGroupRuleArgs {
  /// The target IP address range. The default value is 0.0.0.0/0 (which means no restriction will be applied). Other supported formats include 10.159.6.18/12. Only IPv4 is supported.
  final pulumi.Input<String>? cidrIp;
  /// The description of the security group rule. The description can be up to 1 to 512 characters in length. Defaults to null.
  ///
  /// > **NOTE:**  You must specify one of the following field: `cidr_ip`,`source_security_group_id`,`prefix_list_id`,`ipv6_cidr_ip`.
  final pulumi.Input<String>? description;
  /// The transport layer protocol of the Security Group Rule. Valid values: `tcp`, `udp`, `icmp`, `icmpv6`, `gre`, `all`. **NOTE:** From version 1.262.0, `ip_protocol` can be set to `icmpv6`.
  final pulumi.Input<String> ipProtocol;
  /// Source IPv6 CIDR address block that requires access. Supports IP address ranges in CIDR format and IPv6 format. **NOTE:** This parameter cannot be set at the same time as the `cidr_ip` parameter.
  final pulumi.Input<String>? ipv6CidrIp;
  /// Network type, can be either `internet` or `intranet`, the default value is `internet`.
  final pulumi.Input<String>? nicType;
  /// The action of the Security Group Rule that determines whether to allow inbound access. Default value: `accept`. Valid values: `accept`, `drop`.
  final pulumi.Input<String>? policy;
  /// The range of port numbers relevant to the IP protocol. Default to "-1/-1". When the protocol is tcp or udp, each side port number range from 1 to 65535 and '-1/-1' will be invalid.
  /// For example, `1/200` means that the range of the port numbers is 1-200. Other protocols' 'port_range' can only be "-1/-1", and other values will be invalid.
  final pulumi.Input<String>? portRange;
  /// The ID of the source/destination prefix list to which you want to control access. **NOTE:** If you specify `cidr_ip`,`source_security_group_id`,`ipv6_cidr_ip` parameter, this parameter is ignored.
  final pulumi.Input<String>? prefixListId;
  /// The priority of the Security Group Rule. Default value: `1`. Valid values: `1` to `100`.
  final pulumi.Input<int>? priority;
  /// The ID of the Security Group.
  final pulumi.Input<String> securityGroupId;
  /// The Alibaba Cloud user account Id of the target security group when security groups are authorized across accounts.  This parameter is invalid if `cidr_ip` has already been set.
  final pulumi.Input<String>? sourceGroupOwnerAccount;
  /// The target security group ID within the same region. If this field is specified, the `nic_type` can only select `intranet`.
  final pulumi.Input<String>? sourceSecurityGroupId;
  /// The type of the Security Group Rule. Valid values:
  final pulumi.Input<String> type;

  /// Creates a new [SecurityGroupRuleArgs].
  /// [cidrIp] The target IP address range. The default value is 0.0.0.0/0 (which means no restriction will be applied). Other supported formats include 10.159.6.18/12. Only IPv4 is supported.
  /// [description] The description of the security group rule. The description can be up to 1 to 512 characters in length. Defaults to null.
  /// [ipProtocol] The transport layer protocol of the Security Group Rule. Valid values: `tcp`, `udp`, `icmp`, `icmpv6`, `gre`, `all`. **NOTE:** From version 1.262.0, `ip_protocol` can be set to `icmpv6`.
  /// [ipv6CidrIp] Source IPv6 CIDR address block that requires access. Supports IP address ranges in CIDR format and IPv6 format. **NOTE:** This parameter cannot be set at the same time as the `cidr_ip` parameter.
  /// [nicType] Network type, can be either `internet` or `intranet`, the default value is `internet`.
  /// [policy] The action of the Security Group Rule that determines whether to allow inbound access. Default value: `accept`. Valid values: `accept`, `drop`.
  /// [portRange] The range of port numbers relevant to the IP protocol. Default to "-1/-1". When the protocol is tcp or udp, each side port number range from 1 to 65535 and '-1/-1' will be invalid.
  /// [prefixListId] The ID of the source/destination prefix list to which you want to control access. **NOTE:** If you specify `cidr_ip`,`source_security_group_id`,`ipv6_cidr_ip` parameter, this parameter is ignored.
  /// [priority] The priority of the Security Group Rule. Default value: `1`. Valid values: `1` to `100`.
  /// [securityGroupId] The ID of the Security Group.
  /// [sourceGroupOwnerAccount] The Alibaba Cloud user account Id of the target security group when security groups are authorized across accounts.  This parameter is invalid if `cidr_ip` has already been set.
  /// [sourceSecurityGroupId] The target security group ID within the same region. If this field is specified, the `nic_type` can only select `intranet`.
  /// [type] The type of the Security Group Rule. Valid values:
  SecurityGroupRuleArgs({
    this.cidrIp,
    this.description,
    required this.ipProtocol,
    this.ipv6CidrIp,
    this.nicType,
    this.policy,
    this.portRange,
    this.prefixListId,
    this.priority,
    required this.securityGroupId,
    this.sourceGroupOwnerAccount,
    this.sourceSecurityGroupId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'description': ?description,
      'ipProtocol': ipProtocol,
      'ipv6CidrIp': ?ipv6CidrIp,
      'nicType': ?nicType,
      'policy': ?policy,
      'portRange': ?portRange,
      'prefixListId': ?prefixListId,
      'priority': ?priority,
      'securityGroupId': securityGroupId,
      'sourceGroupOwnerAccount': ?sourceGroupOwnerAccount,
      'sourceSecurityGroupId': ?sourceSecurityGroupId,
      'type': type,
    };
  }

  factory SecurityGroupRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupRuleArgs(
      cidrIp: map['cidrIp'] == null ? null : (map['cidrIp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      ipv6CidrIp: map['ipv6CidrIp'] == null ? null : (map['ipv6CidrIp']! as String).input(),
      nicType: map['nicType'] == null ? null : (map['nicType']! as String).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      portRange: map['portRange'] == null ? null : (map['portRange']! as String).input(),
      prefixListId: map['prefixListId'] == null ? null : (map['prefixListId']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      sourceGroupOwnerAccount: map['sourceGroupOwnerAccount'] == null ? null : (map['sourceGroupOwnerAccount']! as String).input(),
      sourceSecurityGroupId: map['sourceSecurityGroupId'] == null ? null : (map['sourceSecurityGroupId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

