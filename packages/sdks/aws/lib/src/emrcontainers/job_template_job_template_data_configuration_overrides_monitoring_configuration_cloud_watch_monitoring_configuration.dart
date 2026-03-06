// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration {
  /// The name of the log group for log publishing.
  final pulumi.Input<String> logGroupName;
  /// The specified name prefix for log streams.
  final pulumi.Input<String>? logStreamNamePrefix;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration].
  /// [logGroupName] The name of the log group for log publishing.
  /// [logStreamNamePrefix] The specified name prefix for log streams.
  const JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration({
    required this.logGroupName,
    this.logStreamNamePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
      'logStreamNamePrefix': ?logStreamNamePrefix,
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration(
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
      logStreamNamePrefix: (() { final guardedValue = map['logStreamNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

