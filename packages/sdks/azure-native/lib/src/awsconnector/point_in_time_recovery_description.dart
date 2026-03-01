// ignore_for_file: unused_element, unnecessary_cast

import 'point_in_time_recovery_status_enum_value.dart';

/// Definition of PointInTimeRecoveryDescription
class PointInTimeRecoveryDescription {
  /// <p>Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days. </p>
  final String? earliestRestorableDateTime;
  /// <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. </p>
  final String? latestRestorableDateTime;
  /// <p>The current state of point in time recovery:</p> <ul> <li> <p> <code>ENABLED</code> - Point in time recovery is enabled.</p> </li> <li> <p> <code>DISABLED</code> - Point in time recovery is disabled.</p> </li> </ul>
  final PointInTimeRecoveryStatusEnumValue? pointInTimeRecoveryStatus;

  /// Creates a new [PointInTimeRecoveryDescription].
  /// [earliestRestorableDateTime] <p>Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days. </p>
  /// [latestRestorableDateTime] <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. </p>
  /// [pointInTimeRecoveryStatus] <p>The current state of point in time recovery:</p> <ul> <li> <p> <code>ENABLED</code> - Point in time recovery is enabled.</p> </li> <li> <p> <code>DISABLED</code> - Point in time recovery is disabled.</p> </li> </ul>
  PointInTimeRecoveryDescription({
    this.earliestRestorableDateTime,
    this.latestRestorableDateTime,
    this.pointInTimeRecoveryStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableDateTime': ?earliestRestorableDateTime,
      'latestRestorableDateTime': ?latestRestorableDateTime,
      'pointInTimeRecoveryStatus': ?pointInTimeRecoveryStatus == null ? null : pointInTimeRecoveryStatus!.toMap(),
    };
  }

  factory PointInTimeRecoveryDescription.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryDescription(
      earliestRestorableDateTime: map['earliestRestorableDateTime'] == null ? null : map['earliestRestorableDateTime'] as String,
      latestRestorableDateTime: map['latestRestorableDateTime'] == null ? null : map['latestRestorableDateTime'] as String,
      pointInTimeRecoveryStatus: map['pointInTimeRecoveryStatus'] == null ? null : PointInTimeRecoveryStatusEnumValue.fromMap((map['pointInTimeRecoveryStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

