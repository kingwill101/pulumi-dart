// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_advance_rollout_rule.dart';
import 'automation_rule_promote_release_rule.dart';
import 'automation_rule_repair_rollout_rule.dart';
import 'automation_rule_timed_promote_release_rule.dart';

class AutomationRule {
  /// Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// Structure is documented below.
  final AutomationRuleAdvanceRolloutRule? advanceRolloutRule;

  /// Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// Structure is documented below.
  final AutomationRulePromoteReleaseRule? promoteReleaseRule;

  /// Optional. The RepairRolloutRule will automatically repair a failed rollout.
  /// Structure is documented below.
  final AutomationRuleRepairRolloutRule? repairRolloutRule;

  /// Optional. The `TimedPromoteReleaseRule` will automatically promote a release from the current target(s) to the specified target(s) on a configured schedule.
  /// Structure is documented below.
  final AutomationRuleTimedPromoteReleaseRule? timedPromoteReleaseRule;

  /// Creates a new [AutomationRule].
  /// [advanceRolloutRule] Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// [promoteReleaseRule] Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// [repairRolloutRule] Optional. The RepairRolloutRule will automatically repair a failed rollout.
  /// [timedPromoteReleaseRule] Optional. The `TimedPromoteReleaseRule` will automatically promote a release from the current target(s) to the specified target(s) on a configured schedule.
  AutomationRule({
    this.advanceRolloutRule,
    this.promoteReleaseRule,
    this.repairRolloutRule,
    this.timedPromoteReleaseRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceRolloutRule': ?advanceRolloutRule == null
          ? null
          : advanceRolloutRule!.toMap(),
      'promoteReleaseRule': ?promoteReleaseRule == null
          ? null
          : promoteReleaseRule!.toMap(),
      'repairRolloutRule': ?repairRolloutRule == null
          ? null
          : repairRolloutRule!.toMap(),
      'timedPromoteReleaseRule': ?timedPromoteReleaseRule == null
          ? null
          : timedPromoteReleaseRule!.toMap(),
    };
  }

  factory AutomationRule.fromMap(Map<String, dynamic> map) {
    return AutomationRule(
      advanceRolloutRule: map['advanceRolloutRule'] == null
          ? null
          : AutomationRuleAdvanceRolloutRule.fromMap(
              (map['advanceRolloutRule'] as Map).cast<String, dynamic>(),
            ),
      promoteReleaseRule: map['promoteReleaseRule'] == null
          ? null
          : AutomationRulePromoteReleaseRule.fromMap(
              (map['promoteReleaseRule'] as Map).cast<String, dynamic>(),
            ),
      repairRolloutRule: map['repairRolloutRule'] == null
          ? null
          : AutomationRuleRepairRolloutRule.fromMap(
              (map['repairRolloutRule'] as Map).cast<String, dynamic>(),
            ),
      timedPromoteReleaseRule: map['timedPromoteReleaseRule'] == null
          ? null
          : AutomationRuleTimedPromoteReleaseRule.fromMap(
              (map['timedPromoteReleaseRule'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
