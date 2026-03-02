// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_in_time_recovery_status_enum_value_response.dart';

/// Definition of PointInTimeRecoveryDescription
class PointInTimeRecoveryDescriptionResponse {
  /// <p>Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days. </p>
  final pulumi.Input<String>? earliestRestorableDateTime;
  /// <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. </p>
  final pulumi.Input<String>? latestRestorableDateTime;
  /// <p>The current state of point in time recovery:</p> <ul> <li> <p> <code>ENABLED</code> - Point in time recovery is enabled.</p> </li> <li> <p> <code>DISABLED</code> - Point in time recovery is disabled.</p> </li> </ul>
  final pulumi.Input<PointInTimeRecoveryStatusEnumValueResponse>? pointInTimeRecoveryStatus;

  /// Creates a new [PointInTimeRecoveryDescriptionResponse].
  /// [earliestRestorableDateTime] <p>Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days. </p>
  /// [latestRestorableDateTime] <p> <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time. </p>
  /// [pointInTimeRecoveryStatus] <p>The current state of point in time recovery:</p> <ul> <li> <p> <code>ENABLED</code> - Point in time recovery is enabled.</p> </li> <li> <p> <code>DISABLED</code> - Point in time recovery is disabled.</p> </li> </ul>
  PointInTimeRecoveryDescriptionResponse({
    this.earliestRestorableDateTime,
    this.latestRestorableDateTime,
    this.pointInTimeRecoveryStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableDateTime': ?earliestRestorableDateTime,
      'latestRestorableDateTime': ?latestRestorableDateTime,
      'pointInTimeRecoveryStatus': ?pulumi.Input.mapOptionalInputValue<PointInTimeRecoveryStatusEnumValueResponse, Map<String, dynamic>>(pointInTimeRecoveryStatus, (value) => value.toMap()),
    };
  }

  factory PointInTimeRecoveryDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryDescriptionResponse(
      earliestRestorableDateTime: map['earliestRestorableDateTime'] == null ? null : (map['earliestRestorableDateTime']! as String).input(),
      latestRestorableDateTime: map['latestRestorableDateTime'] == null ? null : (map['latestRestorableDateTime']! as String).input(),
      pointInTimeRecoveryStatus: map['pointInTimeRecoveryStatus'] == null ? null : (PointInTimeRecoveryStatusEnumValueResponse.fromMap((map['pointInTimeRecoveryStatus']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

