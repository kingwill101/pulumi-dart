// ignore_for_file: unused_element, unnecessary_cast


/// Database instance local user password validation policy
class PasswordValidationPolicyResponse {
  /// The complexity of the password.
  final String complexity;
  /// Disallow credentials that have been previously compromised by a public data breach.
  final bool disallowCompromisedCredentials;
  /// Disallow username as a part of the password.
  final bool disallowUsernameSubstring;
  /// Whether the password policy is enabled or not.
  final bool enablePasswordPolicy;
  /// Minimum number of characters allowed.
  final int minLength;
  /// Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  final String passwordChangeInterval;
  /// Number of previous passwords that cannot be reused.
  final int reuseInterval;

  /// Creates a new [PasswordValidationPolicyResponse].
  /// [complexity] The complexity of the password.
  /// [disallowCompromisedCredentials] Disallow credentials that have been previously compromised by a public data breach.
  /// [disallowUsernameSubstring] Disallow username as a part of the password.
  /// [enablePasswordPolicy] Whether the password policy is enabled or not.
  /// [minLength] Minimum number of characters allowed.
  /// [passwordChangeInterval] Minimum interval after which the password can be changed. This flag is only supported for PostgreSQL.
  /// [reuseInterval] Number of previous passwords that cannot be reused.
  PasswordValidationPolicyResponse({
    required this.complexity,
    required this.disallowCompromisedCredentials,
    required this.disallowUsernameSubstring,
    required this.enablePasswordPolicy,
    required this.minLength,
    required this.passwordChangeInterval,
    required this.reuseInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complexity': complexity,
      'disallowCompromisedCredentials': disallowCompromisedCredentials,
      'disallowUsernameSubstring': disallowUsernameSubstring,
      'enablePasswordPolicy': enablePasswordPolicy,
      'minLength': minLength,
      'passwordChangeInterval': passwordChangeInterval,
      'reuseInterval': reuseInterval,
    };
  }

  factory PasswordValidationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PasswordValidationPolicyResponse(
      complexity: map['complexity'] as String,
      disallowCompromisedCredentials: map['disallowCompromisedCredentials'] as bool,
      disallowUsernameSubstring: map['disallowUsernameSubstring'] as bool,
      enablePasswordPolicy: map['enablePasswordPolicy'] as bool,
      minLength: map['minLength'] as int,
      passwordChangeInterval: map['passwordChangeInterval'] as String,
      reuseInterval: map['reuseInterval'] as int,
    );
  }
}

