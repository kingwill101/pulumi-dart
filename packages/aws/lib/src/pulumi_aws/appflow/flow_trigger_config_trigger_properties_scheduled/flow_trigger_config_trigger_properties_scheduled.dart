// ignore_for_file: unused_element, unnecessary_cast

class FlowTriggerConfigTriggerPropertiesScheduled {
  /// Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are `Incremental` and `Complete`.
  final String? dataPullMode;

  /// Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp.
  final String? firstExecutionFrom;

  /// Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  final String? scheduleEndTime;

  /// Scheduling expression that determines the rate at which the schedule will run, for example `rate(5minutes)`.
  final String scheduleExpression;

  /// Optional offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000.
  final int? scheduleOffset;

  /// Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  final String? scheduleStartTime;

  /// Time zone used when referring to the date and time of a scheduled-triggered flow, such as `America/New_York`.
  final String? timezone;

  FlowTriggerConfigTriggerPropertiesScheduled({
    this.dataPullMode,
    this.firstExecutionFrom,
    this.scheduleEndTime,
    required this.scheduleExpression,
    this.scheduleOffset,
    this.scheduleStartTime,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataPullModeValue = dataPullMode;
    if (dataPullModeValue != null) {
      map['dataPullMode'] = dataPullModeValue;
    }
    final firstExecutionFromValue = firstExecutionFrom;
    if (firstExecutionFromValue != null) {
      map['firstExecutionFrom'] = firstExecutionFromValue;
    }
    final scheduleEndTimeValue = scheduleEndTime;
    if (scheduleEndTimeValue != null) {
      map['scheduleEndTime'] = scheduleEndTimeValue;
    }
    map['scheduleExpression'] = scheduleExpression;
    final scheduleOffsetValue = scheduleOffset;
    if (scheduleOffsetValue != null) {
      map['scheduleOffset'] = scheduleOffsetValue;
    }
    final scheduleStartTimeValue = scheduleStartTime;
    if (scheduleStartTimeValue != null) {
      map['scheduleStartTime'] = scheduleStartTimeValue;
    }
    final timezoneValue = timezone;
    if (timezoneValue != null) {
      map['timezone'] = timezoneValue;
    }
    return map;
  }

  factory FlowTriggerConfigTriggerPropertiesScheduled.fromMap(
      Map<String, dynamic> map) {
    return FlowTriggerConfigTriggerPropertiesScheduled(
      dataPullMode:
          map['dataPullMode'] == null ? null : map['dataPullMode'] as String,
      firstExecutionFrom: map['firstExecutionFrom'] == null
          ? null
          : map['firstExecutionFrom'] as String,
      scheduleEndTime: map['scheduleEndTime'] == null
          ? null
          : map['scheduleEndTime'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
      scheduleOffset:
          map['scheduleOffset'] == null ? null : map['scheduleOffset'] as int,
      scheduleStartTime: map['scheduleStartTime'] == null
          ? null
          : map['scheduleStartTime'] as String,
      timezone: map['timezone'] == null ? null : map['timezone'] as String,
    );
  }
}
