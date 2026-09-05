// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_trigger_condition.dart';

class PlanTrigger {
  /// Action to trigger. Valid values: `activate`, `deactivate`.
  final pulumi.Input<String> action;
  /// Conditions that must be met. See `conditions` Block for details.
  final pulumi.Input<List<PlanTriggerCondition>?>? conditions;
  /// Description of the trigger.
  final pulumi.Input<String?>? description;
  /// Minimum delay in minutes between executions.
  final pulumi.Input<int> minDelayMinutesBetweenExecutions;
  /// Target region for the trigger.
  final pulumi.Input<String> targetRegion;

  /// Creates a new [PlanTrigger].
  /// [action] Action to trigger. Valid values: `activate`, `deactivate`.
  /// [conditions] Conditions that must be met. See `conditions` Block for details.
  /// [description] Description of the trigger.
  /// [minDelayMinutesBetweenExecutions] Minimum delay in minutes between executions.
  /// [targetRegion] Target region for the trigger.
  const PlanTrigger({
    required this.action,
    this.conditions,
    this.description,
    required this.minDelayMinutesBetweenExecutions,
    required this.targetRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PlanTriggerCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PlanTriggerCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'minDelayMinutesBetweenExecutions': minDelayMinutesBetweenExecutions,
      'targetRegion': targetRegion,
    };
  }

  factory PlanTrigger.fromMap(Map<String, dynamic> map) {
    return PlanTrigger(
      action: pulumi.Input.fromValue(map['action'] as String),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanTriggerCondition>(guardedValue, (value) => PlanTriggerCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minDelayMinutesBetweenExecutions: pulumi.Input.fromValue((map['minDelayMinutesBetweenExecutions'] as num).toInt()),
      targetRegion: pulumi.Input.fromValue(map['targetRegion'] as String),
    );
  }
}
