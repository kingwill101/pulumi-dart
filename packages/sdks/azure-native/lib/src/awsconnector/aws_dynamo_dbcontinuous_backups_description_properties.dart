// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'continuous_backups_status_enum_value.dart';
import 'point_in_time_recovery_description.dart';

/// Definition of awsDynamoDBContinuousBackupsDescription
class AwsDynamoDBContinuousBackupsDescriptionProperties {
  /// &lt;p&gt; &lt;code&gt;ContinuousBackupsStatus&lt;/code&gt; can be one of the following states: ENABLED, DISABLED&lt;/p&gt;
  final pulumi.Input<ContinuousBackupsStatusEnumValue>? continuousBackupsStatus;
  /// &lt;p&gt;The description of the point in time recovery settings applied to the table.&lt;/p&gt;
  final pulumi.Input<PointInTimeRecoveryDescription>? pointInTimeRecoveryDescription;

  /// Creates a new [AwsDynamoDBContinuousBackupsDescriptionProperties].
  /// [continuousBackupsStatus] &lt;p&gt; &lt;code&gt;ContinuousBackupsStatus&lt;/code&gt; can be one of the following states: ENABLED, DISABLED&lt;/p&gt;
  /// [pointInTimeRecoveryDescription] &lt;p&gt;The description of the point in time recovery settings applied to the table.&lt;/p&gt;
  const AwsDynamoDBContinuousBackupsDescriptionProperties({
    this.continuousBackupsStatus,
    this.pointInTimeRecoveryDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuousBackupsStatus': ?pulumi.Input.mapOptionalInputValue<ContinuousBackupsStatusEnumValue, Map<String, dynamic>>(continuousBackupsStatus, (value) => value.toMap()),
      'pointInTimeRecoveryDescription': ?pulumi.Input.mapOptionalInputValue<PointInTimeRecoveryDescription, Map<String, dynamic>>(pointInTimeRecoveryDescription, (value) => value.toMap()),
    };
  }

  factory AwsDynamoDBContinuousBackupsDescriptionProperties.fromMap(Map<String, dynamic> map) {
    return AwsDynamoDBContinuousBackupsDescriptionProperties(
      continuousBackupsStatus: (() { final guardedValue = map['continuousBackupsStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousBackupsStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pointInTimeRecoveryDescription: (() { final guardedValue = map['pointInTimeRecoveryDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PointInTimeRecoveryDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
