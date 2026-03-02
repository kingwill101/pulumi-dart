// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipv6_egress_rule_ipv6_egress_rule_args_doc}
/// The set of arguments for Ipv6EgressRule.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipv6_egress_rule_ipv6_egress_rule_args_doc}
class Ipv6EgressRuleArgs {
  /// The description of the egress-only rule. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The ID of the IPv6 address to which you want to apply the egress-only rule.
  final pulumi.Input<String> instanceId;
  /// The type of instance to which you want to apply the egress-only rule. Valid values: `Ipv6Address`. `Ipv6Address` (default): an IPv6 address.
  final pulumi.Input<String>? instanceType;
  /// The name of the egress-only rule. The name must be `2` to `128` characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? ipv6EgressRuleName;
  /// The ID of the IPv6 gateway.
  final pulumi.Input<String> ipv6GatewayId;

  /// Creates a new [Ipv6EgressRuleArgs].
  /// [description] The description of the egress-only rule. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  /// [instanceId] The ID of the IPv6 address to which you want to apply the egress-only rule.
  /// [instanceType] The type of instance to which you want to apply the egress-only rule. Valid values: `Ipv6Address`. `Ipv6Address` (default): an IPv6 address.
  /// [ipv6EgressRuleName] The name of the egress-only rule. The name must be `2` to `128` characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with `http://` or `https://`.
  /// [ipv6GatewayId] The ID of the IPv6 gateway.
  Ipv6EgressRuleArgs({
    this.description,
    required this.instanceId,
    this.instanceType,
    this.ipv6EgressRuleName,
    required this.ipv6GatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceId': instanceId,
      'instanceType': ?instanceType,
      'ipv6EgressRuleName': ?ipv6EgressRuleName,
      'ipv6GatewayId': ipv6GatewayId,
    };
  }

  factory Ipv6EgressRuleArgs.fromMap(Map<String, dynamic> map) {
    return Ipv6EgressRuleArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      ipv6EgressRuleName: map['ipv6EgressRuleName'] == null ? null : (map['ipv6EgressRuleName']! as String).input(),
      ipv6GatewayId: (map['ipv6GatewayId'] as String).input(),
    );
  }
}

