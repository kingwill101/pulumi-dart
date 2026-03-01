// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Policy creation time
  final pulumi.Input<String>? createTime;
  /// The policy description.
  final pulumi.Input<String>? policyDescription;
  /// Policy Name
  final pulumi.Input<String>? policyName;
  /// The policy type. The UDM_ECS_ONLY and STANDARD types are supported. The policy with PolicyType = UDM_ECS_ONLY can only be used for ECS instances. The policy with PolicyType = STANDARD can only be used for data sources other than ECS instances.
  final pulumi.Input<String>? policyType;
  /// A list of policy rules See `rules` below.
  final pulumi.Input<List<PolicyRule>>? rules;

  /// Creates a new [PolicyState].
  /// [createTime] Policy creation time
  /// [policyDescription] The policy description.
  /// [policyName] Policy Name
  /// [policyType] The policy type. The UDM_ECS_ONLY and STANDARD types are supported. The policy with PolicyType = UDM_ECS_ONLY can only be used for ECS instances. The policy with PolicyType = STANDARD can only be used for data sources other than ECS instances.
  /// [rules] A list of policy rules See `rules` below.
  PolicyState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? policyDescription,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? policyType,
    pulumi.Output<List<PolicyRule>>? rules,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      policyDescription = pulumi.Input.asOptionalInput<String>(policyDescription),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      rules = pulumi.Input.asOptionalInput<List<PolicyRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'policyDescription': ?policyDescription,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      policyDescription: map['policyDescription'] == null ? null : pulumi.Output.create<String>(map['policyDescription'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<PolicyRule>>(pulumi.Input.decodeList<PolicyRule>(map['rules'], (value) => PolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

