// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowTriggerConfigTriggerPropertiesScheduled {
  /// Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are `Incremental` and `Complete`.
  final pulumi.Input<String?>? dataPullMode;
  /// Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp.
  final pulumi.Input<String?>? firstExecutionFrom;
  /// Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  final pulumi.Input<String?>? scheduleEndTime;
  /// Scheduling expression that determines the rate at which the schedule runs, for example `rate(5minutes)`.
  final pulumi.Input<String> scheduleExpression;
  /// Offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000.
  final pulumi.Input<int?>? scheduleOffset;
  /// Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  final pulumi.Input<String?>? scheduleStartTime;
  /// Time zone used when referring to the date and time of a scheduled-triggered flow, such as `America/New_York`.
  final pulumi.Input<String?>? timezone;

  /// Creates a new [FlowTriggerConfigTriggerPropertiesScheduled].
  /// [dataPullMode] Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are `Incremental` and `Complete`.
  /// [firstExecutionFrom] Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp.
  /// [scheduleEndTime] Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  /// [scheduleExpression] Scheduling expression that determines the rate at which the schedule runs, for example `rate(5minutes)`.
  /// [scheduleOffset] Offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000.
  /// [scheduleStartTime] Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  /// [timezone] Time zone used when referring to the date and time of a scheduled-triggered flow, such as `America/New_York`.
  const FlowTriggerConfigTriggerPropertiesScheduled({
    this.dataPullMode,
    this.firstExecutionFrom,
    this.scheduleEndTime,
    required this.scheduleExpression,
    this.scheduleOffset,
    this.scheduleStartTime,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPullMode': ?dataPullMode,
      'firstExecutionFrom': ?firstExecutionFrom,
      'scheduleEndTime': ?scheduleEndTime,
      'scheduleExpression': scheduleExpression,
      'scheduleOffset': ?scheduleOffset,
      'scheduleStartTime': ?scheduleStartTime,
      'timezone': ?timezone,
    };
  }

  factory FlowTriggerConfigTriggerPropertiesScheduled.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfigTriggerPropertiesScheduled(
      dataPullMode: (() { final guardedValue = map['dataPullMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstExecutionFrom: (() { final guardedValue = map['firstExecutionFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleEndTime: (() { final guardedValue = map['scheduleEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
      scheduleOffset: (() { final guardedValue = map['scheduleOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scheduleStartTime: (() { final guardedValue = map['scheduleStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
