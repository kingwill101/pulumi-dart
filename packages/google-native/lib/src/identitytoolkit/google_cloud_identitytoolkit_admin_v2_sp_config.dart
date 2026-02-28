// ignore_for_file: unused_element, unnecessary_cast

/// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
class GoogleCloudIdentitytoolkitAdminV2SpConfig {
  /// Callback URI where responses from IDP are handled.
  final String? callbackUri;

  /// Unique identifier for all SAML entities.
  final String? spEntityId;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2SpConfig].
  /// [callbackUri] Callback URI where responses from IDP are handled.
  /// [spEntityId] Unique identifier for all SAML entities.
  GoogleCloudIdentitytoolkitAdminV2SpConfig({
    this.callbackUri,
    this.spEntityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final callbackUriValue = callbackUri;
    if (callbackUriValue != null) {
      map['callbackUri'] = callbackUriValue;
    }
    final spEntityIdValue = spEntityId;
    if (spEntityIdValue != null) {
      map['spEntityId'] = spEntityIdValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2SpConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2SpConfig(
      callbackUri:
          map['callbackUri'] == null ? null : map['callbackUri'] as String,
      spEntityId:
          map['spEntityId'] == null ? null : map['spEntityId'] as String,
    );
  }
}
