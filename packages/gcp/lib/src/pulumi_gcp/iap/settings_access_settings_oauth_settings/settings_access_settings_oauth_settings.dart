// ignore_for_file: unused_element, unnecessary_cast

class SettingsAccessSettingsOauthSettings {
  /// Domain hint to send as hd=? parameter in OAuth request flow.
  /// Enables redirect to primary IDP by skipping Google's login screen.
  /// (https://developers.google.com/identity/protocols/OpenIDConnect#hd-param)
  /// Note: IAP does not verify that the id token's hd claim matches this value
  /// since access behavior is managed by IAM policies.
  /// * loginHint setting is not a replacement for access control. Always enforce an appropriate access policy if you want to restrict access to users outside your domain.
  final String? loginHint;

  /// List of client ids allowed to use IAP programmatically.
  final List<String>? programmaticClients;

  SettingsAccessSettingsOauthSettings({
    this.loginHint,
    this.programmaticClients,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loginHintValue = loginHint;
    if (loginHintValue != null) {
      map['loginHint'] = loginHintValue;
    }
    final programmaticClientsValue = programmaticClients;
    if (programmaticClientsValue != null) {
      map['programmaticClients'] = programmaticClientsValue;
    }
    return map;
  }

  factory SettingsAccessSettingsOauthSettings.fromMap(
      Map<String, dynamic> map) {
    return SettingsAccessSettingsOauthSettings(
      loginHint: map['loginHint'] == null ? null : map['loginHint'] as String,
      programmaticClients: map['programmaticClients'] == null
          ? null
          : (map['programmaticClients'] as List).cast<String>(),
    );
  }
}
