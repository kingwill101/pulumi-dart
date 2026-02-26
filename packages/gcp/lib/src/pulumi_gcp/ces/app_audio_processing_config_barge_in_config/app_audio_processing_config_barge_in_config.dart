// ignore_for_file: unused_element, unnecessary_cast

class AppAudioProcessingConfigBargeInConfig {
  /// If enabled, the agent will adapt its next response based on the assumption
  /// that the user hasn't heard the full preceding agent message.
  /// This should not be used in scenarios where agent responses are displayed
  /// visually.
  final bool? bargeInAwareness;

  AppAudioProcessingConfigBargeInConfig({
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

  factory AppAudioProcessingConfigBargeInConfig.fromMap(
      Map<String, dynamic> map) {
    return AppAudioProcessingConfigBargeInConfig(
      bargeInAwareness: map['bargeInAwareness'] == null
          ? null
          : map['bargeInAwareness'] as bool,
    );
  }
}
