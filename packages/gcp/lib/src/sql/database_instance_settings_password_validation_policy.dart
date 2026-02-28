// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsPasswordValidationPolicy {
  /// Checks if the password is a combination of lowercase, uppercase, numeric, and non-alphanumeric characters.
  final String? complexity;

  /// Prevents the use of the username in the password.
  final bool? disallowUsernameSubstring;

  /// Enables or disable the password validation policy.
  final bool enablePasswordPolicy;

  /// Specifies the minimum number of characters that the password must have.
  final int? minLength;

  /// Specifies the minimum duration after which you can change the password.
  final String? passwordChangeInterval;

  /// Specifies the number of previous passwords that you can't reuse.
  final int? reuseInterval;

  /// Creates a new [DatabaseInstanceSettingsPasswordValidationPolicy].
  /// [complexity] Checks if the password is a combination of lowercase, uppercase, numeric, and non-alphanumeric characters.
  /// [disallowUsernameSubstring] Prevents the use of the username in the password.
  /// [enablePasswordPolicy] Enables or disable the password validation policy.
  /// [minLength] Specifies the minimum number of characters that the password must have.
  /// [passwordChangeInterval] Specifies the minimum duration after which you can change the password.
  /// [reuseInterval] Specifies the number of previous passwords that you can't reuse.
  DatabaseInstanceSettingsPasswordValidationPolicy({
    this.complexity,
    this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complexityValue = complexity;
    if (complexityValue != null) {
      map['complexity'] = complexityValue;
    }
    final disallowUsernameSubstringValue = disallowUsernameSubstring;
    if (disallowUsernameSubstringValue != null) {
      map['disallowUsernameSubstring'] = disallowUsernameSubstringValue;
    }
    map['enablePasswordPolicy'] = enablePasswordPolicy;
    final minLengthValue = minLength;
    if (minLengthValue != null) {
      map['minLength'] = minLengthValue;
    }
    final passwordChangeIntervalValue = passwordChangeInterval;
    if (passwordChangeIntervalValue != null) {
      map['passwordChangeInterval'] = passwordChangeIntervalValue;
    }
    final reuseIntervalValue = reuseInterval;
    if (reuseIntervalValue != null) {
      map['reuseInterval'] = reuseIntervalValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsPasswordValidationPolicy.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsPasswordValidationPolicy(
      complexity:
          map['complexity'] == null ? null : map['complexity'] as String,
      disallowUsernameSubstring: map['disallowUsernameSubstring'] == null
          ? null
          : map['disallowUsernameSubstring'] as bool,
      enablePasswordPolicy: map['enablePasswordPolicy'] as bool,
      minLength: map['minLength'] == null ? null : map['minLength'] as int,
      passwordChangeInterval: map['passwordChangeInterval'] == null
          ? null
          : map['passwordChangeInterval'] as String,
      reuseInterval:
          map['reuseInterval'] == null ? null : map['reuseInterval'] as int,
    );
  }
}
