// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ipv6EgressRule resources.
class Ipv6EgressRuleState {
  /// The description of the egress-only rule. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The ID of the IPv6 address to which you want to apply the egress-only rule.
  final pulumi.Input<String>? instanceId;
  /// The type of instance to which you want to apply the egress-only rule. Valid values: `Ipv6Address`. `Ipv6Address` (default): an IPv6 address.
  final pulumi.Input<String>? instanceType;
  /// The ID of the IPv6 EgressRule.
  final pulumi.Input<String>? ipv6EgressRuleId;
  /// The name of the egress-only rule. The name must be `2` to `128` characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? ipv6EgressRuleName;
  /// The ID of the IPv6 gateway.
  final pulumi.Input<String>? ipv6GatewayId;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [Ipv6EgressRuleState].
  /// [description] The description of the egress-only rule. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  /// [instanceId] The ID of the IPv6 address to which you want to apply the egress-only rule.
  /// [instanceType] The type of instance to which you want to apply the egress-only rule. Valid values: `Ipv6Address`. `Ipv6Address` (default): an IPv6 address.
  /// [ipv6EgressRuleId] The ID of the IPv6 EgressRule.
  /// [ipv6EgressRuleName] The name of the egress-only rule. The name must be `2` to `128` characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with `http://` or `https://`.
  /// [ipv6GatewayId] The ID of the IPv6 gateway.
  /// [status] The status of the resource.
  Ipv6EgressRuleState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? ipv6EgressRuleId,
    pulumi.Output<String>? ipv6EgressRuleName,
    pulumi.Output<String>? ipv6GatewayId,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipv6EgressRuleId = pulumi.Input.asOptionalInput<String>(ipv6EgressRuleId),
      ipv6EgressRuleName = pulumi.Input.asOptionalInput<String>(ipv6EgressRuleName),
      ipv6GatewayId = pulumi.Input.asOptionalInput<String>(ipv6GatewayId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'ipv6EgressRuleId': ?ipv6EgressRuleId,
      'ipv6EgressRuleName': ?ipv6EgressRuleName,
      'ipv6GatewayId': ?ipv6GatewayId,
      'status': ?status,
    };
  }

  factory Ipv6EgressRuleState.fromMap(Map<String, dynamic> map) {
    return Ipv6EgressRuleState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipv6EgressRuleId: map['ipv6EgressRuleId'] == null ? null : pulumi.Output.create<String>(map['ipv6EgressRuleId'] as String),
      ipv6EgressRuleName: map['ipv6EgressRuleName'] == null ? null : pulumi.Output.create<String>(map['ipv6EgressRuleName'] as String),
      ipv6GatewayId: map['ipv6GatewayId'] == null ? null : pulumi.Output.create<String>(map['ipv6GatewayId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

