// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolEmailMfaConfiguration {
  /// The template for the email messages that your user pool sends to users with codes for MFA and sign-in with email OTPs. The message must contain the {####} placeholder. In the message, Amazon Cognito replaces this placeholder with the code. If you don't provide this parameter, Amazon Cognito sends messages in the default format.
  final pulumi.Input<String>? message;

  /// The subject of the email messages that your user pool sends to users with codes for MFA and email OTP sign-in.
  final pulumi.Input<String>? subject;

  /// Creates a new [UserPoolEmailMfaConfiguration].
  /// [message] The template for the email messages that your user pool sends to users with codes for MFA and sign-in with email OTPs. The message must contain the {####} placeholder. In the message, Amazon Cognito replaces this placeholder with the code. If you don't provide this parameter, Amazon Cognito sends messages in the default format.
  /// [subject] The subject of the email messages that your user pool sends to users with codes for MFA and email OTP sign-in.
  UserPoolEmailMfaConfiguration({this.message, this.subject});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': ?message, 'subject': ?subject};
  }

  factory UserPoolEmailMfaConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolEmailMfaConfiguration(
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subject: (() {
        final guardedValue = map['subject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
