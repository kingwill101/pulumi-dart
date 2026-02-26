// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../autonomous_database_properties_scheduled_operation_detail_start_time/autonomous_database_properties_scheduled_operation_detail_start_time.dart';
import '../autonomous_database_properties_scheduled_operation_detail_stop_time/autonomous_database_properties_scheduled_operation_detail_stop_time.dart';

class AutonomousDatabasePropertiesScheduledOperationDetail {
  /// Possible values:
  /// DAY_OF_WEEK_UNSPECIFIED
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final String? dayOfWeek;

  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final List<AutonomousDatabasePropertiesScheduledOperationDetailStartTime>?
      startTimes;

  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final List<AutonomousDatabasePropertiesScheduledOperationDetailStopTime>?
      stopTimes;

  AutonomousDatabasePropertiesScheduledOperationDetail({
    this.dayOfWeek,
    this.startTimes,
    this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayOfWeekValue = dayOfWeek;
    if (dayOfWeekValue != null) {
      map['dayOfWeek'] = dayOfWeekValue;
    }
    final startTimesValue = startTimes;
    if (startTimesValue != null) {
      map['startTimes'] = Input.encodeList<
          AutonomousDatabasePropertiesScheduledOperationDetailStartTime,
          Map<String, dynamic>>(startTimesValue, (value) => value.toMap());
    }
    final stopTimesValue = stopTimes;
    if (stopTimesValue != null) {
      map['stopTimes'] = Input.encodeList<
          AutonomousDatabasePropertiesScheduledOperationDetailStopTime,
          Map<String, dynamic>>(stopTimesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AutonomousDatabasePropertiesScheduledOperationDetail.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesScheduledOperationDetail(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      startTimes: map['startTimes'] == null
          ? null
          : Input.decodeList<
                  AutonomousDatabasePropertiesScheduledOperationDetailStartTime>(
              map['startTimes'],
              (value) =>
                  AutonomousDatabasePropertiesScheduledOperationDetailStartTime
                      .fromMap((value as Map).cast<String, dynamic>())),
      stopTimes: map['stopTimes'] == null
          ? null
          : Input.decodeList<
                  AutonomousDatabasePropertiesScheduledOperationDetailStopTime>(
              map['stopTimes'],
              (value) =>
                  AutonomousDatabasePropertiesScheduledOperationDetailStopTime
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
