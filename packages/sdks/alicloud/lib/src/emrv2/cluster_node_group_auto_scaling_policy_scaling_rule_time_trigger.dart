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
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      launchExpirationTime: map['launchExpirationTime'] == null ? null : (map['launchExpirationTime']! as int).input(),
      launchTime: (map['launchTime'] as String).input(),
      recurrenceType: map['recurrenceType'] == null ? null : (map['recurrenceType']! as String).input(),
      recurrenceValue: map['recurrenceValue'] == null ? null : (map['recurrenceValue']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

