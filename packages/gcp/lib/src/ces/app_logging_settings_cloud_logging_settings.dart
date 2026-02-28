// ignore_for_file: unused_element, unnecessary_cast


class AppLoggingSettingsCloudLoggingSettings {
  /// Whether to enable Cloud Logging for the sessions.
  final bool? enableCloudLogging;

  /// Creates a new [AppLoggingSettingsCloudLoggingSettings].
  /// [enableCloudLogging] Whether to enable Cloud Logging for the sessions.
  AppLoggingSettingsCloudLoggingSettings({
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCloudLogging': ?enableCloudLogging,
    };
  }

  factory AppLoggingSettingsCloudLoggingSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsCloudLoggingSettings(
      enableCloudLogging: map['enableCloudLogging'] == null ? null : map['enableCloudLogging'] as bool,
    );
  }
}

