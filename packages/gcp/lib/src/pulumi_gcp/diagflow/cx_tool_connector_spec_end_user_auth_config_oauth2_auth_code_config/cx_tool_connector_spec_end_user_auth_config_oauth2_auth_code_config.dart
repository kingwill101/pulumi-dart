// ignore_for_file: unused_element, unnecessary_cast

class CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig {
  /// Oauth token value or parameter name to pass it through.
  final String oauthToken;

  CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig({
    required this.oauthToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oauthToken'] = oauthToken;
    return map;
  }

  factory CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig(
      oauthToken: map['oauthToken'] as String,
    );
  }
}
