// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_rule.dart';

/// Simplified lifecycle policy model consisting of one or more rules that determine which images in a repository should be expired. See https://docs.aws.amazon.com/AmazonECR/latest/userguide/lifecycle_policy_examples.html for more details.
class LifecyclePolicy {
  /// Specifies the rules to determine how images should be retired from this repository. Rules are ordered from lowest priority to highest.  If there is a rule with a `selection` value of `any`, then it will have the highest priority.
  final pulumi.Input<List<LifecyclePolicyRule>>? rules;
  /// Skips creation of the policy if set to `true`.
  final pulumi.Input<bool>? skip;

  /// Creates a new [LifecyclePolicy].
  /// [rules] Specifies the rules to determine how images should be retired from this repository. Rules are ordered from lowest priority to highest.  If there is a rule with a `selection` value of `any`, then it will have the highest priority.
  /// [skip] Skips creation of the policy if set to `true`.
  LifecyclePolicy({
    this.rules,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<LifecyclePolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skip': ?skip,
    };
  }

  factory LifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicy(
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicyRule>(guardedValue, (value) => LifecyclePolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

