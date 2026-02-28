// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig {
  /// Oauth token value or parameter name to pass it through.
  final String oauthToken;

  /// Creates a new [CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig].
  /// [oauthToken] Oauth token value or parameter name to pass it through.
  CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig({
    required this.oauthToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oauthToken'] = oauthToken;
    return map;
  }

  factory CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig(
      oauthToken: map['oauthToken'] as String,
    );
  }
}
