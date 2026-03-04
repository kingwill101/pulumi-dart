// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAlarmConfigAlarmConfig {
  /// The time of the day when the alarm is triggered. The range is `0 ~ 24`.
  final pulumi.Input<String>? alarmHour;

  /// The alarm notification type. Possible values are: `0`(sms/email), `1`(sms), `2`(email), `3`(none)
  final pulumi.Input<String>? alarmNotify;

  /// The alarm period. Possible values are: `0` (8:00 ~ 20:00), `1` 24 hours.
  final pulumi.Input<String>? alarmPeriod;

  /// The alarm type. Possible values are: `weeklyReport`, `trafficPreAlert`, `outgoingRiskAll`, `ipsMiddlethreat`, `bandwidth`, `ipsHighthreat`, `outgoingRiskNonWhite`, `ipsIgnoreResolved` etc.
  final pulumi.Input<String>? alarmType;

  /// The alarm notification message.
  final pulumi.Input<String>? alarmValue;

  /// The day of the week when the alarm is triggered. The range is `1 ~ 7`.
  final pulumi.Input<String>? alarmWeekDay;

  /// Creates a new [UserAlarmConfigAlarmConfig].
  /// [alarmHour] The time of the day when the alarm is triggered. The range is `0 ~ 24`.
  /// [alarmNotify] The alarm notification type. Possible values are: `0`(sms/email), `1`(sms), `2`(email), `3`(none)
  /// [alarmPeriod] The alarm period. Possible values are: `0` (8:00 ~ 20:00), `1` 24 hours.
  /// [alarmType] The alarm type. Possible values are: `weeklyReport`, `trafficPreAlert`, `outgoingRiskAll`, `ipsMiddlethreat`, `bandwidth`, `ipsHighthreat`, `outgoingRiskNonWhite`, `ipsIgnoreResolved` etc.
  /// [alarmValue] The alarm notification message.
  /// [alarmWeekDay] The day of the week when the alarm is triggered. The range is `1 ~ 7`.
  UserAlarmConfigAlarmConfig({
    this.alarmHour,
    this.alarmNotify,
    this.alarmPeriod,
    this.alarmType,
    this.alarmValue,
    this.alarmWeekDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmHour': ?alarmHour,
      'alarmNotify': ?alarmNotify,
      'alarmPeriod': ?alarmPeriod,
      'alarmType': ?alarmType,
      'alarmValue': ?alarmValue,
      'alarmWeekDay': ?alarmWeekDay,
    };
  }

  factory UserAlarmConfigAlarmConfig.fromMap(Map<String, dynamic> map) {
    return UserAlarmConfigAlarmConfig(
      alarmHour: (() {
        final guardedValue = map['alarmHour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alarmNotify: (() {
        final guardedValue = map['alarmNotify'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alarmPeriod: (() {
        final guardedValue = map['alarmPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alarmType: (() {
        final guardedValue = map['alarmType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alarmValue: (() {
        final guardedValue = map['alarmValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alarmWeekDay: (() {
        final guardedValue = map['alarmWeekDay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
