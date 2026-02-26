// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_orgpolicy_v2_policy_spec_policy_rule.dart';

/// Defines a Google Cloud policy specification which is used to specify constraints for configurations of Google Cloud resources.
class GoogleCloudOrgpolicyV2PolicySpec {
  /// An opaque tag indicating the current version of the policy, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current policy to use when executing a read-modify-write loop. When the policy is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  final String? etag;

  /// Determines the inheritance behavior for this policy. If `inherit_from_parent` is true, policy rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the new root for evaluation. This field can be set only for policies which configure list constraints.
  final bool? inheritFromParent;

  /// Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.
  final bool? reset;

  /// In policies for boolean constraints, the following requirements apply: - There must be one and only one policy rule where condition is unset. - Boolean policy rules with conditions must set `enforced` to the opposite of the policy rule without a condition. - During policy evaluation, policy rules with conditions that are true for a target resource take precedence.
  final List<GoogleCloudOrgpolicyV2PolicySpecPolicyRule>? rules;

  GoogleCloudOrgpolicyV2PolicySpec({
    this.etag,
    this.inheritFromParent,
    this.reset,
    this.rules,
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
      map['rules'] = Input.encodeList<
          GoogleCloudOrgpolicyV2PolicySpecPolicyRule,
          Map<String, dynamic>>(rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudOrgpolicyV2PolicySpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudOrgpolicyV2PolicySpec(
      etag: map['etag'] == null ? null : map['etag'] as String,
      inheritFromParent: map['inheritFromParent'] == null
          ? null
          : map['inheritFromParent'] as bool,
      reset: map['reset'] == null ? null : map['reset'] as bool,
      rules: map['rules'] == null
          ? null
          : Input.decodeList<GoogleCloudOrgpolicyV2PolicySpecPolicyRule>(
              map['rules'],
              (value) => GoogleCloudOrgpolicyV2PolicySpecPolicyRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
