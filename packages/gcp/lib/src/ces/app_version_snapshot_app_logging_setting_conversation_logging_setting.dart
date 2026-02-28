// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppLoggingSettingConversationLoggingSetting {
  /// (Output)
  /// Whether to disable conversation logging for the sessions.
  final bool? disableConversationLogging;

  /// Creates a new [AppVersionSnapshotAppLoggingSettingConversationLoggingSetting].
  /// [disableConversationLogging] (Output)
  AppVersionSnapshotAppLoggingSettingConversationLoggingSetting({
    this.disableConversationLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableConversationLoggingValue = disableConversationLogging;
    if (disableConversationLoggingValue != null) {
      map['disableConversationLogging'] = disableConversationLoggingValue;
    }
    return map;
  }

  factory AppVersionSnapshotAppLoggingSettingConversationLoggingSetting.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppLoggingSettingConversationLoggingSetting(
      disableConversationLogging: map['disableConversationLogging'] == null
          ? null
          : map['disableConversationLogging'] as bool,
    );
  }
}
