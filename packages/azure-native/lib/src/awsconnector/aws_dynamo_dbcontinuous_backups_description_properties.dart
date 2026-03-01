// ignore_for_file: unused_element, unnecessary_cast

import 'continuous_backups_status_enum_value.dart';
import 'point_in_time_recovery_description.dart';

/// Definition of awsDynamoDBContinuousBackupsDescription
class AwsDynamoDBContinuousBackupsDescriptionProperties {
  /// <p> <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED, DISABLED</p>
  final ContinuousBackupsStatusEnumValue? continuousBackupsStatus;
  /// <p>The description of the point in time recovery settings applied to the table.</p>
  final PointInTimeRecoveryDescription? pointInTimeRecoveryDescription;

  /// Creates a new [AwsDynamoDBContinuousBackupsDescriptionProperties].
  /// [continuousBackupsStatus] <p> <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED, DISABLED</p>
  /// [pointInTimeRecoveryDescription] <p>The description of the point in time recovery settings applied to the table.</p>
  AwsDynamoDBContinuousBackupsDescriptionProperties({
    this.continuousBackupsStatus,
    this.pointInTimeRecoveryDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuousBackupsStatus': ?continuousBackupsStatus == null ? null : continuousBackupsStatus!.toMap(),
      'pointInTimeRecoveryDescription': ?pointInTimeRecoveryDescription == null ? null : pointInTimeRecoveryDescription!.toMap(),
    };
  }

  factory AwsDynamoDBContinuousBackupsDescriptionProperties.fromMap(Map<String, dynamic> map) {
    return AwsDynamoDBContinuousBackupsDescriptionProperties(
      continuousBackupsStatus: map['continuousBackupsStatus'] == null ? null : ContinuousBackupsStatusEnumValue.fromMap((map['continuousBackupsStatus'] as Map).cast<String, dynamic>()),
      pointInTimeRecoveryDescription: map['pointInTimeRecoveryDescription'] == null ? null : PointInTimeRecoveryDescription.fromMap((map['pointInTimeRecoveryDescription'] as Map).cast<String, dynamic>()),
    );
  }
}

