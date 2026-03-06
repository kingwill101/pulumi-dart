// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiAlarmRuleNotificationSettingsNotificationChannel {
  /// Channel, optional enumeration value:
  ///
  /// Mail (Mail)
  ///
  /// Phone (Phone)
  ///
  /// Sms (Sms)
  ///
  /// Ding (DingTalk)
  final pulumi.Input<List<String>>? channels;
  final pulumi.Input<String>? severity;

  /// Creates a new [DiAlarmRuleNotificationSettingsNotificationChannel].
  /// [channels] Channel, optional enumeration value:
  /// [severity] Optional.
  const DiAlarmRuleNotificationSettingsNotificationChannel({
    this.channels,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channels': ?channels,
      'severity': ?severity,
    };
  }

  factory DiAlarmRuleNotificationSettingsNotificationChannel.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleNotificationSettingsNotificationChannel(
      channels: (() { final guardedValue = map['channels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

