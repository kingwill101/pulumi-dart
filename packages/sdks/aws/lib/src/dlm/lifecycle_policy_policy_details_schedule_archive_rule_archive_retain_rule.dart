// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule_retention_archive_tier.dart';

class LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule {
  /// Information about retention period in the Amazon EBS Snapshots Archive. See the `retention_archive_tier` block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier> retentionArchiveTier;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule].
  /// [retentionArchiveTier] Information about retention period in the Amazon EBS Snapshots Archive. See the `retention_archive_tier` block.
  const LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule({
    required this.retentionArchiveTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionArchiveTier': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier, Map<String, dynamic>>(retentionArchiveTier, (value) => value.toMap()),
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule(
      retentionArchiveTier: pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier.fromMap((map['retentionArchiveTier']! as Map).cast<String, dynamic>())),
    );
  }
}

