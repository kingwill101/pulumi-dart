// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_backups_status_enum_value_response.dart';
import 'point_in_time_recovery_description_response.dart';

/// Definition of awsDynamoDBContinuousBackupsDescription
class AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse {
  /// &lt;p&gt; &lt;code&gt;ContinuousBackupsStatus&lt;/code&gt; can be one of the following states: ENABLED, DISABLED&lt;/p&gt;
  final pulumi.Input<ContinuousBackupsStatusEnumValueResponse>? continuousBackupsStatus;
  /// &lt;p&gt;The description of the point in time recovery settings applied to the table.&lt;/p&gt;
  final pulumi.Input<PointInTimeRecoveryDescriptionResponse>? pointInTimeRecoveryDescription;

  /// Creates a new [AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse].
  /// [continuousBackupsStatus] &lt;p&gt; &lt;code&gt;ContinuousBackupsStatus&lt;/code&gt; can be one of the following states: ENABLED, DISABLED&lt;/p&gt;
  /// [pointInTimeRecoveryDescription] &lt;p&gt;The description of the point in time recovery settings applied to the table.&lt;/p&gt;
  AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse({
    this.continuousBackupsStatus,
    this.pointInTimeRecoveryDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuousBackupsStatus': ?pulumi.Input.mapOptionalInputValue<ContinuousBackupsStatusEnumValueResponse, Map<String, dynamic>>(continuousBackupsStatus, (value) => value.toMap()),
      'pointInTimeRecoveryDescription': ?pulumi.Input.mapOptionalInputValue<PointInTimeRecoveryDescriptionResponse, Map<String, dynamic>>(pointInTimeRecoveryDescription, (value) => value.toMap()),
    };
  }

  factory AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsDynamoDBContinuousBackupsDescriptionPropertiesResponse(
      continuousBackupsStatus: (() { final guardedValue = map['continuousBackupsStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousBackupsStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pointInTimeRecoveryDescription: (() { final guardedValue = map['pointInTimeRecoveryDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PointInTimeRecoveryDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

