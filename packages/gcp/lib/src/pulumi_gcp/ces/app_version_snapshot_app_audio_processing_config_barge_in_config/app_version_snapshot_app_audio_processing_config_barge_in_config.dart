// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppAudioProcessingConfigBargeInConfig {
  /// (Output)
  /// If enabled, the agent will adapt its next response based on the assumption
  /// that the user hasn't heard the full preceding agent message.
  /// This should not be used in scenarios where agent responses are displayed
  /// visually.
  final bool? bargeInAwareness;

  AppVersionSnapshotAppAudioProcessingConfigBargeInConfig({
    this.bargeInAwareness,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bargeInAwarenessValue = bargeInAwareness;
    if (bargeInAwarenessValue != null) {
      map['bargeInAwareness'] = bargeInAwarenessValue;
    }
    return map;
  }

  factory AppVersionSnapshotAppAudioProcessingConfigBargeInConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppAudioProcessingConfigBargeInConfig(
      bargeInAwareness: map['bargeInAwareness'] == null
          ? null
          : map['bargeInAwareness'] as bool,
    );
  }
}
