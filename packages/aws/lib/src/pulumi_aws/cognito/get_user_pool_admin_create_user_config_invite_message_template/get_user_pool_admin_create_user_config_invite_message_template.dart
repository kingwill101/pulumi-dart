// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolAdminCreateUserConfigInviteMessageTemplate {
  /// - Email message content.
  final String emailMessage;

  /// - Email message subject.
  final String emailSubject;

  /// - SMS message content.
  final String smsMessage;

  GetUserPoolAdminCreateUserConfigInviteMessageTemplate({
    required this.emailMessage,
    required this.emailSubject,
    required this.smsMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emailMessage'] = emailMessage;
    map['emailSubject'] = emailSubject;
    map['smsMessage'] = smsMessage;
    return map;
  }

  factory GetUserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolAdminCreateUserConfigInviteMessageTemplate(
      emailMessage: map['emailMessage'] as String,
      emailSubject: map['emailSubject'] as String,
      smsMessage: map['smsMessage'] as String,
    );
  }
}
