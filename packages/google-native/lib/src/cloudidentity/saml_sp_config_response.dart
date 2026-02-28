// ignore_for_file: unused_element, unnecessary_cast


/// SAML SP (service provider) configuration.
class SamlSpConfigResponse {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  final String assertionConsumerServiceUri;
  /// The SAML **Entity ID** for this service provider.
  final String entityId;

  /// Creates a new [SamlSpConfigResponse].
  /// [assertionConsumerServiceUri] The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  /// [entityId] The SAML **Entity ID** for this service provider.
  SamlSpConfigResponse({
    required this.assertionConsumerServiceUri,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionConsumerServiceUri': assertionConsumerServiceUri,
      'entityId': entityId,
    };
  }

  factory SamlSpConfigResponse.fromMap(Map<String, dynamic> map) {
    return SamlSpConfigResponse(
      assertionConsumerServiceUri: map['assertionConsumerServiceUri'] as String,
      entityId: map['entityId'] as String,
    );
  }
}

