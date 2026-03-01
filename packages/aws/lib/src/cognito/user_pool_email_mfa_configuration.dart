// ignore_for_file: unused_element, unnecessary_cast


class UserPoolEmailMfaConfiguration {
  /// The template for the email messages that your user pool sends to users with codes for MFA and sign-in with email OTPs. The message must contain the {####} placeholder. In the message, Amazon Cognito replaces this placeholder with the code. If you don't provide this parameter, Amazon Cognito sends messages in the default format.
  final String? message;
  /// The subject of the email messages that your user pool sends to users with codes for MFA and email OTP sign-in.
  final String? subject;

  /// Creates a new [UserPoolEmailMfaConfiguration].
  /// [message] The template for the email messages that your user pool sends to users with codes for MFA and sign-in with email OTPs. The message must contain the {####} placeholder. In the message, Amazon Cognito replaces this placeholder with the code. If you don't provide this parameter, Amazon Cognito sends messages in the default format.
  /// [subject] The subject of the email messages that your user pool sends to users with codes for MFA and email OTP sign-in.
  UserPoolEmailMfaConfiguration({
    this.message,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'subject': ?subject,
    };
  }

  factory UserPoolEmailMfaConfiguration.fromMap(Map<String, dynamic> map) {
    return UserPoolEmailMfaConfiguration(
      message: map['message'] == null ? null : map['message'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
    );
  }
}

