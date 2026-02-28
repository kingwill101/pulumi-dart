// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration {
  /// The name of the log group for log publishing.
  final String logGroupName;

  /// The specified name prefix for log streams.
  final String? logStreamNamePrefix;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration].
  /// [logGroupName] The name of the log group for log publishing.
  /// [logStreamNamePrefix] The specified name prefix for log streams.
  JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration({
    required this.logGroupName,
    this.logStreamNamePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupName'] = logGroupName;
    final logStreamNamePrefixValue = logStreamNamePrefix;
    if (logStreamNamePrefixValue != null) {
      map['logStreamNamePrefix'] = logStreamNamePrefixValue;
    }
    return map;
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration(
      logGroupName: map['logGroupName'] as String,
      logStreamNamePrefix: map['logStreamNamePrefix'] == null
          ? null
          : map['logStreamNamePrefix'] as String,
    );
  }
}
