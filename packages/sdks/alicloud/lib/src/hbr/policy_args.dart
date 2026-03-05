// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule.dart';

/// {@template pulumi_hbr_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_hbr_policy_policy_args_doc}
class PolicyArgs {
  /// The policy description.
  final pulumi.Input<String>? policyDescription;
  /// Policy Name
  final pulumi.Input<String>? policyName;
  /// The policy type. The UDM_ECS_ONLY and STANDARD types are supported. The policy with PolicyType = UDM_ECS_ONLY can only be used for ECS instances. The policy with PolicyType = STANDARD can only be used for data sources other than ECS instances.
  final pulumi.Input<String>? policyType;
  /// A list of policy rules See `rules` below.
  final pulumi.Input<List<PolicyRule>>? rules;

  /// Creates a new [PolicyArgs].
  /// [policyDescription] The policy description.
  /// [policyName] Policy Name
  /// [policyType] The policy type. The UDM_ECS_ONLY and STANDARD types are supported. The policy with PolicyType = UDM_ECS_ONLY can only be used for ECS instances. The policy with PolicyType = STANDARD can only be used for data sources other than ECS instances.
  /// [rules] A list of policy rules See `rules` below.
  PolicyArgs({
    this.policyDescription,
    this.policyName,
    this.policyType,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyDescription': ?policyDescription,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      policyDescription: (() { final guardedValue = map['policyDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRule>(guardedValue, (value) => PolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

