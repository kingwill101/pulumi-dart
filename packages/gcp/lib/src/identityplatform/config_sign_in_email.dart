// ignore_for_file: unused_element, unnecessary_cast

class ConfigSignInEmail {
  /// Whether email auth is enabled for the project or not.
  final bool enabled;

  /// Whether a password is required for email auth or not. If true, both an email and
  /// password must be provided to sign in. If false, a user may sign in via either
  /// email/password or email link.
  final bool? passwordRequired;

  /// Creates a new [ConfigSignInEmail].
  /// [enabled] Whether email auth is enabled for the project or not.
  /// [passwordRequired] Whether a password is required for email auth or not. If true, both an email and
  ConfigSignInEmail({required this.enabled, this.passwordRequired});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'passwordRequired': ?passwordRequired,
    };
  }

  factory ConfigSignInEmail.fromMap(Map<String, dynamic> map) {
    return ConfigSignInEmail(
      enabled: map['enabled'] as bool,
      passwordRequired: map['passwordRequired'] == null
          ? null
          : map['passwordRequired'] as bool,
    );
  }
}
