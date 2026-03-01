// ignore_for_file: unused_element, unnecessary_cast


class EmailIdentityDkimSigningAttributes {
  /// [Easy DKIM] The key length of the DKIM key pair in use.
  final String? currentSigningKeyLength;
  /// [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding.
  ///
  /// > **NOTE:** You have to delete the first and last lines ('-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----', respectively) of the generated private key. Additionally, you have to remove the line breaks in the generated private key. The resulting value is a string of characters with no spaces or line breaks.
  final String? domainSigningPrivateKey;
  /// [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain.
  final String? domainSigningSelector;
  /// [Easy DKIM] The last time a key pair was generated for this identity.
  final String? lastKeyGenerationTimestamp;
  /// [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day. Valid values: `RSA_1024_BIT`, `RSA_2048_BIT`.
  final String? nextSigningKeyLength;
  /// A string that indicates how DKIM was configured for the identity. `AWS_SES` indicates that DKIM was configured for the identity by using Easy DKIM. `EXTERNAL` indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).
  final String? signingAttributesOrigin;
  /// Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the [AWS SES API v2 Reference](https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_DkimAttributes.html#SES-Type-DkimAttributes-Status) for supported statuses.
  final String? status;
  /// If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.
  final List<String>? tokens;

  /// Creates a new [EmailIdentityDkimSigningAttributes].
  /// [currentSigningKeyLength] [Easy DKIM] The key length of the DKIM key pair in use.
  /// [domainSigningPrivateKey] [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding.
  /// [domainSigningSelector] [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain.
  /// [lastKeyGenerationTimestamp] [Easy DKIM] The last time a key pair was generated for this identity.
  /// [nextSigningKeyLength] [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day. Valid values: `RSA_1024_BIT`, `RSA_2048_BIT`.
  /// [signingAttributesOrigin] A string that indicates how DKIM was configured for the identity. `AWS_SES` indicates that DKIM was configured for the identity by using Easy DKIM. `EXTERNAL` indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).
  /// [status] Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the [AWS SES API v2 Reference](https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_DkimAttributes.html#SES-Type-DkimAttributes-Status) for supported statuses.
  /// [tokens] If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.
  EmailIdentityDkimSigningAttributes({
    this.currentSigningKeyLength,
    this.domainSigningPrivateKey,
    this.domainSigningSelector,
    this.lastKeyGenerationTimestamp,
    this.nextSigningKeyLength,
    this.signingAttributesOrigin,
    this.status,
    this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSigningKeyLength': ?currentSigningKeyLength,
      'domainSigningPrivateKey': ?domainSigningPrivateKey,
      'domainSigningSelector': ?domainSigningSelector,
      'lastKeyGenerationTimestamp': ?lastKeyGenerationTimestamp,
      'nextSigningKeyLength': ?nextSigningKeyLength,
      'signingAttributesOrigin': ?signingAttributesOrigin,
      'status': ?status,
      'tokens': ?tokens,
    };
  }

  factory EmailIdentityDkimSigningAttributes.fromMap(Map<String, dynamic> map) {
    return EmailIdentityDkimSigningAttributes(
      currentSigningKeyLength: map['currentSigningKeyLength'] == null ? null : map['currentSigningKeyLength'] as String,
      domainSigningPrivateKey: map['domainSigningPrivateKey'] == null ? null : map['domainSigningPrivateKey'] as String,
      domainSigningSelector: map['domainSigningSelector'] == null ? null : map['domainSigningSelector'] as String,
      lastKeyGenerationTimestamp: map['lastKeyGenerationTimestamp'] == null ? null : map['lastKeyGenerationTimestamp'] as String,
      nextSigningKeyLength: map['nextSigningKeyLength'] == null ? null : map['nextSigningKeyLength'] as String,
      signingAttributesOrigin: map['signingAttributesOrigin'] == null ? null : map['signingAttributesOrigin'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tokens: map['tokens'] == null ? null : (map['tokens'] as List).cast<String>(),
    );
  }
}

