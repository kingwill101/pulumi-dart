// ignore_for_file: unused_element, unnecessary_cast


class DirectoryPasswordPolicy {
  /// Whether to restrict login after Password Expiration
  final bool? hardExpire;
  /// Number of password retries.
  final int? maxLoginAttempts;
  /// Password validity period.
  final int? maxPasswordAge;
  /// Maximum password length.
  final int? maxPasswordLength;
  /// The minimum number of different characters in a password.
  final int? minPasswordDifferentChars;
  /// Minimum password length.
  final int? minPasswordLength;
  /// Whether the user name is not allowed in the password.
  final bool? passwordNotContainUsername;
  /// Historical password check policy.
  final int? passwordReusePrevention;
  /// Whether lowercase letters are required in the password.
  final bool? requireLowerCaseChars;
  /// Whether numbers are required in the password.
  final bool? requireNumbers;
  /// Whether symbols are required in the password.
  final bool? requireSymbols;
  /// Whether uppercase letters are required in the password.
  final bool? requireUpperCaseChars;

  /// Creates a new [DirectoryPasswordPolicy].
  /// [hardExpire] Whether to restrict login after Password Expiration
  /// [maxLoginAttempts] Number of password retries.
  /// [maxPasswordAge] Password validity period.
  /// [maxPasswordLength] Maximum password length.
  /// [minPasswordDifferentChars] The minimum number of different characters in a password.
  /// [minPasswordLength] Minimum password length.
  /// [passwordNotContainUsername] Whether the user name is not allowed in the password.
  /// [passwordReusePrevention] Historical password check policy.
  /// [requireLowerCaseChars] Whether lowercase letters are required in the password.
  /// [requireNumbers] Whether numbers are required in the password.
  /// [requireSymbols] Whether symbols are required in the password.
  /// [requireUpperCaseChars] Whether uppercase letters are required in the password.
  DirectoryPasswordPolicy({
    this.hardExpire,
    this.maxLoginAttempts,
    this.maxPasswordAge,
    this.maxPasswordLength,
    this.minPasswordDifferentChars,
    this.minPasswordLength,
    this.passwordNotContainUsername,
    this.passwordReusePrevention,
    this.requireLowerCaseChars,
    this.requireNumbers,
    this.requireSymbols,
    this.requireUpperCaseChars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardExpire': ?hardExpire,
      'maxLoginAttempts': ?maxLoginAttempts,
      'maxPasswordAge': ?maxPasswordAge,
      'maxPasswordLength': ?maxPasswordLength,
      'minPasswordDifferentChars': ?minPasswordDifferentChars,
      'minPasswordLength': ?minPasswordLength,
      'passwordNotContainUsername': ?passwordNotContainUsername,
      'passwordReusePrevention': ?passwordReusePrevention,
      'requireLowerCaseChars': ?requireLowerCaseChars,
      'requireNumbers': ?requireNumbers,
      'requireSymbols': ?requireSymbols,
      'requireUpperCaseChars': ?requireUpperCaseChars,
    };
  }

  factory DirectoryPasswordPolicy.fromMap(Map<String, dynamic> map) {
    return DirectoryPasswordPolicy(
      hardExpire: map['hardExpire'] == null ? null : map['hardExpire'] as bool,
      maxLoginAttempts: map['maxLoginAttempts'] == null ? null : map['maxLoginAttempts'] as int,
      maxPasswordAge: map['maxPasswordAge'] == null ? null : map['maxPasswordAge'] as int,
      maxPasswordLength: map['maxPasswordLength'] == null ? null : map['maxPasswordLength'] as int,
      minPasswordDifferentChars: map['minPasswordDifferentChars'] == null ? null : map['minPasswordDifferentChars'] as int,
      minPasswordLength: map['minPasswordLength'] == null ? null : map['minPasswordLength'] as int,
      passwordNotContainUsername: map['passwordNotContainUsername'] == null ? null : map['passwordNotContainUsername'] as bool,
      passwordReusePrevention: map['passwordReusePrevention'] == null ? null : map['passwordReusePrevention'] as int,
      requireLowerCaseChars: map['requireLowerCaseChars'] == null ? null : map['requireLowerCaseChars'] as bool,
      requireNumbers: map['requireNumbers'] == null ? null : map['requireNumbers'] as bool,
      requireSymbols: map['requireSymbols'] == null ? null : map['requireSymbols'] as bool,
      requireUpperCaseChars: map['requireUpperCaseChars'] == null ? null : map['requireUpperCaseChars'] as bool,
    );
  }
}

