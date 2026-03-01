// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_dry_run_spec_rule.dart';

class PolicyDryRunSpec {
  /// (Output)
  /// An opaque tag indicating the current version of the policy, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current policy to use when executing a read-modify-write loop. When the policy is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  final String? etag;

  /// Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints.
  final bool? inheritFromParent;

  /// Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  final bool? reset;

  /// In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence.
  /// Structure is documented below.
  final List<PolicyDryRunSpecRule>? rules;

  /// (Output)
  /// Output only. The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that policy.
  final String? updateTime;

  /// Creates a new [PolicyDryRunSpec].
  /// [etag] (Output)
  /// [inheritFromParent] Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints.
  /// [reset] Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  /// [rules] In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence.
  /// [updateTime] (Output)
  PolicyDryRunSpec({
    this.etag,
    this.inheritFromParent,
    this.reset,
    this.rules,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'inheritFromParent': ?inheritFromParent,
      'reset': ?reset,
      'rules': ?rules == null
          ? null
          : pulumi.Input.encodeList<PolicyDryRunSpecRule, Map<String, dynamic>>(
              rules!,
              (value) => value.toMap(),
            ),
      'updateTime': ?updateTime,
    };
  }

  factory PolicyDryRunSpec.fromMap(Map<String, dynamic> map) {
    return PolicyDryRunSpec(
      etag: map['etag'] == null ? null : map['etag'] as String,
      inheritFromParent: map['inheritFromParent'] == null
          ? null
          : map['inheritFromParent'] as bool,
      reset: map['reset'] == null ? null : map['reset'] as bool,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<PolicyDryRunSpecRule>(
              map['rules'],
              (value) => PolicyDryRunSpecRule.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
    );
  }
}
