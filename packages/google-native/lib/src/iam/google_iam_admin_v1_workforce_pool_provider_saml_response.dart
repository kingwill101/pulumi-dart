// ignore_for_file: unused_element, unnecessary_cast

/// Represents a SAML identity provider.
class GoogleIamAdminV1WorkforcePoolProviderSamlResponse {
  /// SAML Identity provider configuration metadata xml doc. The xml document should comply with [SAML 2.0 specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf). The max size of the acceptable xml document will be bounded to 128k characters. The metadata xml document should satisfy the following constraints: 1) Must contain an Identity Provider Entity ID. 2) Must contain at least one non-expired signing key certificate. 3) For each signing key: a) Valid from should be no more than 7 days from now. b) Valid to should be no more than 15 years in the future. 4) Up to 3 IdP signing keys are allowed in the metadata xml. When updating the provider's metadata xml, at least one non-expired signing key must overlap with the existing metadata. This requirement is skipped if there are no non-expired signing keys present in the existing metadata.
  final String idpMetadataXml;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderSamlResponse].
  /// [idpMetadataXml] SAML Identity provider configuration metadata xml doc. The xml document should comply with [SAML 2.0 specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf). The max size of the acceptable xml document will be bounded to 128k characters. The metadata xml document should satisfy the following constraints: 1) Must contain an Identity Provider Entity ID. 2) Must contain at least one non-expired signing key certificate. 3) For each signing key: a) Valid from should be no more than 7 days from now. b) Valid to should be no more than 15 years in the future. 4) Up to 3 IdP signing keys are allowed in the metadata xml. When updating the provider's metadata xml, at least one non-expired signing key must overlap with the existing metadata. This requirement is skipped if there are no non-expired signing keys present in the existing metadata.
  GoogleIamAdminV1WorkforcePoolProviderSamlResponse({
    required this.idpMetadataXml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'idpMetadataXml': idpMetadataXml};
  }

  factory GoogleIamAdminV1WorkforcePoolProviderSamlResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleIamAdminV1WorkforcePoolProviderSamlResponse(
      idpMetadataXml: map['idpMetadataXml'] as String,
    );
  }
}
