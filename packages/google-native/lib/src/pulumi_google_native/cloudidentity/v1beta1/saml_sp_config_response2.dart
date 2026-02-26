// ignore_for_file: unused_element, unnecessary_cast

/// SAML SP (service provider) configuration.
class SamlSpConfigResponse2 {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  final String assertionConsumerServiceUri;

  /// The SAML **Entity ID** for this service provider.
  final String entityId;

  SamlSpConfigResponse2({
    required this.assertionConsumerServiceUri,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assertionConsumerServiceUri'] = assertionConsumerServiceUri;
    map['entityId'] = entityId;
    return map;
  }

  factory SamlSpConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SamlSpConfigResponse2(
      assertionConsumerServiceUri: map['assertionConsumerServiceUri'] as String,
      entityId: map['entityId'] as String,
    );
  }
}
