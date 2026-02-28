// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_repair_rollout_rule_repair_phase_retry.dart';
import 'automation_rule_repair_rollout_rule_repair_phase_rollback.dart';

class AutomationRuleRepairRolloutRuleRepairPhase {
  /// Optional. Retries a failed job.
  /// Structure is documented below.
  final AutomationRuleRepairRolloutRuleRepairPhaseRetry? retry;
  /// Optional. Rolls back a Rollout.
  /// Structure is documented below.
  final AutomationRuleRepairRolloutRuleRepairPhaseRollback? rollback;

  /// Creates a new [AutomationRuleRepairRolloutRuleRepairPhase].
  /// [retry] Optional. Retries a failed job.
  /// [rollback] Optional. Rolls back a Rollout.
  AutomationRuleRepairRolloutRuleRepairPhase({
    this.retry,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': ?retry == null ? null : retry!.toMap(),
      'rollback': ?rollback == null ? null : rollback!.toMap(),
    };
  }

  factory AutomationRuleRepairRolloutRuleRepairPhase.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRepairRolloutRuleRepairPhase(
      retry: map['retry'] == null ? null : AutomationRuleRepairRolloutRuleRepairPhaseRetry.fromMap((map['retry'] as Map).cast<String, dynamic>()),
      rollback: map['rollback'] == null ? null : AutomationRuleRepairRolloutRuleRepairPhaseRollback.fromMap((map['rollback'] as Map).cast<String, dynamic>()),
    );
  }
}

