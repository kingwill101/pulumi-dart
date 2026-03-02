// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_alert_contact_alert_contact_args_doc}
/// The set of arguments for AlertContact.
/// {@endtemplate}
/// {@macro pulumi_arms_alert_contact_alert_contact_args_doc}
class AlertContactArgs {
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

  /// Creates a new [AlertContactArgs].
  /// [alertContactName] The name of the alert contact.
  /// [dingRobotWebhookUrl] The webhook URL of the DingTalk chatbot. For more information about how to obtain the URL, see Configure a DingTalk chatbot to send alert notifications: https://www.alibabacloud.com/help/en/doc-detail/106247.htm. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  /// [email] The email address of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  /// [phoneNum] The mobile number of the alert contact. You must specify at least one of the following parameters: PhoneNum, Email, and DingRobotWebhookUrl.
  /// [systemNoc] Specifies whether the alert contact receives system notifications. Valid values:  true: receives system notifications. false: does not receive system notifications.
  AlertContactArgs({
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

  factory AlertContactArgs.fromMap(Map<String, dynamic> map) {
    return AlertContactArgs(
      alertContactName: map['alertContactName'] == null ? null : (map['alertContactName'] as String).input(),
      dingRobotWebhookUrl: map['dingRobotWebhookUrl'] == null ? null : (map['dingRobotWebhookUrl'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      phoneNum: map['phoneNum'] == null ? null : (map['phoneNum'] as String).input(),
      systemNoc: map['systemNoc'] == null ? null : (map['systemNoc'] as bool).input(),
    );
  }
}

