// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpv6EgressRulesRule {
  /// The description of the egress-only rule.
  final pulumi.Input<String> description;
  /// The ID of the Ipv6 Egress Rule. The value formats as `&lt;ipv6_gateway_id&gt;:&lt;ipv6_egress_rule_id&gt;`.
  final pulumi.Input<String> id;
  /// The ID of the instance to which the egress-only rule is applied.
  final pulumi.Input<String> instanceId;
  /// The type of the instance to which the egress-only rule is applied.
  final pulumi.Input<String> instanceType;
  /// The first ID of the resource.
  final pulumi.Input<String> ipv6EgressRuleId;
  /// The name of the resource.
  final pulumi.Input<String> ipv6EgressRuleName;
  /// The ID of the IPv6 gateway.
  final pulumi.Input<String> ipv6GatewayId;
  /// The status of the resource. Valid values: `Available`, `Pending` and `Deleting`.
  final pulumi.Input<String> status;

  /// Creates a new [GetIpv6EgressRulesRule].
  /// [description] The description of the egress-only rule.
  /// [id] The ID of the Ipv6 Egress Rule. The value formats as `&lt;ipv6_gateway_id&gt;:&lt;ipv6_egress_rule_id&gt;`.
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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      ipv6EgressRuleId: pulumi.Input.fromValue(map['ipv6EgressRuleId'] as String),
      ipv6EgressRuleName: pulumi.Input.fromValue(map['ipv6EgressRuleName'] as String),
      ipv6GatewayId: pulumi.Input.fromValue(map['ipv6GatewayId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

