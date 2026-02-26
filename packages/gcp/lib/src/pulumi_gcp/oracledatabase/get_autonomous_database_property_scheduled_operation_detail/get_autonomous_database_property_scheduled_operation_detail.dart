// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_autonomous_database_property_scheduled_operation_detail_start_time/get_autonomous_database_property_scheduled_operation_detail_start_time.dart';
import '../get_autonomous_database_property_scheduled_operation_detail_stop_time/get_autonomous_database_property_scheduled_operation_detail_stop_time.dart';

class GetAutonomousDatabasePropertyScheduledOperationDetail {
  /// Possible values:
  /// DAY_OF_WEEK_UNSPECIFIED
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final String dayOfWeek;

  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final List<GetAutonomousDatabasePropertyScheduledOperationDetailStartTime>
      startTimes;

  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final List<GetAutonomousDatabasePropertyScheduledOperationDetailStopTime>
      stopTimes;

  GetAutonomousDatabasePropertyScheduledOperationDetail({
    required this.dayOfWeek,
    required this.startTimes,
    required this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['startTimes'] = Input.encodeList<
        GetAutonomousDatabasePropertyScheduledOperationDetailStartTime,
        Map<String, dynamic>>(startTimes, (value) => value.toMap());
    map['stopTimes'] = Input.encodeList<
        GetAutonomousDatabasePropertyScheduledOperationDetailStopTime,
        Map<String, dynamic>>(stopTimes, (value) => value.toMap());
    return map;
  }

  factory GetAutonomousDatabasePropertyScheduledOperationDetail.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyScheduledOperationDetail(
      dayOfWeek: map['dayOfWeek'] as String,
      startTimes: Input.decodeList<
              GetAutonomousDatabasePropertyScheduledOperationDetailStartTime>(
          map['startTimes'],
          (value) =>
              GetAutonomousDatabasePropertyScheduledOperationDetailStartTime
                  .fromMap((value as Map).cast<String, dynamic>())),
      stopTimes: Input.decodeList<
              GetAutonomousDatabasePropertyScheduledOperationDetailStopTime>(
          map['stopTimes'],
          (value) =>
              GetAutonomousDatabasePropertyScheduledOperationDetailStopTime
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
