// ignore_for_file: unused_element, unnecessary_cast

import 'advance_rollout_rule_response.dart';
import 'promote_release_rule_response.dart';
import 'repair_rollout_rule_response.dart';

/// `AutomationRule` defines the automation activities.
class AutomationRuleResponse {
  /// Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  final AdvanceRolloutRuleResponse advanceRolloutRule;

  /// Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  final PromoteReleaseRuleResponse promoteReleaseRule;

  /// Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  final RepairRolloutRuleResponse repairRolloutRule;

  /// Creates a new [AutomationRuleResponse].
  /// [advanceRolloutRule] Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// [promoteReleaseRule] Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// [repairRolloutRule] Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  AutomationRuleResponse({
    required this.advanceRolloutRule,
    required this.promoteReleaseRule,
    required this.repairRolloutRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advanceRolloutRule'] = advanceRolloutRule.toMap();
    map['promoteReleaseRule'] = promoteReleaseRule.toMap();
    map['repairRolloutRule'] = repairRolloutRule.toMap();
    return map;
  }

  factory AutomationRuleResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleResponse(
      advanceRolloutRule: AdvanceRolloutRuleResponse.fromMap(
          (map['advanceRolloutRule'] as Map).cast<String, dynamic>()),
      promoteReleaseRule: PromoteReleaseRuleResponse.fromMap(
          (map['promoteReleaseRule'] as Map).cast<String, dynamic>()),
      repairRolloutRule: RepairRolloutRuleResponse.fromMap(
          (map['repairRolloutRule'] as Map).cast<String, dynamic>()),
    );
  }
}
