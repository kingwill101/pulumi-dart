// ignore_for_file: unused_element, unnecessary_cast

/// SAML SP (service provider) configuration.
class SamlSpConfigResponse {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  final String assertionConsumerServiceUri;

  /// The SAML **Entity ID** for this service provider.
  final String entityId;

  SamlSpConfigResponse({
    required this.assertionConsumerServiceUri,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assertionConsumerServiceUri'] = assertionConsumerServiceUri;
    map['entityId'] = entityId;
    return map;
  }

  factory SamlSpConfigResponse.fromMap(Map<String, dynamic> map) {
    return SamlSpConfigResponse(
      assertionConsumerServiceUri: map['assertionConsumerServiceUri'] as String,
      entityId: map['entityId'] as String,
    );
  }
}
