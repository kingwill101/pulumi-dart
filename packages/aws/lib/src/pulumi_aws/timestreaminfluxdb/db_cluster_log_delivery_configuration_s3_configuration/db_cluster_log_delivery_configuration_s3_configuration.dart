// ignore_for_file: unused_element, unnecessary_cast

class DbClusterLogDeliveryConfigurationS3Configuration {
  /// Name of the S3 bucket to deliver logs to.
  final String bucketName;

  /// Indicates whether log delivery to the S3 bucket is enabled.
  ///
  /// **Note**: The following arguments do updates in-place: `db_parameter_group_identifier`, `log_delivery_configuration`, `port`, `db_instance_type`, `failover_mode`, and `tags`. Changes to any other argument after a cluster has been deployed will cause destruction and re-creation of the cluster. Additionally, when `db_parameter_group_identifier` is added to a cluster or modified, the cluster will be updated in-place but if `db_parameter_group_identifier` is removed from a cluster, the cluster will be destroyed and re-created.
  final bool enabled;

  DbClusterLogDeliveryConfigurationS3Configuration({
    required this.bucketName,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['enabled'] = enabled;
    return map;
  }

  factory DbClusterLogDeliveryConfigurationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return DbClusterLogDeliveryConfigurationS3Configuration(
      bucketName: map['bucketName'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
