// ignore_for_file: unused_element, unnecessary_cast

class UserPoolSoftwareTokenMfaConfiguration {
  /// Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When `sms_configuration` is not present, the `mfa_configuration` argument must be set to `OFF` and the `software_token_mfa_configuration` configuration block must be fully removed.
  final bool enabled;

  /// Creates a new [UserPoolSoftwareTokenMfaConfiguration].
  /// [enabled] Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When `sms_configuration` is not present, the `mfa_configuration` argument must be set to `OFF` and the `software_token_mfa_configuration` configuration block must be fully removed.
  UserPoolSoftwareTokenMfaConfiguration({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory UserPoolSoftwareTokenMfaConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserPoolSoftwareTokenMfaConfiguration(
      enabled: map['enabled'] as bool,
    );
  }
}
