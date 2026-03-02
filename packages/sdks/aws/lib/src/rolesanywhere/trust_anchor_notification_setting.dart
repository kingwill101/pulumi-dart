// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustAnchorNotificationSetting {
  final pulumi.Input<String>? channel;
  final pulumi.Input<String>? configuredBy;
  /// Whether or not the Trust Anchor should be enabled.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<String>? event;
  final pulumi.Input<int>? threshold;

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
    return <String, dynamic>{
      'channel': ?channel,
      'configuredBy': ?configuredBy,
      'enabled': ?enabled,
      'event': ?event,
      'threshold': ?threshold,
    };
  }

  factory TrustAnchorNotificationSetting.fromMap(Map<String, dynamic> map) {
    return TrustAnchorNotificationSetting(
      channel: map['channel'] == null ? null : (map['channel'] as String).input(),
      configuredBy: map['configuredBy'] == null ? null : (map['configuredBy'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      event: map['event'] == null ? null : (map['event'] as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold'] as int).input(),
    );
  }
}

