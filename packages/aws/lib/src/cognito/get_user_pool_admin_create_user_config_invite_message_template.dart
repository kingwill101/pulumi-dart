// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolAdminCreateUserConfigInviteMessageTemplate {
  /// - Email message content.
  final String emailMessage;

  /// - Email message subject.
  final String emailSubject;

  /// - SMS message content.
  final String smsMessage;

  /// Creates a new [GetUserPoolAdminCreateUserConfigInviteMessageTemplate].
  /// [emailMessage] - Email message content.
  /// [emailSubject] - Email message subject.
  /// [smsMessage] - SMS message content.
  GetUserPoolAdminCreateUserConfigInviteMessageTemplate({
    required this.emailMessage,
    required this.emailSubject,
    required this.smsMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailMessage': emailMessage,
      'emailSubject': emailSubject,
      'smsMessage': smsMessage,
    };
  }

  factory GetUserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserPoolAdminCreateUserConfigInviteMessageTemplate(
      emailMessage: map['emailMessage'] as String,
      emailSubject: map['emailSubject'] as String,
      smsMessage: map['smsMessage'] as String,
    );
  }
}
