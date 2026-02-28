// ignore_for_file: unused_element, unnecessary_cast

import 'advance_rollout_rule.dart';
import 'promote_release_rule.dart';
import 'repair_rollout_rule.dart';

/// `AutomationRule` defines the automation activities.
class AutomationRule {
  /// Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  final AdvanceRolloutRule? advanceRolloutRule;

  /// Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  final PromoteReleaseRule? promoteReleaseRule;

  /// Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  final RepairRolloutRule? repairRolloutRule;

  /// Creates a new [AutomationRule].
  /// [advanceRolloutRule] Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// [promoteReleaseRule] Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// [repairRolloutRule] Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  AutomationRule({
    this.advanceRolloutRule,
    this.promoteReleaseRule,
    this.repairRolloutRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advanceRolloutRuleValue = advanceRolloutRule;
    if (advanceRolloutRuleValue != null) {
      map['advanceRolloutRule'] = advanceRolloutRuleValue.toMap();
    }
    final promoteReleaseRuleValue = promoteReleaseRule;
    if (promoteReleaseRuleValue != null) {
      map['promoteReleaseRule'] = promoteReleaseRuleValue.toMap();
    }
    final repairRolloutRuleValue = repairRolloutRule;
    if (repairRolloutRuleValue != null) {
      map['repairRolloutRule'] = repairRolloutRuleValue.toMap();
    }
    return map;
  }

  factory AutomationRule.fromMap(Map<String, dynamic> map) {
    return AutomationRule(
      advanceRolloutRule: map['advanceRolloutRule'] == null
          ? null
          : AdvanceRolloutRule.fromMap(
              (map['advanceRolloutRule'] as Map).cast<String, dynamic>()),
      promoteReleaseRule: map['promoteReleaseRule'] == null
          ? null
          : PromoteReleaseRule.fromMap(
              (map['promoteReleaseRule'] as Map).cast<String, dynamic>()),
      repairRolloutRule: map['repairRolloutRule'] == null
          ? null
          : RepairRolloutRule.fromMap(
              (map['repairRolloutRule'] as Map).cast<String, dynamic>()),
    );
  }
}
