// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_dry_run_spec_rule/policy_dry_run_spec_rule.dart';

class PolicyDryRunSpec {
  /// (Output)
  /// An opaque tag indicating the current version of the policy, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> indicates the version of the current policy to use when executing a read-modify-write loop. When the policy is returned from a `GetEffectivePolicy` request, the <span pulumi-lang-nodejs="`etag`" pulumi-lang-dotnet="`Etag`" pulumi-lang-go="`etag`" pulumi-lang-python="`etag`" pulumi-lang-yaml="`etag`" pulumi-lang-java="`etag`">`etag`</span> will be unset.
  final String? etag;

  /// Determines the inheritance behavior for this policy. If <span pulumi-lang-nodejs="`inheritFromParent`" pulumi-lang-dotnet="`InheritFromParent`" pulumi-lang-go="`inheritFromParent`" pulumi-lang-python="`inherit_from_parent`" pulumi-lang-yaml="`inheritFromParent`" pulumi-lang-java="`inheritFromParent`">`inherit_from_parent`</span> is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints.
  final bool? inheritFromParent;

  /// Ignores policies set above this resource and restores the <span pulumi-lang-nodejs="`constraintDefault`" pulumi-lang-dotnet="`ConstraintDefault`" pulumi-lang-go="`constraintDefault`" pulumi-lang-python="`constraint_default`" pulumi-lang-yaml="`constraintDefault`" pulumi-lang-java="`constraintDefault`">`constraint_default`</span> enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, <span pulumi-lang-nodejs="`rules`" pulumi-lang-dotnet="`Rules`" pulumi-lang-go="`rules`" pulumi-lang-python="`rules`" pulumi-lang-yaml="`rules`" pulumi-lang-java="`rules`">`rules`</span> must be empty and <span pulumi-lang-nodejs="`inheritFromParent`" pulumi-lang-dotnet="`InheritFromParent`" pulumi-lang-go="`inheritFromParent`" pulumi-lang-python="`inherit_from_parent`" pulumi-lang-yaml="`inheritFromParent`" pulumi-lang-java="`inheritFromParent`">`inherit_from_parent`</span> must be set to false.
  final bool? reset;

  /// In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set <span pulumi-lang-nodejs="`enforced`" pulumi-lang-dotnet="`Enforced`" pulumi-lang-go="`enforced`" pulumi-lang-python="`enforced`" pulumi-lang-yaml="`enforced`" pulumi-lang-java="`enforced`">`enforced`</span> to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence.
  /// Structure is documented below.
  final List<PolicyDryRunSpecRule>? rules;

  /// (Output)
  /// Output only. The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that policy.
  final String? updateTime;

  PolicyDryRunSpec({
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
      map['rules'] =
          Input.encodeList<PolicyDryRunSpecRule, Map<String, dynamic>>(
              rulesValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
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
          : Input.decodeList<PolicyDryRunSpecRule>(
              map['rules'],
              (value) => PolicyDryRunSpecRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
