// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertContact resources.
class AlertContactState {
  /// The name of the alert contact.
  final pulumi.Input<String>? alertContactName;

  /// The webhook URL of the DingTalk chatbot. For more information about how to obtain the URL, see Configure a DingTalk chatbot to send alert notifications: https://www.alibabacloud.com/help/en/doc-detail/106247.htm. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  final pulumi.Input<String>? dingRobotWebhookUrl;

  /// The email address of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  final pulumi.Input<String>? email;

  /// The mobile number of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  final pulumi.Input<String>? phoneNum;

  /// Specifies whether the alert contact receives system notifications. Valid values:  true: receives system notifications. false: does not receive system notifications.
  final pulumi.Input<bool>? systemNoc;

  /// Creates a new [AlertContactState].
  /// [alertContactName] The name of the alert contact.
  /// [dingRobotWebhookUrl] The webhook URL of the DingTalk chatbot. For more information about how to obtain the URL, see Configure a DingTalk chatbot to send alert notifications: https://www.alibabacloud.com/help/en/doc-detail/106247.htm. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  /// [email] The email address of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  /// [phoneNum] The mobile number of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  /// [systemNoc] Specifies whether the alert contact receives system notifications. Valid values:  true: receives system notifications. false: does not receive system notifications.
  AlertContactState({
    this.alertContactName,
    this.dingRobotWebhookUrl,
    this.email,
    this.phoneNum,
    this.systemNoc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactName': ?alertContactName,
      'dingRobotWebhookUrl': ?dingRobotWebhookUrl,
      'email': ?email,
      'phoneNum': ?phoneNum,
      'systemNoc': ?systemNoc,
    };
  }

  factory AlertContactState.fromMap(Map<String, dynamic> map) {
    return AlertContactState(
      alertContactName: (() {
        final guardedValue = map['alertContactName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dingRobotWebhookUrl: (() {
        final guardedValue = map['dingRobotWebhookUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phoneNum: (() {
        final guardedValue = map['phoneNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemNoc: (() {
        final guardedValue = map['systemNoc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
