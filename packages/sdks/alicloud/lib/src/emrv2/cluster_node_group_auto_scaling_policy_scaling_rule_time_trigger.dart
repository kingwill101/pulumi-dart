// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger {
  /// The end time for this scaling rule specific metrics trigger.
  final String? endTime;
  /// The launch expiration time for this scaling rule specific time trigger. The value should between 0 and 3600.
  final int? launchExpirationTime;
  /// The launch time for this scaling rule specific time trigger.
  final String launchTime;
  /// The recurrence type for this scaling rule specific time trigger. Valid values: `MINUTELY`, `HOURLY`, `DAILY`, `WEEKLY`, `MONTHLY`.
  final String? recurrenceType;
  /// The recurrence value for this scaling rule specific time trigger.
  final String? recurrenceValue;
  /// The start time for this scaling rule specific metrics trigger.
  final String? startTime;

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
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      launchExpirationTime: map['launchExpirationTime'] == null ? null : map['launchExpirationTime'] as int,
      launchTime: map['launchTime'] as String,
      recurrenceType: map['recurrenceType'] == null ? null : map['recurrenceType'] as String,
      recurrenceValue: map['recurrenceValue'] == null ? null : map['recurrenceValue'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

