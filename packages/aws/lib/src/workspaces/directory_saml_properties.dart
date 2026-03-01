// ignore_for_file: unused_element, unnecessary_cast

class DirectorySamlProperties {
  /// The relay state parameter name supported by the SAML 2.0 identity provider (IdP). Default `RelayState`.
  final String? relayStateParameterName;

  /// Status of SAML 2.0 authentication. Default `DISABLED`.
  final String? status;

  /// The SAML 2.0 identity provider (IdP) user access URL.
  final String? userAccessUrl;

  /// Creates a new [DirectorySamlProperties].
  /// [relayStateParameterName] The relay state parameter name supported by the SAML 2.0 identity provider (IdP). Default `RelayState`.
  /// [status] Status of SAML 2.0 authentication. Default `DISABLED`.
  /// [userAccessUrl] The SAML 2.0 identity provider (IdP) user access URL.
  DirectorySamlProperties({
    this.relayStateParameterName,
    this.status,
    this.userAccessUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relayStateParameterName': ?relayStateParameterName,
      'status': ?status,
      'userAccessUrl': ?userAccessUrl,
    };
  }

  factory DirectorySamlProperties.fromMap(Map<String, dynamic> map) {
    return DirectorySamlProperties(
      relayStateParameterName: map['relayStateParameterName'] == null
          ? null
          : map['relayStateParameterName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      userAccessUrl: map['userAccessUrl'] == null
          ? null
          : map['userAccessUrl'] as String,
    );
  }
}
