// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertContactsContact {
  /// Contact ID.
  final pulumi.Input<String> alertContactId;
  /// The name of the alert contact.
  final pulumi.Input<String> alertContactName;
  /// The Creation Time Timestamp.
  final pulumi.Input<String> createTime;
  /// The webhook URL of the DingTalk chatbot.
  final pulumi.Input<String> dingRobotWebhookUrl;
  /// The email address of the alert contact.
  final pulumi.Input<String> email;
  /// The ID of the Alert Contact.
  final pulumi.Input<String> id;
  /// The mobile number of the alert contact.
  final pulumi.Input<String> phoneNum;
  /// Specifies whether the alert contact receives system notifications.
  final pulumi.Input<bool> systemNoc;
  /// Webhook Information.
  final pulumi.Input<String> webhook;

  /// Creates a new [GetAlertContactsContact].
  /// [alertContactId] Contact ID.
  /// [alertContactName] The name of the alert contact.
  /// [createTime] The Creation Time Timestamp.
  /// [dingRobotWebhookUrl] The webhook URL of the DingTalk chatbot.
  /// [email] The email address of the alert contact.
  /// [id] The ID of the Alert Contact.
  /// [phoneNum] The mobile number of the alert contact.
  /// [systemNoc] Specifies whether the alert contact receives system notifications.
  /// [webhook] Webhook Information.
  GetAlertContactsContact({
    required this.alertContactId,
    required this.alertContactName,
    required this.createTime,
    required this.dingRobotWebhookUrl,
    required this.email,
    required this.id,
    required this.phoneNum,
    required this.systemNoc,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactId': alertContactId,
      'alertContactName': alertContactName,
      'createTime': createTime,
      'dingRobotWebhookUrl': dingRobotWebhookUrl,
      'email': email,
      'id': id,
      'phoneNum': phoneNum,
      'systemNoc': systemNoc,
      'webhook': webhook,
    };
  }

  factory GetAlertContactsContact.fromMap(Map<String, dynamic> map) {
    return GetAlertContactsContact(
      alertContactId: (map['alertContactId'] as String).input(),
      alertContactName: (map['alertContactName'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dingRobotWebhookUrl: (map['dingRobotWebhookUrl'] as String).input(),
      email: (map['email'] as String).input(),
      id: (map['id'] as String).input(),
      phoneNum: (map['phoneNum'] as String).input(),
      systemNoc: (map['systemNoc'] as bool).input(),
      webhook: (map['webhook'] as String).input(),
    );
  }
}

