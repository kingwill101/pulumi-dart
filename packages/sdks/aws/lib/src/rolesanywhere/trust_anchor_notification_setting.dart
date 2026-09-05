// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustAnchorNotificationSetting {
  final pulumi.Input<String?>? channel;
  final pulumi.Input<String?>? configuredBy;
  /// Whether or not the Trust Anchor should be enabled.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? event;
  final pulumi.Input<int?>? threshold;

  /// Creates a new [TrustAnchorNotificationSetting].
  /// [channel] Optional.
  /// [configuredBy] Optional.
  /// [enabled] Whether or not the Trust Anchor should be enabled.
  /// [event] Optional.
  /// [threshold] Optional.
  const TrustAnchorNotificationSetting({
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
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuredBy: (() { final guardedValue = map['configuredBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
