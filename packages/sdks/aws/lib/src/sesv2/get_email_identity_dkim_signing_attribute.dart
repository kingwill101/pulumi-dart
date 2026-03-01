// ignore_for_file: unused_element, unnecessary_cast


class GetEmailIdentityDkimSigningAttribute {
  /// [Easy DKIM] The key length of the DKIM key pair in use.
  final String currentSigningKeyLength;
  final String domainSigningPrivateKey;
  final String domainSigningSelector;
  /// [Easy DKIM] The last time a key pair was generated for this identity.
  final String lastKeyGenerationTimestamp;
  /// [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day.
  final String nextSigningKeyLength;
  /// A string that indicates how DKIM was configured for the identity. `AWS_SES` indicates that DKIM was configured for the identity by using Easy DKIM. `EXTERNAL` indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).
  final String signingAttributesOrigin;
  /// Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the [AWS SES API v2 Reference](https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_DkimAttributes.html#SES-Type-DkimAttributes-Status) for supported statuses.
  final String status;
  /// If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.
  final List<String> tokens;

  /// Creates a new [GetEmailIdentityDkimSigningAttribute].
  /// [currentSigningKeyLength] [Easy DKIM] The key length of the DKIM key pair in use.
  /// [domainSigningPrivateKey] Required.
  /// [domainSigningSelector] Required.
  /// [lastKeyGenerationTimestamp] [Easy DKIM] The last time a key pair was generated for this identity.
  /// [nextSigningKeyLength] [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day.
  /// [signingAttributesOrigin] A string that indicates how DKIM was configured for the identity. `AWS_SES` indicates that DKIM was configured for the identity by using Easy DKIM. `EXTERNAL` indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).
  /// [status] Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the [AWS SES API v2 Reference](https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_DkimAttributes.html#SES-Type-DkimAttributes-Status) for supported statuses.
  /// [tokens] If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.
  GetEmailIdentityDkimSigningAttribute({
    required this.currentSigningKeyLength,
    required this.domainSigningPrivateKey,
    required this.domainSigningSelector,
    required this.lastKeyGenerationTimestamp,
    required this.nextSigningKeyLength,
    required this.signingAttributesOrigin,
    required this.status,
    required this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSigningKeyLength': currentSigningKeyLength,
      'domainSigningPrivateKey': domainSigningPrivateKey,
      'domainSigningSelector': domainSigningSelector,
      'lastKeyGenerationTimestamp': lastKeyGenerationTimestamp,
      'nextSigningKeyLength': nextSigningKeyLength,
      'signingAttributesOrigin': signingAttributesOrigin,
      'status': status,
      'tokens': tokens,
    };
  }

  factory GetEmailIdentityDkimSigningAttribute.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityDkimSigningAttribute(
      currentSigningKeyLength: map['currentSigningKeyLength'] as String,
      domainSigningPrivateKey: map['domainSigningPrivateKey'] as String,
      domainSigningSelector: map['domainSigningSelector'] as String,
      lastKeyGenerationTimestamp: map['lastKeyGenerationTimestamp'] as String,
      nextSigningKeyLength: map['nextSigningKeyLength'] as String,
      signingAttributesOrigin: map['signingAttributesOrigin'] as String,
      status: map['status'] as String,
      tokens: (map['tokens'] as List).cast<String>(),
    );
  }
}

