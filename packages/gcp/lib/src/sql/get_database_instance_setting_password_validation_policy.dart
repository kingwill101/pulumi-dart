// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingPasswordValidationPolicy {
  /// Password complexity.
  final String complexity;

  /// Disallow username as a part of the password.
  final bool disallowUsernameSubstring;

  /// Whether the password policy is enabled or not.
  final bool enablePasswordPolicy;

  /// Minimum number of characters allowed.
  final int minLength;

  /// Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL.
  final String passwordChangeInterval;

  /// Number of previous passwords that cannot be reused.
  final int reuseInterval;

  /// Creates a new [GetDatabaseInstanceSettingPasswordValidationPolicy].
  /// [complexity] Password complexity.
  /// [disallowUsernameSubstring] Disallow username as a part of the password.
  /// [enablePasswordPolicy] Whether the password policy is enabled or not.
  /// [minLength] Minimum number of characters allowed.
  /// [passwordChangeInterval] Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL.
  /// [reuseInterval] Number of previous passwords that cannot be reused.
  GetDatabaseInstanceSettingPasswordValidationPolicy({
    required this.complexity,
    required this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    required this.minLength,
    required this.passwordChangeInterval,
    required this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['complexity'] = complexity;
    map['disallowUsernameSubstring'] = disallowUsernameSubstring;
    map['enablePasswordPolicy'] = enablePasswordPolicy;
    map['minLength'] = minLength;
    map['passwordChangeInterval'] = passwordChangeInterval;
    map['reuseInterval'] = reuseInterval;
    return map;
  }

  factory GetDatabaseInstanceSettingPasswordValidationPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingPasswordValidationPolicy(
      complexity: map['complexity'] as String,
      disallowUsernameSubstring: map['disallowUsernameSubstring'] as bool,
      enablePasswordPolicy: map['enablePasswordPolicy'] as bool,
      minLength: map['minLength'] as int,
      passwordChangeInterval: map['passwordChangeInterval'] as String,
      reuseInterval: map['reuseInterval'] as int,
    );
  }
}
