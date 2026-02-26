// ignore_for_file: unused_element, unnecessary_cast

class UserPoolSoftwareTokenMfaConfiguration {
  /// Boolean whether to enable software token Multi-Factor (MFA) tokens, such as Time-based One-Time Password (TOTP). To disable software token MFA When <span pulumi-lang-nodejs="`smsConfiguration`" pulumi-lang-dotnet="`SmsConfiguration`" pulumi-lang-go="`smsConfiguration`" pulumi-lang-python="`sms_configuration`" pulumi-lang-yaml="`smsConfiguration`" pulumi-lang-java="`smsConfiguration`">`sms_configuration`</span> is not present, the <span pulumi-lang-nodejs="`mfaConfiguration`" pulumi-lang-dotnet="`MfaConfiguration`" pulumi-lang-go="`mfaConfiguration`" pulumi-lang-python="`mfa_configuration`" pulumi-lang-yaml="`mfaConfiguration`" pulumi-lang-java="`mfaConfiguration`">`mfa_configuration`</span> argument must be set to `OFF` and the <span pulumi-lang-nodejs="`softwareTokenMfaConfiguration`" pulumi-lang-dotnet="`SoftwareTokenMfaConfiguration`" pulumi-lang-go="`softwareTokenMfaConfiguration`" pulumi-lang-python="`software_token_mfa_configuration`" pulumi-lang-yaml="`softwareTokenMfaConfiguration`" pulumi-lang-java="`softwareTokenMfaConfiguration`">`software_token_mfa_configuration`</span> configuration block must be fully removed.
  final bool enabled;

  UserPoolSoftwareTokenMfaConfiguration({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory UserPoolSoftwareTokenMfaConfiguration.fromMap(
      Map<String, dynamic> map) {
    return UserPoolSoftwareTokenMfaConfiguration(
      enabled: map['enabled'] as bool,
    );
  }
}
