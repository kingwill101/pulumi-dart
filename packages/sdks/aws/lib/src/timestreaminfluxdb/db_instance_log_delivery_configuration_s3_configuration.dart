// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstanceLogDeliveryConfigurationS3Configuration {
  /// Name of the S3 bucket to deliver logs to.
  final pulumi.Input<String> bucketName;
  /// Indicates whether log delivery to the S3 bucket is enabled.
  ///
  /// **Note**: The following arguments do updates in-place: `dbParameterGroupIdentifier`, `logDeliveryConfiguration`, `maintenanceSchedule`, `port`, `deploymentType`, `dbInstanceType`, and `tags`. Changes to any other argument after a DB instance has been deployed will cause destruction and re-creation of the DB instance. Additionally, when `dbParameterGroupIdentifier` is added to a DB instance or modified, the DB instance will be updated in-place but if `dbParameterGroupIdentifier` is removed from a DB instance, the DB instance will be destroyed and re-created.
  final pulumi.Input<bool> enabled;

  /// Creates a new [DbInstanceLogDeliveryConfigurationS3Configuration].
  /// [bucketName] Name of the S3 bucket to deliver logs to.
  /// [enabled] Indicates whether log delivery to the S3 bucket is enabled.
  const DbInstanceLogDeliveryConfigurationS3Configuration({
    required this.bucketName,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'enabled': enabled,
    };
  }

  factory DbInstanceLogDeliveryConfigurationS3Configuration.fromMap(Map<String, dynamic> map) {
    return DbInstanceLogDeliveryConfigurationS3Configuration(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
