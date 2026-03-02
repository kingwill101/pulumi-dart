// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolAdminCreateUserConfigInviteMessageTemplate {
  /// Message template for email messages. Must contain `{username}` and `{####}` placeholders, for username and temporary password, respectively.
  final pulumi.Input<String>? emailMessage;
  /// Subject line for email messages.
  final pulumi.Input<String>? emailSubject;
  /// Message template for SMS messages. Must contain `{username}` and `{####}` placeholders, for username and temporary password, respectively.
  final pulumi.Input<String>? smsMessage;

  /// Creates a new [UserPoolAdminCreateUserConfigInviteMessageTemplate].
  /// [emailMessage] Message template for email messages. Must contain `{username}` and `{####}` placeholders, for username and temporary password, respectively.
  /// [emailSubject] Subject line for email messages.
  /// [smsMessage] Message template for SMS messages. Must contain `{username}` and `{####}` placeholders, for username and temporary password, respectively.
  UserPoolAdminCreateUserConfigInviteMessageTemplate({
    this.emailMessage,
    this.emailSubject,
    this.smsMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailMessage': ?emailMessage,
      'emailSubject': ?emailSubject,
      'smsMessage': ?smsMessage,
    };
  }

  factory UserPoolAdminCreateUserConfigInviteMessageTemplate.fromMap(Map<String, dynamic> map) {
    return UserPoolAdminCreateUserConfigInviteMessageTemplate(
      emailMessage: map['emailMessage'] == null ? null : (map['emailMessage'] as String).input(),
      emailSubject: map['emailSubject'] == null ? null : (map['emailSubject'] as String).input(),
      smsMessage: map['smsMessage'] == null ? null : (map['smsMessage'] as String).input(),
    );
  }
}

