// ignore_for_file: unused_element, unnecessary_cast

class SettingsAccessSettingsWorkforceIdentitySettingsOauth2 {
  /// The OAuth 2.0 client ID registered in the workforce identity
  /// federation OAuth 2.0 Server.
  final String? clientId;

  /// Input only. The OAuth 2.0 client secret created while registering
  /// the client ID.
  final String? clientSecret;

  /// Output only. SHA256 hash value for the client secret. This field
  /// is returned by IAP when the settings are retrieved.
  final String? clientSecretSha256;

  SettingsAccessSettingsWorkforceIdentitySettingsOauth2({
    this.clientId,
    this.clientSecret,
    this.clientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final clientSecretSha256Value = clientSecretSha256;
    if (clientSecretSha256Value != null) {
      map['clientSecretSha256'] = clientSecretSha256Value;
    }
    return map;
  }

  factory SettingsAccessSettingsWorkforceIdentitySettingsOauth2.fromMap(
      Map<String, dynamic> map) {
    return SettingsAccessSettingsWorkforceIdentitySettingsOauth2(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      clientSecretSha256: map['clientSecretSha256'] == null
          ? null
          : map['clientSecretSha256'] as String,
    );
  }
}
