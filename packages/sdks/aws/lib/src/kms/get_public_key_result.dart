// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublicKey.
class GetPublicKeyResult {
  /// Key ARN of the asymmetric CMK from which the public key was downloaded.
  final String? arn;
  /// Type of the public key that was downloaded.
  final String? customerMasterKeySpec;
  /// Encryption algorithms that AWS KMS supports for this key. Only set when the `keyUsage` of the public key is `ENCRYPT_DECRYPT`.
  final List<String>? encryptionAlgorithms;
  final List<String>? grantTokens;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyId;
  /// Permitted use of the public key. Valid values are `ENCRYPT_DECRYPT` or `SIGN_VERIFY`
  final String? keyUsage;
  /// Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in [RFC 5280](https://tools.ietf.org/html/rfc5280). The value is Base64-encoded.
  final String? publicKey;
  /// Exported public key. The value is Privacy Enhanced Mail (PEM) encoded.
  final String? publicKeyPem;
  final String? region;
  /// Signing algorithms that AWS KMS supports for this key. Only set when the `keyUsage` of the public key is `SIGN_VERIFY`.
  final List<String>? signingAlgorithms;

  /// Creates a new [GetPublicKeyResult].
  /// [arn] Key ARN of the asymmetric CMK from which the public key was downloaded.
  /// [customerMasterKeySpec] Type of the public key that was downloaded.
  /// [encryptionAlgorithms] Encryption algorithms that AWS KMS supports for this key. Only set when the `keyUsage` of the public key is `ENCRYPT_DECRYPT`.
  /// [grantTokens] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Optional.
  /// [keyUsage] Permitted use of the public key. Valid values are `ENCRYPT_DECRYPT` or `SIGN_VERIFY`
  /// [publicKey] Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in [RFC 5280](https://tools.ietf.org/html/rfc5280). The value is Base64-encoded.
  /// [publicKeyPem] Exported public key. The value is Privacy Enhanced Mail (PEM) encoded.
  /// [region] Optional.
  /// [signingAlgorithms] Signing algorithms that AWS KMS supports for this key. Only set when the `keyUsage` of the public key is `SIGN_VERIFY`.
  const GetPublicKeyResult({
    this.arn,
    this.customerMasterKeySpec,
    this.encryptionAlgorithms,
    this.grantTokens,
    this.id,
    this.keyId,
    this.keyUsage,
    this.publicKey,
    this.publicKeyPem,
    this.region,
    this.signingAlgorithms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customerMasterKeySpec': ?customerMasterKeySpec,
      'encryptionAlgorithms': ?encryptionAlgorithms,
      'grantTokens': ?grantTokens,
      'id': ?id,
      'keyId': ?keyId,
      'keyUsage': ?keyUsage,
      'publicKey': ?publicKey,
      'publicKeyPem': ?publicKeyPem,
      'region': ?region,
      'signingAlgorithms': ?signingAlgorithms,
    };
  }

  factory GetPublicKeyResult.fromMap(Map<String, dynamic> map) {
    return GetPublicKeyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerMasterKeySpec: (() { final guardedValue = map['customerMasterKeySpec']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionAlgorithms: (() { final guardedValue = map['encryptionAlgorithms']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      grantTokens: (() { final guardedValue = map['grantTokens']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyUsage: (() { final guardedValue = map['keyUsage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingAlgorithms: (() { final guardedValue = map['signingAlgorithms']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
