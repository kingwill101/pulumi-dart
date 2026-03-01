// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityGroupRule resources.
class SecurityGroupRuleState {
  /// The target IP address range. The default value is 0.0.0.0/0 (which means no restriction will be applied). Other supported formats include 10.159.6.18/12. Only IPv4 is supported.
  final pulumi.Input<String>? cidrIp;
  /// The description of the security group rule. The description can be up to 1 to 512 characters in length. Defaults to null.
  ///
  /// > **NOTE:**  You must specify one of the following field: `cidr_ip`,`source_security_group_id`,`prefix_list_id`,`ipv6_cidr_ip`.
  final pulumi.Input<String>? description;
  /// The transport layer protocol of the Security Group Rule. Valid values: `tcp`, `udp`, `icmp`, `icmpv6`, `gre`, `all`. **NOTE:** From version 1.262.0, `ip_protocol` can be set to `icmpv6`.
  final pulumi.Input<String>? ipProtocol;
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
  final pulumi.Input<String>? securityGroupId;
  /// The ID of the Security Group Rule.
  final pulumi.Input<String>? securityGroupRuleId;
  /// The Alibaba Cloud user account Id of the target security group when security groups are authorized across accounts.  This parameter is invalid if `cidr_ip` has already been set.
  final pulumi.Input<String>? sourceGroupOwnerAccount;
  /// The target security group ID within the same region. If this field is specified, the `nic_type` can only select `intranet`.
  final pulumi.Input<String>? sourceSecurityGroupId;
  /// The type of the Security Group Rule. Valid values:
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityGroupRuleState].
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
  /// [securityGroupRuleId] The ID of the Security Group Rule.
  /// [sourceGroupOwnerAccount] The Alibaba Cloud user account Id of the target security group when security groups are authorized across accounts.  This parameter is invalid if `cidr_ip` has already been set.
  /// [sourceSecurityGroupId] The target security group ID within the same region. If this field is specified, the `nic_type` can only select `intranet`.
  /// [type] The type of the Security Group Rule. Valid values:
  SecurityGroupRuleState({
    pulumi.Output<String>? cidrIp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? ipv6CidrIp,
    pulumi.Output<String>? nicType,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? portRange,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? securityGroupRuleId,
    pulumi.Output<String>? sourceGroupOwnerAccount,
    pulumi.Output<String>? sourceSecurityGroupId,
    pulumi.Output<String>? type,
  }) :
      cidrIp = pulumi.Input.asOptionalInput<String>(cidrIp),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      ipv6CidrIp = pulumi.Input.asOptionalInput<String>(ipv6CidrIp),
      nicType = pulumi.Input.asOptionalInput<String>(nicType),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      portRange = pulumi.Input.asOptionalInput<String>(portRange),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityGroupRuleId = pulumi.Input.asOptionalInput<String>(securityGroupRuleId),
      sourceGroupOwnerAccount = pulumi.Input.asOptionalInput<String>(sourceGroupOwnerAccount),
      sourceSecurityGroupId = pulumi.Input.asOptionalInput<String>(sourceSecurityGroupId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'description': ?description,
      'ipProtocol': ?ipProtocol,
      'ipv6CidrIp': ?ipv6CidrIp,
      'nicType': ?nicType,
      'policy': ?policy,
      'portRange': ?portRange,
      'prefixListId': ?prefixListId,
      'priority': ?priority,
      'securityGroupId': ?securityGroupId,
      'securityGroupRuleId': ?securityGroupRuleId,
      'sourceGroupOwnerAccount': ?sourceGroupOwnerAccount,
      'sourceSecurityGroupId': ?sourceSecurityGroupId,
      'type': ?type,
    };
  }

  factory SecurityGroupRuleState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupRuleState(
      cidrIp: map['cidrIp'] == null ? null : pulumi.Output.create<String>(map['cidrIp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      ipv6CidrIp: map['ipv6CidrIp'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrIp'] as String),
      nicType: map['nicType'] == null ? null : pulumi.Output.create<String>(map['nicType'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      portRange: map['portRange'] == null ? null : pulumi.Output.create<String>(map['portRange'] as String),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      securityGroupRuleId: map['securityGroupRuleId'] == null ? null : pulumi.Output.create<String>(map['securityGroupRuleId'] as String),
      sourceGroupOwnerAccount: map['sourceGroupOwnerAccount'] == null ? null : pulumi.Output.create<String>(map['sourceGroupOwnerAccount'] as String),
      sourceSecurityGroupId: map['sourceSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['sourceSecurityGroupId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

