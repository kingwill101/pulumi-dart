// ignore_for_file: unused_element, unnecessary_cast

/// SAML SP (service provider) configuration.
class SamlSpConfigResponseCloudidentityV1beta1 {
  /// The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  final String assertionConsumerServiceUri;

  /// The SAML **Entity ID** for this service provider.
  final String entityId;

  /// Creates a new [SamlSpConfigResponseCloudidentityV1beta1].
  /// [assertionConsumerServiceUri] The SAML **Assertion Consumer Service (ACS) URL** to be used for the IDP-initiated login. Assumed to accept response messages via the `HTTP-POST` binding.
  /// [entityId] The SAML **Entity ID** for this service provider.
  SamlSpConfigResponseCloudidentityV1beta1({
    required this.assertionConsumerServiceUri,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assertionConsumerServiceUri'] = assertionConsumerServiceUri;
    map['entityId'] = entityId;
    return map;
  }

  factory SamlSpConfigResponseCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SamlSpConfigResponseCloudidentityV1beta1(
      assertionConsumerServiceUri: map['assertionConsumerServiceUri'] as String,
      entityId: map['entityId'] as String,
    );
  }
}
