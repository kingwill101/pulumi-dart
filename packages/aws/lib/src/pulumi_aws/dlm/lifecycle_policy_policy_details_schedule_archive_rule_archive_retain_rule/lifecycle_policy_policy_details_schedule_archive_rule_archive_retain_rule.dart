// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule_retention_archive_tier/lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule_retention_archive_tier.dart';

class LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule {
  /// Information about retention period in the Amazon EBS Snapshots Archive. See the <span pulumi-lang-nodejs="`retentionArchiveTier`" pulumi-lang-dotnet="`RetentionArchiveTier`" pulumi-lang-go="`retentionArchiveTier`" pulumi-lang-python="`retention_archive_tier`" pulumi-lang-yaml="`retentionArchiveTier`" pulumi-lang-java="`retentionArchiveTier`">`retention_archive_tier`</span> block.
  final LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier
      retentionArchiveTier;

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
