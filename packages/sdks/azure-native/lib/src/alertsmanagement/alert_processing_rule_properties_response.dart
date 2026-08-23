// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_action_groups_response.dart';
import 'condition_alert_processing_rule_by_name_response.dart';
import 'schedule_response.dart';

/// Alert processing rule properties defining scopes, conditions and scheduling logic for alert processing rule.
class AlertProcessingRulePropertiesResponse {
  /// Actions to be applied.
  final pulumi.Input<List<AddActionGroupsResponse>> actions;
  /// Conditions on which alerts will be filtered.
  final pulumi.Input<List<ConditionAlertProcessingRuleByNameResponse>>? conditions;
  /// Actions to be applied.Description of alert processing rule.
  final pulumi.Input<String>? description;
  /// Indicates if the given alert processing rule is enabled or disabled.
  final pulumi.Input<bool>? enabled;
  /// Scheduling for alert processing rule.
  final pulumi.Input<ScheduleResponse>? schedule;
  /// Scopes on which alert processing rule will apply.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [AlertProcessingRulePropertiesResponse].
  /// [actions] Actions to be applied.
  /// [conditions] Conditions on which alerts will be filtered.
  /// [description] Actions to be applied.Description of alert processing rule.
  /// [enabled] Indicates if the given alert processing rule is enabled or disabled.
  /// [schedule] Scheduling for alert processing rule.
  /// [scopes] Scopes on which alert processing rule will apply.
  const AlertProcessingRulePropertiesResponse({
    required this.actions,
    this.conditions,
    this.description,
    this.enabled,
    this.schedule,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<AddActionGroupsResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AddActionGroupsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionAlertProcessingRuleByNameResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionAlertProcessingRuleByNameResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enabled': ?enabled,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scopes': scopes,
    };
  }

  factory AlertProcessingRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRulePropertiesResponse(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<AddActionGroupsResponse>(map['actions']!, (value) => AddActionGroupsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionAlertProcessingRuleByNameResponse>(guardedValue, (value) => ConditionAlertProcessingRuleByNameResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
