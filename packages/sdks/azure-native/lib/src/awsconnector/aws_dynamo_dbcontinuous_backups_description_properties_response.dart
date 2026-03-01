// ignore_for_file: unused_element, unnecessary_cast

import 'continuous_backups_status_enum_value_response.dart';
import 'point_in_time_recovery_description_response.dart';

/// Definition of awsDynamoDBContinuousBackupsDescription
class AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse {
  /// <p> <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED, DISABLED</p>
  final ContinuousBackupsStatusEnumValueResponse? continuousBackupsStatus;
  /// <p>The description of the point in time recovery settings applied to the table.</p>
  final PointInTimeRecoveryDescriptionResponse? pointInTimeRecoveryDescription;

  /// Creates a new [AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse].
  /// [continuousBackupsStatus] <p> <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED, DISABLED</p>
  /// [pointInTimeRecoveryDescription] <p>The description of the point in time recovery settings applied to the table.</p>
  AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse({
    this.continuousBackupsStatus,
    this.pointInTimeRecoveryDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuousBackupsStatus': ?continuousBackupsStatus == null ? null : continuousBackupsStatus!.toMap(),
      'pointInTimeRecoveryDescription': ?pointInTimeRecoveryDescription == null ? null : pointInTimeRecoveryDescription!.toMap(),
    };
  }

  factory AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse(
      continuousBackupsStatus: map['continuousBackupsStatus'] == null ? null : ContinuousBackupsStatusEnumValueResponse.fromMap((map['continuousBackupsStatus'] as Map).cast<String, dynamic>()),
      pointInTimeRecoveryDescription: map['pointInTimeRecoveryDescription'] == null ? null : PointInTimeRecoveryDescriptionResponse.fromMap((map['pointInTimeRecoveryDescription'] as Map).cast<String, dynamic>()),
    );
  }
}

