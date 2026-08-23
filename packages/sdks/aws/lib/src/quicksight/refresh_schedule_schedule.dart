// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'refresh_schedule_schedule_schedule_frequency.dart';

class RefreshScheduleSchedule {
  /// The type of refresh that the dataset undergoes. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  final pulumi.Input<String> refreshType;
  /// The configuration of the [schedule frequency](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshFrequency.html). See schedule_frequency.
  final pulumi.Input<RefreshScheduleScheduleScheduleFrequency> scheduleFrequency;
  /// Time after which the refresh schedule can be started, expressed in `YYYY-MM-DDTHH:MM:SS` format.
  final pulumi.Input<String>? startAfterDateTime;

  /// Creates a new [RefreshScheduleSchedule].
  /// [refreshType] The type of refresh that the dataset undergoes. Valid values are `INCREMENTAL_REFRESH` and `FULL_REFRESH`.
  /// [scheduleFrequency] The configuration of the [schedule frequency](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RefreshFrequency.html). See schedule_frequency.
  /// [startAfterDateTime] Time after which the refresh schedule can be started, expressed in `YYYY-MM-DDTHH:MM:SS` format.
  const RefreshScheduleSchedule({
    required this.refreshType,
    required this.scheduleFrequency,
    this.startAfterDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshType': refreshType,
      'scheduleFrequency': pulumi.Input.mapInputValue<RefreshScheduleScheduleScheduleFrequency, Map<String, dynamic>>(scheduleFrequency, (value) => value.toMap()),
      'startAfterDateTime': ?startAfterDateTime,
    };
  }

  factory RefreshScheduleSchedule.fromMap(Map<String, dynamic> map) {
    return RefreshScheduleSchedule(
      refreshType: pulumi.Input.fromValue(map['refreshType'] as String),
      scheduleFrequency: pulumi.Input.fromValue(RefreshScheduleScheduleScheduleFrequency.fromMap((map['scheduleFrequency']! as Map).cast<String, dynamic>())),
      startAfterDateTime: (() { final guardedValue = map['startAfterDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
