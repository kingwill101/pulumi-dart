// ignore_for_file: unused_element, unnecessary_cast

class AppLoggingSettingsCloudLoggingSettings {
  /// Whether to enable Cloud Logging for the sessions.
  final bool? enableCloudLogging;

  AppLoggingSettingsCloudLoggingSettings({
    this.enableCloudLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableCloudLoggingValue = enableCloudLogging;
    if (enableCloudLoggingValue != null) {
      map['enableCloudLogging'] = enableCloudLoggingValue;
    }
    return map;
  }

  factory AppLoggingSettingsCloudLoggingSettings.fromMap(
      Map<String, dynamic> map) {
    return AppLoggingSettingsCloudLoggingSettings(
      enableCloudLogging: map['enableCloudLogging'] == null
          ? null
          : map['enableCloudLogging'] as bool,
    );
  }
}
