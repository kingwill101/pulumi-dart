// ignore_for_file: unused_element, unnecessary_cast

class GetTopicIngestionDataSourceSettingPlatformLogsSetting {
  /// The minimum severity level of Platform Logs that will be written. If unspecified,
  /// no Platform Logs will be written. Default value: "SEVERITY_UNSPECIFIED" Possible values: ["SEVERITY_UNSPECIFIED", "DISABLED", "DEBUG", "INFO", "WARNING", "ERROR"]
  final String severity;

  /// Creates a new [GetTopicIngestionDataSourceSettingPlatformLogsSetting].
  /// [severity] The minimum severity level of Platform Logs that will be written. If unspecified,
  GetTopicIngestionDataSourceSettingPlatformLogsSetting({
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['severity'] = severity;
    return map;
  }

  factory GetTopicIngestionDataSourceSettingPlatformLogsSetting.fromMap(
      Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingPlatformLogsSetting(
      severity: map['severity'] as String,
    );
  }
}
