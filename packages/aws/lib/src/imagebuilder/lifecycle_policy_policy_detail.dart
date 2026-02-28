// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_detail_action.dart';
import 'lifecycle_policy_policy_detail_exclusion_rules.dart';
import 'lifecycle_policy_policy_detail_filter.dart';

class LifecyclePolicyPolicyDetail {
  /// Configuration details for the policy action.
  final LifecyclePolicyPolicyDetailAction action;
  /// Additional rules to specify resources that should be exempt from policy actions.
  final LifecyclePolicyPolicyDetailExclusionRules? exclusionRules;
  /// Specifies the resources that the lifecycle policy applies to.
  ///
  /// The following arguments are optional:
  final LifecyclePolicyPolicyDetailFilter filter;

  /// Creates a new [LifecyclePolicyPolicyDetail].
  /// [action] Configuration details for the policy action.
  /// [exclusionRules] Additional rules to specify resources that should be exempt from policy actions.
  /// [filter] Specifies the resources that the lifecycle policy applies to.
  LifecyclePolicyPolicyDetail({
    required this.action,
    this.exclusionRules,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'exclusionRules': ?exclusionRules == null ? null : exclusionRules!.toMap(),
      'filter': filter.toMap(),
    };
  }

  factory LifecyclePolicyPolicyDetail.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetail(
      action: LifecyclePolicyPolicyDetailAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      exclusionRules: map['exclusionRules'] == null ? null : LifecyclePolicyPolicyDetailExclusionRules.fromMap((map['exclusionRules'] as Map).cast<String, dynamic>()),
      filter: LifecyclePolicyPolicyDetailFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
    );
  }
}

