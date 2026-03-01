// ignore_for_file: unused_element, unnecessary_cast


class GetIpv6EgressRulesRule {
  /// The description of the egress-only rule.
  final String description;
  /// The ID of the Ipv6 Egress Rule. The value formats as `<ipv6_gateway_id>:<ipv6_egress_rule_id>`.
  final String id;
  /// The ID of the instance to which the egress-only rule is applied.
  final String instanceId;
  /// The type of the instance to which the egress-only rule is applied.
  final String instanceType;
  /// The first ID of the resource.
  final String ipv6EgressRuleId;
  /// The name of the resource.
  final String ipv6EgressRuleName;
  /// The ID of the IPv6 gateway.
  final String ipv6GatewayId;
  /// The status of the resource. Valid values: `Available`, `Pending` and `Deleting`.
  final String status;

  /// Creates a new [GetIpv6EgressRulesRule].
  /// [description] The description of the egress-only rule.
  /// [id] The ID of the Ipv6 Egress Rule. The value formats as `<ipv6_gateway_id>:<ipv6_egress_rule_id>`.
  /// [instanceId] The ID of the instance to which the egress-only rule is applied.
  /// [instanceType] The type of the instance to which the egress-only rule is applied.
  /// [ipv6EgressRuleId] The first ID of the resource.
  /// [ipv6EgressRuleName] The name of the resource.
  /// [ipv6GatewayId] The ID of the IPv6 gateway.
  /// [status] The status of the resource. Valid values: `Available`, `Pending` and `Deleting`.
  GetIpv6EgressRulesRule({
    required this.description,
    required this.id,
    required this.instanceId,
    required this.instanceType,
    required this.ipv6EgressRuleId,
    required this.ipv6EgressRuleName,
    required this.ipv6GatewayId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'ipv6EgressRuleId': ipv6EgressRuleId,
      'ipv6EgressRuleName': ipv6EgressRuleName,
      'ipv6GatewayId': ipv6GatewayId,
      'status': status,
    };
  }

  factory GetIpv6EgressRulesRule.fromMap(Map<String, dynamic> map) {
    return GetIpv6EgressRulesRule(
      description: map['description'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      ipv6EgressRuleId: map['ipv6EgressRuleId'] as String,
      ipv6EgressRuleName: map['ipv6EgressRuleName'] as String,
      ipv6GatewayId: map['ipv6GatewayId'] as String,
      status: map['status'] as String,
    );
  }
}

