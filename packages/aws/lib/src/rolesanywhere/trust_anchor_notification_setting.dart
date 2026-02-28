// ignore_for_file: unused_element, unnecessary_cast

class TrustAnchorNotificationSetting {
  final String? channel;
  final String? configuredBy;

  /// Whether or not the Trust Anchor should be enabled.
  final bool? enabled;
  final String? event;
  final int? threshold;

  /// Creates a new [TrustAnchorNotificationSetting].
  /// [channel] Optional.
  /// [configuredBy] Optional.
  /// [enabled] Whether or not the Trust Anchor should be enabled.
  /// [event] Optional.
  /// [threshold] Optional.
  TrustAnchorNotificationSetting({
    this.channel,
    this.configuredBy,
    this.enabled,
    this.event,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue;
    }
    final configuredByValue = configuredBy;
    if (configuredByValue != null) {
      map['configuredBy'] = configuredByValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final eventValue = event;
    if (eventValue != null) {
      map['event'] = eventValue;
    }
    final thresholdValue = threshold;
    if (thresholdValue != null) {
      map['threshold'] = thresholdValue;
    }
    return map;
  }

  factory TrustAnchorNotificationSetting.fromMap(Map<String, dynamic> map) {
    return TrustAnchorNotificationSetting(
      channel: map['channel'] == null ? null : map['channel'] as String,
      configuredBy:
          map['configuredBy'] == null ? null : map['configuredBy'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      event: map['event'] == null ? null : map['event'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
    );
  }
}
