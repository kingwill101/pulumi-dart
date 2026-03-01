// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_sec_group_rule_sec_group_rule_args_doc}
/// The set of arguments for SecGroupRule.
/// {@endtemplate}
/// {@macro pulumi_networking_sec_group_rule_sec_group_rule_args_doc}
class SecGroupRuleArgs {
  /// A description of the rule. Changing this creates a new security group rule.
  final pulumi.Input<String>? description;
  /// The direction of the rule, valid values are __ingress__
  /// or __egress__. Changing this creates a new security group rule.
  final pulumi.Input<String> direction;
  /// The layer 3 protocol type, valid values are __IPv4__
  /// or __IPv6__. Changing this creates a new security group rule.
  final pulumi.Input<String> ethertype;
  /// The higher part of the allowed port range, valid
  /// integer value needs to be between 1 and 65535. Changing this creates a new
  /// security group rule.
  final pulumi.Input<int>? portRangeMax;
  /// The lower part of the allowed port range, valid
  /// integer value needs to be between 1 and 65535. Changing this creates a new
  /// security group rule.
  final pulumi.Input<int>? portRangeMin;
  /// The layer 4 protocol type, valid values are
  /// following. Changing this creates a new security group rule. This is required
  /// if you want to specify a port range.
  /// * empty string or omitted (any protocol)
  /// * integer value between 0 and 255 (valid IP protocol number)
  /// * __tcp__
  /// * __udp__
  /// * __icmp__
  /// * __ah__
  /// * __dccp__
  /// * __egp__
  /// * __esp__
  /// * __gre__
  /// * __igmp__
  /// * __ipv6-encap__
  /// * __ipv6-frag__
  /// * __ipv6-icmp__
  /// * __ipv6-nonxt__
  /// * __ipv6-opts__
  /// * __ipv6-route__
  /// * __ospf__
  /// * __pgm__
  /// * __rsvp__
  /// * __sctp__
  /// * __udplite__
  /// * __vrrp__
  /// * __ipip__
  final pulumi.Input<String>? protocol;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security group rule.
  final pulumi.Input<String>? region;
  /// The remote address group id, the value
  /// needs to be an OpenStack ID of an address group in the same tenant. Changing
  /// this creates a new security group rule. This argument is mutually exclusive
  /// with `remote_ip_prefix` and `remote_group_id`.
  final pulumi.Input<String>? remoteAddressGroupId;
  /// The remote group id, the value needs to be an
  /// Openstack ID of a security group in the same tenant. Changing this creates
  /// a new security group rule.
  final pulumi.Input<String>? remoteGroupId;
  /// The remote CIDR, the value needs to be a valid
  /// CIDR (i.e. 192.168.0.0/16). Changing this creates a new security group rule.
  final pulumi.Input<String>? remoteIpPrefix;
  /// The security group id the rule should belong
  /// to, the value needs to be an Openstack ID of a security group in the same
  /// tenant. Changing this creates a new security group rule.
  final pulumi.Input<String> securityGroupId;
  /// The owner of the security group. Required if admin
  /// wants to create a port for another tenant. Changing this creates a new
  /// security group rule.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [SecGroupRuleArgs].
  /// [description] A description of the rule. Changing this creates a new security group rule.
  /// [direction] The direction of the rule, valid values are __ingress__
  /// [ethertype] The layer 3 protocol type, valid values are __IPv4__
  /// [portRangeMax] The higher part of the allowed port range, valid
  /// [portRangeMin] The lower part of the allowed port range, valid
  /// [protocol] The layer 4 protocol type, valid values are
  /// [region] The region in which to obtain the V2 networking client.
  /// [remoteAddressGroupId] The remote address group id, the value
  /// [remoteGroupId] The remote group id, the value needs to be an
  /// [remoteIpPrefix] The remote CIDR, the value needs to be a valid
  /// [securityGroupId] The security group id the rule should belong
  /// [tenantId] The owner of the security group. Required if admin
  SecGroupRuleArgs({
    String? description,
    required String direction,
    required String ethertype,
    int? portRangeMax,
    int? portRangeMin,
    String? protocol,
    String? region,
    String? remoteAddressGroupId,
    String? remoteGroupId,
    String? remoteIpPrefix,
    required String securityGroupId,
    String? tenantId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      direction = pulumi.Input.asInput<String>(direction),
      ethertype = pulumi.Input.asInput<String>(ethertype),
      portRangeMax = pulumi.Input.asOptionalInput<int>(portRangeMax),
      portRangeMin = pulumi.Input.asOptionalInput<int>(portRangeMin),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteAddressGroupId = pulumi.Input.asOptionalInput<String>(remoteAddressGroupId),
      remoteGroupId = pulumi.Input.asOptionalInput<String>(remoteGroupId),
      remoteIpPrefix = pulumi.Input.asOptionalInput<String>(remoteIpPrefix),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'direction': direction,
      'ethertype': ethertype,
      'portRangeMax': ?portRangeMax,
      'portRangeMin': ?portRangeMin,
      'protocol': ?protocol,
      'region': ?region,
      'remoteAddressGroupId': ?remoteAddressGroupId,
      'remoteGroupId': ?remoteGroupId,
      'remoteIpPrefix': ?remoteIpPrefix,
      'securityGroupId': securityGroupId,
      'tenantId': ?tenantId,
    };
  }

  factory SecGroupRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecGroupRuleArgs(
      description: map['description'] == null ? null : map['description'] as String,
      direction: map['direction'] as String,
      ethertype: map['ethertype'] as String,
      portRangeMax: map['portRangeMax'] == null ? null : map['portRangeMax'] as int,
      portRangeMin: map['portRangeMin'] == null ? null : map['portRangeMin'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      remoteAddressGroupId: map['remoteAddressGroupId'] == null ? null : map['remoteAddressGroupId'] as String,
      remoteGroupId: map['remoteGroupId'] == null ? null : map['remoteGroupId'] as String,
      remoteIpPrefix: map['remoteIpPrefix'] == null ? null : map['remoteIpPrefix'] as String,
      securityGroupId: map['securityGroupId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

