// ignore_for_file: unused_element, unnecessary_cast

class DirectorySamlProperties {
  /// The relay state parameter name supported by the SAML 2.0 identity provider (IdP). Default `RelayState`.
  final String? relayStateParameterName;

  /// Status of SAML 2.0 authentication. Default `DISABLED`.
  final String? status;

  /// The SAML 2.0 identity provider (IdP) user access URL.
  final String? userAccessUrl;

  DirectorySamlProperties({
    this.relayStateParameterName,
    this.status,
    this.userAccessUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final relayStateParameterNameValue = relayStateParameterName;
    if (relayStateParameterNameValue != null) {
      map['relayStateParameterName'] = relayStateParameterNameValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final userAccessUrlValue = userAccessUrl;
    if (userAccessUrlValue != null) {
      map['userAccessUrl'] = userAccessUrlValue;
    }
    return map;
  }

  factory DirectorySamlProperties.fromMap(Map<String, dynamic> map) {
    return DirectorySamlProperties(
      relayStateParameterName: map['relayStateParameterName'] == null
          ? null
          : map['relayStateParameterName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      userAccessUrl:
          map['userAccessUrl'] == null ? null : map['userAccessUrl'] as String,
    );
  }
}
