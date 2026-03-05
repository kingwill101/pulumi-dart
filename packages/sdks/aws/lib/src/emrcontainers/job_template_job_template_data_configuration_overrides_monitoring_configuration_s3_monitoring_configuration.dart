// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration {
  /// Amazon S3 destination URI for log publishing.
  final pulumi.Input<String> logUri;

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
      logUri: pulumi.Input.fromValue(map['logUri'] as String),
    );
  }
}

