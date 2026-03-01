// ignore_for_file: unused_element, unnecessary_cast


class GetAlertContactsContact {
  /// Contact ID.
  final String alertContactId;
  /// The name of the alert contact.
  final String alertContactName;
  /// The Creation Time Timestamp.
  final String createTime;
  /// The webhook URL of the DingTalk chatbot.
  final String dingRobotWebhookUrl;
  /// The email address of the alert contact.
  final String email;
  /// The ID of the Alert Contact.
  final String id;
  /// The mobile number of the alert contact.
  final String phoneNum;
  /// Specifies whether the alert contact receives system notifications.
  final bool systemNoc;
  /// Webhook Information.
  final String webhook;

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
      alertContactId: map['alertContactId'] as String,
      alertContactName: map['alertContactName'] as String,
      createTime: map['createTime'] as String,
      dingRobotWebhookUrl: map['dingRobotWebhookUrl'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      phoneNum: map['phoneNum'] as String,
      systemNoc: map['systemNoc'] as bool,
      webhook: map['webhook'] as String,
    );
  }
}

