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
      notifyType: map['notifyType'] == null ? null : (map['notifyType'] as String).input(),
      notifyValue: map['notifyValue'] == null ? null : (map['notifyValue'] as String).input(),
    );
  }
}

