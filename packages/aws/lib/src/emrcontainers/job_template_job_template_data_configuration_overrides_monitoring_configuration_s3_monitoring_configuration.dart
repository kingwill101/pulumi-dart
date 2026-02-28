// ignore_for_file: unused_element, unnecessary_cast


class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration {
  /// Amazon S3 destination URI for log publishing.
  final String logUri;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration].
  /// [logUri] Amazon S3 destination URI for log publishing.
  JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration({
    required this.logUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logUri': logUri,
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration(
      logUri: map['logUri'] as String,
    );
  }
}

