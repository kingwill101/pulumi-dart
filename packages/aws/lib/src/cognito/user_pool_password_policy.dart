// ignore_for_file: unused_element, unnecessary_cast

class UserPoolPasswordPolicy {
  /// Minimum length of the password policy that you have set.
  final int? minimumLength;

  /// Number of previous passwords that you want Amazon Cognito to restrict each user from reusing. Users can't set a password that matches any of number of previous passwords specified by this argument. A value of 0 means that password history is not enforced. Valid values are between 0 and 24.
  ///
  /// **Note:** This argument requires advanced security features to be active in the user pool.
  final int? passwordHistorySize;

  /// Whether you have required users to use at least one lowercase letter in their password.
  final bool? requireLowercase;

  /// Whether you have required users to use at least one number in their password.
  final bool? requireNumbers;

  /// Whether you have required users to use at least one symbol in their password.
  final bool? requireSymbols;

  /// Whether you have required users to use at least one uppercase letter in their password.
  final bool? requireUppercase;

  /// In the password policy you have set, refers to the number of days a temporary password is valid. If the user does not sign-in during this time, their password will need to be reset by an administrator.
  final int? temporaryPasswordValidityDays;

  /// Creates a new [UserPoolPasswordPolicy].
  /// [minimumLength] Minimum length of the password policy that you have set.
  /// [passwordHistorySize] Number of previous passwords that you want Amazon Cognito to restrict each user from reusing. Users can't set a password that matches any of number of previous passwords specified by this argument. A value of 0 means that password history is not enforced. Valid values are between 0 and 24.
  /// [requireLowercase] Whether you have required users to use at least one lowercase letter in their password.
  /// [requireNumbers] Whether you have required users to use at least one number in their password.
  /// [requireSymbols] Whether you have required users to use at least one symbol in their password.
  /// [requireUppercase] Whether you have required users to use at least one uppercase letter in their password.
  /// [temporaryPasswordValidityDays] In the password policy you have set, refers to the number of days a temporary password is valid. If the user does not sign-in during this time, their password will need to be reset by an administrator.
  UserPoolPasswordPolicy({
    this.minimumLength,
    this.passwordHistorySize,
    this.requireLowercase,
    this.requireNumbers,
    this.requireSymbols,
    this.requireUppercase,
    this.temporaryPasswordValidityDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumLength': ?minimumLength,
      'passwordHistorySize': ?passwordHistorySize,
      'requireLowercase': ?requireLowercase,
      'requireNumbers': ?requireNumbers,
      'requireSymbols': ?requireSymbols,
      'requireUppercase': ?requireUppercase,
      'temporaryPasswordValidityDays': ?temporaryPasswordValidityDays,
    };
  }

  factory UserPoolPasswordPolicy.fromMap(Map<String, dynamic> map) {
    return UserPoolPasswordPolicy(
      minimumLength: map['minimumLength'] == null
          ? null
          : map['minimumLength'] as int,
      passwordHistorySize: map['passwordHistorySize'] == null
          ? null
          : map['passwordHistorySize'] as int,
      requireLowercase: map['requireLowercase'] == null
          ? null
          : map['requireLowercase'] as bool,
      requireNumbers: map['requireNumbers'] == null
          ? null
          : map['requireNumbers'] as bool,
      requireSymbols: map['requireSymbols'] == null
          ? null
          : map['requireSymbols'] as bool,
      requireUppercase: map['requireUppercase'] == null
          ? null
          : map['requireUppercase'] as bool,
      temporaryPasswordValidityDays:
          map['temporaryPasswordValidityDays'] == null
          ? null
          : map['temporaryPasswordValidityDays'] as int,
    );
  }
}
