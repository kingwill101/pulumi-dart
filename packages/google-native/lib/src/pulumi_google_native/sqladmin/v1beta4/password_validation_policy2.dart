// ignore_for_file: unused_element, unnecessary_cast

import 'password_validation_policy_complexity2.dart';

/// Database instance local user password validation policy
class PasswordValidationPolicy2 {
  /// The complexity of the password.
  final PasswordValidationPolicyComplexity2? complexity;

  /// Disallow credentials that have been previously compromised by a public data breach.
  final bool? disallowCompromisedCredentials;

  /// Disallow username as a part of the password.
  final bool? disallowUsernameSubstring;

  /// Whether the password policy is enabled or not.
  final bool? enablePasswordPolicy;

  /// Minimum number of characters allowed.
  final int? minLength;

  /// Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  final String? passwordChangeInterval;

  /// Number of previous passwords that cannot be reused.
  final int? reuseInterval;

  PasswordValidationPolicy2({
    this.complexity,
    this.disallowCompromisedCredentials,
    this.disallowUsernameSubstring,
    this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final complexityValue = complexity;
    if (complexityValue != null) {
      map['complexity'] = complexityValue.value;
    }
    final disallowCompromisedCredentialsValue = disallowCompromisedCredentials;
    if (disallowCompromisedCredentialsValue != null) {
      map['disallowCompromisedCredentials'] =
          disallowCompromisedCredentialsValue;
    }
    final disallowUsernameSubstringValue = disallowUsernameSubstring;
    if (disallowUsernameSubstringValue != null) {
      map['disallowUsernameSubstring'] = disallowUsernameSubstringValue;
    }
    final enablePasswordPolicyValue = enablePasswordPolicy;
    if (enablePasswordPolicyValue != null) {
      map['enablePasswordPolicy'] = enablePasswordPolicyValue;
    }
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

  factory PasswordValidationPolicy2.fromMap(Map<String, dynamic> map) {
    return PasswordValidationPolicy2(
      complexity: map['complexity'] == null
          ? null
          : PasswordValidationPolicyComplexity2.fromValue(
              map['complexity'] as String),
      disallowCompromisedCredentials:
          map['disallowCompromisedCredentials'] == null
              ? null
              : map['disallowCompromisedCredentials'] as bool,
      disallowUsernameSubstring: map['disallowUsernameSubstring'] == null
          ? null
          : map['disallowUsernameSubstring'] as bool,
      enablePasswordPolicy: map['enablePasswordPolicy'] == null
          ? null
          : map['enablePasswordPolicy'] as bool,
      minLength: map['minLength'] == null ? null : map['minLength'] as int,
      passwordChangeInterval: map['passwordChangeInterval'] == null
          ? null
          : map['passwordChangeInterval'] as String,
      reuseInterval:
          map['reuseInterval'] == null ? null : map['reuseInterval'] as int,
    );
  }
}
