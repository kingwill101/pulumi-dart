// ignore_for_file: unused_element, unnecessary_cast


class TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration {
  /// Specifies the path of the source attribute in the JWT from the trusted token issuer.
  final String claimAttributePath;
  /// Specifies path of the destination attribute in a JWT from IAM Identity Center. The attribute mapped by this JMESPath expression is compared against the attribute mapped by `claim_attribute_path` when a trusted token issuer token is exchanged for an IAM Identity Center token.
  final String identityStoreAttributePath;
  /// Specifies the URL that IAM Identity Center uses for OpenID Discovery. OpenID Discovery is used to obtain the information required to verify the tokens that the trusted token issuer generates.
  final String issuerUrl;
  /// The method that the trusted token issuer can use to retrieve the JSON Web Key Set used to verify a JWT. Valid values are `OPEN_ID_DISCOVERY`
  final String jwksRetrievalOption;

  /// Creates a new [TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration].
  /// [claimAttributePath] Specifies the path of the source attribute in the JWT from the trusted token issuer.
  /// [identityStoreAttributePath] Specifies path of the destination attribute in a JWT from IAM Identity Center. The attribute mapped by this JMESPath expression is compared against the attribute mapped by `claim_attribute_path` when a trusted token issuer token is exchanged for an IAM Identity Center token.
  /// [issuerUrl] Specifies the URL that IAM Identity Center uses for OpenID Discovery. OpenID Discovery is used to obtain the information required to verify the tokens that the trusted token issuer generates.
  /// [jwksRetrievalOption] The method that the trusted token issuer can use to retrieve the JSON Web Key Set used to verify a JWT. Valid values are `OPEN_ID_DISCOVERY`
  TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration({
    required this.claimAttributePath,
    required this.identityStoreAttributePath,
    required this.issuerUrl,
    required this.jwksRetrievalOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimAttributePath': claimAttributePath,
      'identityStoreAttributePath': identityStoreAttributePath,
      'issuerUrl': issuerUrl,
      'jwksRetrievalOption': jwksRetrievalOption,
    };
  }

  factory TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration.fromMap(Map<String, dynamic> map) {
    return TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration(
      claimAttributePath: map['claimAttributePath'] as String,
      identityStoreAttributePath: map['identityStoreAttributePath'] as String,
      issuerUrl: map['issuerUrl'] as String,
      jwksRetrievalOption: map['jwksRetrievalOption'] as String,
    );
  }
}

