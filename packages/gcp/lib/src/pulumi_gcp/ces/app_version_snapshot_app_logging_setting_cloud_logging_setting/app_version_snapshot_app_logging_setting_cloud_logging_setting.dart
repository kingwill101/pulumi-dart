// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppLoggingSettingCloudLoggingSetting {
  /// (Output)
  /// Whether to enable Cloud Logging for the sessions.
  final bool? enableCloudLogging;

  AppVersionSnapshotAppLoggingSettingCloudLoggingSetting({
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

  factory AppVersionSnapshotAppLoggingSettingCloudLoggingSetting.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingCloudLoggingSetting(
      enableCloudLogging: map['enableCloudLogging'] == null
          ? null
          : map['enableCloudLogging'] as bool,
    );
  }
}
