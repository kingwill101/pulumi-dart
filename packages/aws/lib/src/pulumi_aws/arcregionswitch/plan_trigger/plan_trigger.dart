// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_trigger_condition/plan_trigger_condition.dart';

class PlanTrigger {
  /// Action to trigger. Valid values: <span pulumi-lang-nodejs="`activate`" pulumi-lang-dotnet="`Activate`" pulumi-lang-go="`activate`" pulumi-lang-python="`activate`" pulumi-lang-yaml="`activate`" pulumi-lang-java="`activate`">`activate`</span>, <span pulumi-lang-nodejs="`deactivate`" pulumi-lang-dotnet="`Deactivate`" pulumi-lang-go="`deactivate`" pulumi-lang-python="`deactivate`" pulumi-lang-yaml="`deactivate`" pulumi-lang-java="`deactivate`">`deactivate`</span>.
  final String action;

  /// List of conditions that must be met. See Conditions below.
  final List<PlanTriggerCondition>? conditions;

  /// Description of the trigger.
  final String? description;

  /// Minimum delay in minutes between executions.
  final int minDelayMinutesBetweenExecutions;

  /// Target region for the trigger.
  final String targetRegion;

  PlanTrigger({
    required this.action,
    this.conditions,
    this.description,
    required this.minDelayMinutesBetweenExecutions,
    required this.targetRegion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] =
          Input.encodeList<PlanTriggerCondition, Map<String, dynamic>>(
              conditionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['minDelayMinutesBetweenExecutions'] = minDelayMinutesBetweenExecutions;
    map['targetRegion'] = targetRegion;
    return map;
  }

  factory PlanTrigger.fromMap(Map<String, dynamic> map) {
    return PlanTrigger(
      action: map['action'] as String,
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<PlanTriggerCondition>(
              map['conditions'],
              (value) => PlanTriggerCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      minDelayMinutesBetweenExecutions:
          map['minDelayMinutesBetweenExecutions'] as int,
      targetRegion: map['targetRegion'] as String,
    );
  }
}
