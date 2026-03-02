// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_detail_action.dart';
import 'lifecycle_policy_policy_detail_exclusion_rules.dart';
import 'lifecycle_policy_policy_detail_filter.dart';

class LifecyclePolicyPolicyDetail {
  /// Configuration details for the policy action.
  final pulumi.Input<LifecyclePolicyPolicyDetailAction> action;
  /// Additional rules to specify resources that should be exempt from policy actions.
  final pulumi.Input<LifecyclePolicyPolicyDetailExclusionRules>? exclusionRules;
  /// Specifies the resources that the lifecycle policy applies to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<LifecyclePolicyPolicyDetailFilter> filter;

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
      'action': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'exclusionRules': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailExclusionRules, Map<String, dynamic>>(exclusionRules, (value) => value.toMap()),
      'filter': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory LifecyclePolicyPolicyDetail.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetail(
      action: (LifecyclePolicyPolicyDetailAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      exclusionRules: map['exclusionRules'] == null ? null : ((LifecyclePolicyPolicyDetailExclusionRules.fromMap((map['exclusionRules']! as Map).cast<String, dynamic>())).input()).input(),
      filter: (LifecyclePolicyPolicyDetailFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

