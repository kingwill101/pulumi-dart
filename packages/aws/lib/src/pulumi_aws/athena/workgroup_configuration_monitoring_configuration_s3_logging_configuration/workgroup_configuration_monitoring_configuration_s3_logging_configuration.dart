// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration {
  /// Boolean whether Amazon S3 logging is enabled for the workgroup.
  final bool enabled;

  /// KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
  final String? kmsKey;

  /// Amazon S3 destination URI (`s3://bucket/prefix`) for log publishing.
  final String? logLocation;

  WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration({
    required this.enabled,
    this.kmsKey,
    this.logLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final logLocationValue = logLocation;
    if (logLocationValue != null) {
      map['logLocation'] = logLocationValue;
    }
    return map;
  }

  factory WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationS3LoggingConfiguration(
      enabled: map['enabled'] as bool,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      logLocation:
          map['logLocation'] == null ? null : map['logLocation'] as String,
    );
  }
}
