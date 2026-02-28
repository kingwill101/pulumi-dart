// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database_property_scheduled_operation_detail_start_time.dart';
import 'get_autonomous_databases_autonomous_database_property_scheduled_operation_detail_stop_time.dart';

class GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail {
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
  final List<
          GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime>
      startTimes;

  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final List<
          GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime>
      stopTimes;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail].
  /// [dayOfWeek] Possible values:
  /// [startTimes] Represents a time of day. The date and time zone are either not significant
  /// [stopTimes] Represents a time of day. The date and time zone are either not significant
  GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail({
    required this.dayOfWeek,
    required this.startTimes,
    required this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    map['startTimes'] = pulumi.Input.encodeList<
        GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime,
        Map<String, dynamic>>(startTimes, (value) => value.toMap());
    map['stopTimes'] = pulumi.Input.encodeList<
        GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime,
        Map<String, dynamic>>(stopTimes, (value) => value.toMap());
    return map;
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail(
      dayOfWeek: map['dayOfWeek'] as String,
      startTimes: pulumi.Input.decodeList<
              GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime>(
          map['startTimes'],
          (value) =>
              GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime
                  .fromMap((value as Map).cast<String, dynamic>())),
      stopTimes: pulumi.Input.decodeList<
              GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime>(
          map['stopTimes'],
          (value) =>
              GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
