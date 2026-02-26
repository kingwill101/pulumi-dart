// ignore_for_file: unused_element, unnecessary_cast

class ApplicationMonitoringConfigurationS3MonitoringConfiguration {
  /// The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
  final String? encryptionKeyArn;

  /// The Amazon S3 destination URI for log publishing.
  final String? logUri;

  ApplicationMonitoringConfigurationS3MonitoringConfiguration({
    this.encryptionKeyArn,
    this.logUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionKeyArnValue = encryptionKeyArn;
    if (encryptionKeyArnValue != null) {
      map['encryptionKeyArn'] = encryptionKeyArnValue;
    }
    final logUriValue = logUri;
    if (logUriValue != null) {
      map['logUri'] = logUriValue;
    }
    return map;
  }

  factory ApplicationMonitoringConfigurationS3MonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationS3MonitoringConfiguration(
      encryptionKeyArn: map['encryptionKeyArn'] == null
          ? null
          : map['encryptionKeyArn'] as String,
      logUri: map['logUri'] == null ? null : map['logUri'] as String,
    );
  }
}
