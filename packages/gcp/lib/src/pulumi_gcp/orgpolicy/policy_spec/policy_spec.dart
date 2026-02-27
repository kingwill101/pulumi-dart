// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_spec_rule/policy_spec_rule.dart';

class PolicySpec {
  /// (Output)
  /// An opaque tag indicating the current version of the `Policy`, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the `Policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current `Policy` to use when executing a read-modify-write loop. When the `Policy` is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  final String? etag;

  /// Determines the inheritance behavior for this `Policy`. If `inherit_from_parent` is true, PolicyRules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this Policy becomes the new root for evaluation. This field can be set only for Policies which configure list constraints.
  final bool? inheritFromParent;

  /// Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  final bool? reset;

  /// In Policies for boolean constraints, the following requirements apply: - There must be one and only one PolicyRule where condition is unset. - BooleanPolicyRules with conditions must set `enforced` to the opposite of the PolicyRule without a condition. - During policy evaluation, PolicyRules with conditions that are true for a target resource take precedence.
  /// Structure is documented below.
  final List<PolicySpecRule>? rules;

  /// (Output)
  /// Output only. The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that `Policy`.
  final String? updateTime;

  PolicySpec({
    this.etag,
    this.inheritFromParent,
    this.reset,
    this.rules,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final inheritFromParentValue = inheritFromParent;
    if (inheritFromParentValue != null) {
      map['inheritFromParent'] = inheritFromParentValue;
    }
    final resetValue = reset;
    if (resetValue != null) {
      map['reset'] = resetValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.encodeList<PolicySpecRule, Map<String, dynamic>>(
          rulesValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory PolicySpec.fromMap(Map<String, dynamic> map) {
    return PolicySpec(
      etag: map['etag'] == null ? null : map['etag'] as String,
      inheritFromParent: map['inheritFromParent'] == null
          ? null
          : map['inheritFromParent'] as bool,
      reset: map['reset'] == null ? null : map['reset'] as bool,
      rules: map['rules'] == null
          ? null
          : Input.decodeList<PolicySpecRule>(
              map['rules'],
              (value) => PolicySpecRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
