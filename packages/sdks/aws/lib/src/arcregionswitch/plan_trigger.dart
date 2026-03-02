// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_trigger_condition.dart';

class PlanTrigger {
  /// Action to trigger. Valid values: `activate`, `deactivate`.
  final pulumi.Input<String> action;
  /// List of conditions that must be met. See Conditions below.
  final pulumi.Input<List<PlanTriggerCondition>>? conditions;
  /// Description of the trigger.
  final pulumi.Input<String>? description;
  /// Minimum delay in minutes between executions.
  final pulumi.Input<int> minDelayMinutesBetweenExecutions;
  /// Target region for the trigger.
  final pulumi.Input<String> targetRegion;

  /// Creates a new [PlanTrigger].
  /// [action] Action to trigger. Valid values: `activate`, `deactivate`.
  /// [conditions] List of conditions that must be met. See Conditions below.
  /// [description] Description of the trigger.
  /// [minDelayMinutesBetweenExecutions] Minimum delay in minutes between executions.
  /// [targetRegion] Target region for the trigger.
  PlanTrigger({
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
      action: (map['action'] as String).input(),
      conditions: map['conditions'] == null ? null : ((pulumi.Input.decodeList<PlanTriggerCondition>(map['conditions']!, (value) => PlanTriggerCondition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      minDelayMinutesBetweenExecutions: (map['minDelayMinutesBetweenExecutions'] as int).input(),
      targetRegion: (map['targetRegion'] as String).input(),
    );
  }
}

