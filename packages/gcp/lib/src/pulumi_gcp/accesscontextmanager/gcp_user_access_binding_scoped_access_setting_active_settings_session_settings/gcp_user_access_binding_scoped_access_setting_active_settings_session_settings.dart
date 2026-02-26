// ignore_for_file: unused_element, unnecessary_cast

class GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings {
  /// Optional. How long a user is allowed to take between actions before a new access token must be issued. Only set for Google Cloud apps.
  final String? maxInactivity;

  /// Optional. The session length. Setting this field to zero is equal to disabling session. Also can set infinite session by flipping the enabled bit to false below. If useOidcMaxAge is true, for OIDC apps, the session length will be the minimum of this field and OIDC<span pulumi-lang-nodejs=" maxAge " pulumi-lang-dotnet=" MaxAge " pulumi-lang-go=" maxAge " pulumi-lang-python=" max_age " pulumi-lang-yaml=" maxAge " pulumi-lang-java=" maxAge "> max_age </span>param.
  final String? sessionLength;

  /// Optional. This field enables or disables Google Cloud session length. When false, all fields set above will be disregarded and the session length is basically infinite.
  final bool? sessionLengthEnabled;

  /// Optional. The session challenges proposed to users when the Google Cloud session length is up.
  /// Possible values are: `LOGIN`, `SECURITY_KEY`, `PASSWORD`.
  final String? sessionReauthMethod;

  /// Optional. Only useful for OIDC apps. When false, the OIDC<span pulumi-lang-nodejs=" maxAge " pulumi-lang-dotnet=" MaxAge " pulumi-lang-go=" maxAge " pulumi-lang-python=" max_age " pulumi-lang-yaml=" maxAge " pulumi-lang-java=" maxAge "> max_age </span>param, if passed in the authentication request will be ignored. When true, the re-auth period will be the minimum of the sessionLength field and the<span pulumi-lang-nodejs=" maxAge " pulumi-lang-dotnet=" MaxAge " pulumi-lang-go=" maxAge " pulumi-lang-python=" max_age " pulumi-lang-yaml=" maxAge " pulumi-lang-java=" maxAge "> max_age </span>OIDC param.
  final bool? useOidcMaxAge;

  GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings({
    this.maxInactivity,
    this.sessionLength,
    this.sessionLengthEnabled,
    this.sessionReauthMethod,
    this.useOidcMaxAge,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxInactivityValue = maxInactivity;
    if (maxInactivityValue != null) {
      map['maxInactivity'] = maxInactivityValue;
    }
    final sessionLengthValue = sessionLength;
    if (sessionLengthValue != null) {
      map['sessionLength'] = sessionLengthValue;
    }
    final sessionLengthEnabledValue = sessionLengthEnabled;
    if (sessionLengthEnabledValue != null) {
      map['sessionLengthEnabled'] = sessionLengthEnabledValue;
    }
    final sessionReauthMethodValue = sessionReauthMethod;
    if (sessionReauthMethodValue != null) {
      map['sessionReauthMethod'] = sessionReauthMethodValue;
    }
    final useOidcMaxAgeValue = useOidcMaxAge;
    if (useOidcMaxAgeValue != null) {
      map['useOidcMaxAge'] = useOidcMaxAgeValue;
    }
    return map;
  }

  factory GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings.fromMap(
      Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingActiveSettingsSessionSettings(
      maxInactivity:
          map['maxInactivity'] == null ? null : map['maxInactivity'] as String,
      sessionLength:
          map['sessionLength'] == null ? null : map['sessionLength'] as String,
      sessionLengthEnabled: map['sessionLengthEnabled'] == null
          ? null
          : map['sessionLengthEnabled'] as bool,
      sessionReauthMethod: map['sessionReauthMethod'] == null
          ? null
          : map['sessionReauthMethod'] as String,
      useOidcMaxAge:
          map['useOidcMaxAge'] == null ? null : map['useOidcMaxAge'] as bool,
    );
  }
}
