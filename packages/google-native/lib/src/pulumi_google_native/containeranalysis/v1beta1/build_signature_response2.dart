// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating the signature of the verified build.
class BuildSignatureResponse2 {
  /// An ID for the key used to sign. This could be either an ID for the key stored in `public_key` (such as the ID or fingerprint for a PGP key, or the CN for a cert), or a reference to an external key (such as a reference to a key in Cloud Key Management Service).
  final String keyId;

  /// The type of the key, either stored in `public_key` or referenced in `key_id`.
  final String keyType;

  /// Public key of the builder which can be used to verify that the related findings are valid and unchanged. If `key_type` is empty, this defaults to PEM encoded public keys. This field may be empty if `key_id` references an external key. For Cloud Build based signatures, this is a PEM encoded public key. To verify the Cloud Build signature, place the contents of this field into a file (public.pem). The signature field is base64-decoded into its binary representation in signature.bin, and the provenance bytes from `BuildDetails` are base64-decoded into a binary representation in signed.bin. OpenSSL can then verify the signature: `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  final String publicKey;

  /// Signature of the related `BuildProvenance`. In JSON, this is base-64 encoded.
  final String signature;

  BuildSignatureResponse2({
    required this.keyId,
    required this.keyType,
    required this.publicKey,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['keyType'] = keyType;
    map['publicKey'] = publicKey;
    map['signature'] = signature;
    return map;
  }

  factory BuildSignatureResponse2.fromMap(Map<String, dynamic> map) {
    return BuildSignatureResponse2(
      keyId: map['keyId'] as String,
      keyType: map['keyType'] as String,
      publicKey: map['publicKey'] as String,
      signature: map['signature'] as String,
    );
  }
}
