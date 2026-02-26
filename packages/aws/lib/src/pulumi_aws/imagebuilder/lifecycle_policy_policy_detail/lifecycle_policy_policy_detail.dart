// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_policy_detail_action/lifecycle_policy_policy_detail_action.dart';
import '../lifecycle_policy_policy_detail_exclusion_rules/lifecycle_policy_policy_detail_exclusion_rules.dart';
import '../lifecycle_policy_policy_detail_filter/lifecycle_policy_policy_detail_filter.dart';

class LifecyclePolicyPolicyDetail {
  /// Configuration details for the policy action.
  final LifecyclePolicyPolicyDetailAction action;

  /// Additional rules to specify resources that should be exempt from policy actions.
  final LifecyclePolicyPolicyDetailExclusionRules? exclusionRules;

  /// Specifies the resources that the lifecycle policy applies to.
  ///
  /// The following arguments are optional:
  final LifecyclePolicyPolicyDetailFilter filter;

  LifecyclePolicyPolicyDetail({
    required this.action,
    this.exclusionRules,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final exclusionRulesValue = exclusionRules;
    if (exclusionRulesValue != null) {
      map['exclusionRules'] = exclusionRulesValue.toMap();
    }
    map['filter'] = filter.toMap();
    return map;
  }

  factory LifecyclePolicyPolicyDetail.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetail(
      action: LifecyclePolicyPolicyDetailAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      exclusionRules: map['exclusionRules'] == null
          ? null
          : LifecyclePolicyPolicyDetailExclusionRules.fromMap(
              (map['exclusionRules'] as Map).cast<String, dynamic>()),
      filter: LifecyclePolicyPolicyDetailFilter.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
    );
  }
}
