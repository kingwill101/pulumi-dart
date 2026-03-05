// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger {
  /// The end time for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? endTime;
  /// The launch expiration time for this scaling rule specific time trigger. The value should between 0 and 3600.
  final pulumi.Input<int>? launchExpirationTime;
  /// The launch time for this scaling rule specific time trigger.
  final pulumi.Input<String> launchTime;
  /// The recurrence type for this scaling rule specific time trigger. Valid values: `MINUTELY`, `HOURLY`, `DAILY`, `WEEKLY`, `MONTHLY`.
  final pulumi.Input<String>? recurrenceType;
  /// The recurrence value for this scaling rule specific time trigger.
  final pulumi.Input<String>? recurrenceValue;
  /// The start time for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger].
  /// [endTime] The end time for this scaling rule specific metrics trigger.
  /// [launchExpirationTime] The launch expiration time for this scaling rule specific time trigger. The value should between 0 and 3600.
  /// [launchTime] The launch time for this scaling rule specific time trigger.
  /// [recurrenceType] The recurrence type for this scaling rule specific time trigger. Valid values: `MINUTELY`, `HOURLY`, `DAILY`, `WEEKLY`, `MONTHLY`.
  /// [recurrenceValue] The recurrence value for this scaling rule specific time trigger.
  /// [startTime] The start time for this scaling rule specific metrics trigger.
  ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger({
    this.endTime,
    this.launchExpirationTime,
    required this.launchTime,
    this.recurrenceType,
    this.recurrenceValue,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'launchExpirationTime': ?launchExpirationTime,
      'launchTime': launchTime,
      'recurrenceType': ?recurrenceType,
      'recurrenceValue': ?recurrenceValue,
      'startTime': ?startTime,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchExpirationTime: (() { final guardedValue = map['launchExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      launchTime: pulumi.Input.fromValue(map['launchTime'] as String),
      recurrenceType: (() { final guardedValue = map['recurrenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceValue: (() { final guardedValue = map['recurrenceValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

