// ignore_for_file: unused_element, unnecessary_cast


class UserPoolSignInPolicy {
  /// The sign in methods your user pool supports as the first factor. This is a list of strings, allowed values are `PASSWORD`, `EMAIL_OTP`, `SMS_OTP`, and `WEB_AUTHN`.
  final List<String>? allowedFirstAuthFactors;

  /// Creates a new [UserPoolSignInPolicy].
  /// [allowedFirstAuthFactors] The sign in methods your user pool supports as the first factor. This is a list of strings, allowed values are `PASSWORD`, `EMAIL_OTP`, `SMS_OTP`, and `WEB_AUTHN`.
  UserPoolSignInPolicy({
    this.allowedFirstAuthFactors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFirstAuthFactors': ?allowedFirstAuthFactors,
    };
  }

  factory UserPoolSignInPolicy.fromMap(Map<String, dynamic> map) {
    return UserPoolSignInPolicy(
      allowedFirstAuthFactors: map['allowedFirstAuthFactors'] == null ? null : (map['allowedFirstAuthFactors'] as List).cast<String>(),
    );
  }
}

