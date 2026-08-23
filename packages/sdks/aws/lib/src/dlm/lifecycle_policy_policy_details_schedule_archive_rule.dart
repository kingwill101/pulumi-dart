// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule.dart';

class LifecyclePolicyPolicyDetailsScheduleArchiveRule {
  /// Information about the retention period for the snapshot archiving rule. See the `archiveRetainRule` block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule> archiveRetainRule;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleArchiveRule].
  /// [archiveRetainRule] Information about the retention period for the snapshot archiving rule. See the `archiveRetainRule` block.
  const LifecyclePolicyPolicyDetailsScheduleArchiveRule({
    required this.archiveRetainRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveRetainRule': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule, Map<String, dynamic>>(archiveRetainRule, (value) => value.toMap()),
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleArchiveRule(
      archiveRetainRule: pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule.fromMap((map['archiveRetainRule']! as Map).cast<String, dynamic>())),
    );
  }
}
