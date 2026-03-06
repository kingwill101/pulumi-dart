// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailIdentityDkimSigningAttributes {
  /// [Easy DKIM] The key length of the DKIM key pair in use.
  final pulumi.Input<String>? currentSigningKeyLength;
  /// [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding.
  ///
  /// &gt; **NOTE:** You have to delete the first and last lines ('-----BEGIN PRIVATE KEY-----' and '-----END PRIVATE KEY-----', respectively) of the generated private key. Additionally, you have to remove the line breaks in the generated private key. The resulting value is a string of characters with no spaces or line breaks.
  final pulumi.Input<String>? domainSigningPrivateKey;
  /// [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain.
  final pulumi.Input<String>? domainSigningSelector;
  /// [Easy DKIM] The last time a key pair was generated for this identity.
  final pulumi.Input<String>? lastKeyGenerationTimestamp;
  /// [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day. Valid values: `RSA_1024_BIT`, `RSA_2048_BIT`.
  final pulumi.Input<String>? nextSigningKeyLength;
  /// A string that indicates how DKIM was configured for the identity. `AWS_SES` indicates that DKIM was configured for the identity by using Easy DKIM. `EXTERNAL` indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).
  final pulumi.Input<String>? signingAttributesOrigin;
  /// Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the [AWS SES API v2 Reference](https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_DkimAttributes.html#SES-Type-DkimAttributes-Status) for supported statuses.
  final pulumi.Input<String>? status;
  /// If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.
  final pulumi.Input<List<String>>? tokens;

  /// Creates a new [EmailIdentityDkimSigningAttributes].
  /// [currentSigningKeyLength] [Easy DKIM] The key length of the DKIM key pair in use.
  /// [domainSigningPrivateKey] [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding.
  /// [domainSigningSelector] [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain.
  /// [lastKeyGenerationTimestamp] [Easy DKIM] The last time a key pair was generated for this identity.
  /// [nextSigningKeyLength] [Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day. Valid values: `RSA_1024_BIT`, `RSA_2048_BIT`.
  /// [signingAttributesOrigin] A string that indicates how DKIM was configured for the identity. `AWS_SES` indicates that DKIM was configured for the identity by using Easy DKIM. `EXTERNAL` indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM).
  /// [status] Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the [AWS SES API v2 Reference](https://docs.aws.amazon.com/ses/latest/APIReference-V2/API_DkimAttributes.html#SES-Type-DkimAttributes-Status) for supported statuses.
  /// [tokens] If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key.
  const EmailIdentityDkimSigningAttributes({
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
      currentSigningKeyLength: (() { final guardedValue = map['currentSigningKeyLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainSigningPrivateKey: (() { final guardedValue = map['domainSigningPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainSigningSelector: (() { final guardedValue = map['domainSigningSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastKeyGenerationTimestamp: (() { final guardedValue = map['lastKeyGenerationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextSigningKeyLength: (() { final guardedValue = map['nextSigningKeyLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingAttributesOrigin: (() { final guardedValue = map['signingAttributesOrigin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

