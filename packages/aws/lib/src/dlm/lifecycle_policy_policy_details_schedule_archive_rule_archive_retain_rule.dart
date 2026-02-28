// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule_retention_archive_tier.dart';

class LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule {
  /// Information about retention period in the Amazon EBS Snapshots Archive. See the `retention_archive_tier` block.
  final LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier
      retentionArchiveTier;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule].
  /// [retentionArchiveTier] Information about retention period in the Amazon EBS Snapshots Archive. See the `retention_archive_tier` block.
  LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule({
    required this.retentionArchiveTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionArchiveTier'] = retentionArchiveTier.toMap();
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule(
      retentionArchiveTier:
          LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier
              .fromMap(
                  (map['retentionArchiveTier'] as Map).cast<String, dynamic>()),
    );
  }
}
