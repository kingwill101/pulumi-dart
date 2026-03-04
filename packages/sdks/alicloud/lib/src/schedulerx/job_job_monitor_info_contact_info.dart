// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobJobMonitorInfoContactInfo {
  /// DingTalk swarm robot webhook address
  final pulumi.Input<String>? ding;

  /// User Email Address
  final pulumi.Input<String>? userMail;

  /// The user name
  final pulumi.Input<String>? userName;

  /// The user's mobile phone number
  final pulumi.Input<String>? userPhone;

  /// Creates a new [JobJobMonitorInfoContactInfo].
  /// [ding] DingTalk swarm robot webhook address
  /// [userMail] User Email Address
  /// [userName] The user name
  /// [userPhone] The user's mobile phone number
  JobJobMonitorInfoContactInfo({
    this.ding,
    this.userMail,
    this.userName,
    this.userPhone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ding': ?ding,
      'userMail': ?userMail,
      'userName': ?userName,
      'userPhone': ?userPhone,
    };
  }

  factory JobJobMonitorInfoContactInfo.fromMap(Map<String, dynamic> map) {
    return JobJobMonitorInfoContactInfo(
      ding: (() {
        final guardedValue = map['ding'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userMail: (() {
        final guardedValue = map['userMail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPhone: (() {
        final guardedValue = map['userPhone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
