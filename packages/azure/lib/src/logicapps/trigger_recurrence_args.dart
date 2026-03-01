// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_recurrence_schedule.dart';

/// {@template pulumi_logicapps_trigger_recurrence_trigger_recurrence_args_doc}
/// The set of arguments for TriggerRecurrence.
/// {@endtemplate}
/// {@macro pulumi_logicapps_trigger_recurrence_trigger_recurrence_args_doc}
class TriggerRecurrenceArgs {
  /// Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`.
  final pulumi.Input<String> frequency;
  /// Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours.
  final pulumi.Input<int> interval;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String> logicAppId;
  /// Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  final pulumi.Input<String>? name;
  /// A `schedule` block as specified below.
  final pulumi.Input<TriggerRecurrenceSchedule>? schedule;
  /// Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`.
  final pulumi.Input<String>? startTime;
  /// Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values)
  final pulumi.Input<String>? timeZone;

  /// Creates a new [TriggerRecurrenceArgs].
  /// [frequency] Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`.
  /// [interval] Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as specified below.
  /// [startTime] Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`.
  /// [timeZone] Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values)
  TriggerRecurrenceArgs({
    required String frequency,
    required int interval,
    required String logicAppId,
    String? name,
    TriggerRecurrenceSchedule? schedule,
    String? startTime,
    String? timeZone,
  }) :
      frequency = pulumi.Input.asInput<String>(frequency),
      interval = pulumi.Input.asInput<int>(interval),
      logicAppId = pulumi.Input.asInput<String>(logicAppId),
      name = pulumi.Input.asOptionalInput<String>(name),
      schedule = pulumi.Input.asOptionalInput<TriggerRecurrenceSchedule>(schedule),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'interval': interval,
      'logicAppId': logicAppId,
      'name': ?name,
      'schedule': ?pulumi.Input.mapOptionalInputValue<TriggerRecurrenceSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory TriggerRecurrenceArgs.fromMap(Map<String, dynamic> map) {
    return TriggerRecurrenceArgs(
      frequency: map['frequency'] as String,
      interval: map['interval'] as int,
      logicAppId: map['logicAppId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      schedule: map['schedule'] == null ? null : TriggerRecurrenceSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

