// ignore_for_file: unused_element, unnecessary_cast

class TopicIngestionDataSourceSettingsPlatformLogsSettings {
  /// The minimum severity level of Platform Logs that will be written. If unspecified,
  /// no Platform Logs will be written.
  /// Default value is `SEVERITY_UNSPECIFIED`.
  /// Possible values are: `SEVERITY_UNSPECIFIED`, `DISABLED`, `DEBUG`, `INFO`, `WARNING`, `ERROR`.
  final String? severity;

  /// Creates a new [TopicIngestionDataSourceSettingsPlatformLogsSettings].
  /// [severity] The minimum severity level of Platform Logs that will be written. If unspecified,
  TopicIngestionDataSourceSettingsPlatformLogsSettings({
    this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final severityValue = severity;
    if (severityValue != null) {
      map['severity'] = severityValue;
    }
    return map;
  }

  factory TopicIngestionDataSourceSettingsPlatformLogsSettings.fromMap(
      Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsPlatformLogsSettings(
      severity: map['severity'] == null ? null : map['severity'] as String,
    );
  }
}
