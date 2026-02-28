// ignore_for_file: unused_element, unnecessary_cast


class DbInstanceLogDeliveryConfigurationS3Configuration {
  /// Name of the S3 bucket to deliver logs to.
  final String bucketName;
  /// Indicates whether log delivery to the S3 bucket is enabled.
  ///
  /// **Note**: The following arguments do updates in-place: `db_parameter_group_identifier`, `log_delivery_configuration`, `port`, `deployment_type`, `db_instance_type`, and `tags`. Changes to any other argument after a DB instance has been deployed will cause destruction and re-creation of the DB instance. Additionally, when `db_parameter_group_identifier` is added to a DB instance or modified, the DB instance will be updated in-place but if `db_parameter_group_identifier` is removed from a DB instance, the DB instance will be destroyed and re-created.
  final bool enabled;

  /// Creates a new [DbInstanceLogDeliveryConfigurationS3Configuration].
  /// [bucketName] Name of the S3 bucket to deliver logs to.
  /// [enabled] Indicates whether log delivery to the S3 bucket is enabled.
  DbInstanceLogDeliveryConfigurationS3Configuration({
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
      bucketName: map['bucketName'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}

