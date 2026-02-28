// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties_scheduled_operation_detail_start_time.dart';
import 'autonomous_database_properties_scheduled_operation_detail_stop_time.dart';

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
  final List<AutonomousDatabasePropertiesScheduledOperationDetailStartTime>? startTimes;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final List<AutonomousDatabasePropertiesScheduledOperationDetailStopTime>? stopTimes;

  /// Creates a new [AutonomousDatabasePropertiesScheduledOperationDetail].
  /// [dayOfWeek] Possible values:
  /// [startTimes] Represents a time of day. The date and time zone are either not significant
  /// [stopTimes] Represents a time of day. The date and time zone are either not significant
  AutonomousDatabasePropertiesScheduledOperationDetail({
    this.dayOfWeek,
    this.startTimes,
    this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'startTimes': ?startTimes == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesScheduledOperationDetailStartTime, Map<String, dynamic>>(startTimes!, (value) => value.toMap()),
      'stopTimes': ?stopTimes == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesScheduledOperationDetailStopTime, Map<String, dynamic>>(stopTimes!, (value) => value.toMap()),
    };
  }

  factory AutonomousDatabasePropertiesScheduledOperationDetail.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesScheduledOperationDetail(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      startTimes: map['startTimes'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesScheduledOperationDetailStartTime>(map['startTimes'], (value) => AutonomousDatabasePropertiesScheduledOperationDetailStartTime.fromMap((value as Map).cast<String, dynamic>())),
      stopTimes: map['stopTimes'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesScheduledOperationDetailStopTime>(map['stopTimes'], (value) => AutonomousDatabasePropertiesScheduledOperationDetailStopTime.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

