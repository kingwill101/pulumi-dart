// ignore_for_file: unused_element, unnecessary_cast

import '../lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule/lifecycle_policy_policy_details_schedule_archive_rule_archive_retain_rule.dart';

class LifecyclePolicyPolicyDetailsScheduleArchiveRule {
  /// Information about the retention period for the snapshot archiving rule. See the <span pulumi-lang-nodejs="`archiveRetainRule`" pulumi-lang-dotnet="`ArchiveRetainRule`" pulumi-lang-go="`archiveRetainRule`" pulumi-lang-python="`archive_retain_rule`" pulumi-lang-yaml="`archiveRetainRule`" pulumi-lang-java="`archiveRetainRule`">`archive_retain_rule`</span> block.
  final LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule
      archiveRetainRule;

  LifecyclePolicyPolicyDetailsScheduleArchiveRule({
    required this.archiveRetainRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveRetainRule'] = archiveRetainRule.toMap();
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleArchiveRule(
      archiveRetainRule:
          LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRule
              .fromMap(
                  (map['archiveRetainRule'] as Map).cast<String, dynamic>()),
    );
  }
}
