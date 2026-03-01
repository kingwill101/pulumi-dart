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
    return <String, dynamic>{
      'disableConversationLogging': ?disableConversationLogging,
    };
  }

  factory AppVersionSnapshotAppLoggingSettingConversationLoggingSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppLoggingSettingConversationLoggingSetting(
      disableConversationLogging: map['disableConversationLogging'] == null
          ? null
          : map['disableConversationLogging'] as bool,
    );
  }
}
