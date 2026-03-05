// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAlarmConfigNotifyConfig {
  /// The notification type. Possible values are `sms`, `mail`.
  final pulumi.Input<String>? notifyType;
  /// The notification value. Depending on the value of `notify_type`, it can be a mobile phone number or an email address.
  final pulumi.Input<String>? notifyValue;

  /// Creates a new [UserAlarmConfigNotifyConfig].
  /// [notifyType] The notification type. Possible values are `sms`, `mail`.
  /// [notifyValue] The notification value. Depending on the value of `notify_type`, it can be a mobile phone number or an email address.
  UserAlarmConfigNotifyConfig({
    this.notifyType,
    this.notifyValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifyType': ?notifyType,
      'notifyValue': ?notifyValue,
    };
  }

  factory UserAlarmConfigNotifyConfig.fromMap(Map<String, dynamic> map) {
    return UserAlarmConfigNotifyConfig(
      notifyType: (() { final guardedValue = map['notifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyValue: (() { final guardedValue = map['notifyValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

