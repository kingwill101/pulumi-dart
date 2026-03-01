// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule.dart';

class LifecyclePolicyPolicyDetailsScheduleArchiveRule {
  /// Information about the retention period for the snapshot archiving rule. See the `archive_retain_rule` block.
  final LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule archiveRetainRule;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleArchiveRule].
  /// [archiveRetainRule] Information about the retention period for the snapshot archiving rule. See the `archive_retain_rule` block.
  LifecyclePolicyPolicyDetailsScheduleArchiveRule({
    required this.archiveRetainRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveRetainRule': archiveRetainRule.toMap(),
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleArchiveRule(
      archiveRetainRule: LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule.fromMap((map['archiveRetainRule'] as Map).cast<String, dynamic>()),
    );
  }
}

