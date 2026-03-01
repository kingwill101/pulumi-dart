// ignore_for_file: unused_element, unnecessary_cast

/// Message encapsulating the signature of the verified build.
class BuildSignatureResponse {
  /// An Id for the key used to sign. This could be either an Id for the key stored in `public_key` (such as the Id or fingerprint for a PGP key, or the CN for a cert), or a reference to an external key (such as a reference to a key in Cloud Key Management Service).
  final String keyId;

  /// The type of the key, either stored in `public_key` or referenced in `key_id`
  final String keyType;

  /// Public key of the builder which can be used to verify that the related findings are valid and unchanged. If `key_type` is empty, this defaults to PEM encoded public keys. This field may be empty if `key_id` references an external key. For Cloud Build based signatures, this is a PEM encoded public key. To verify the Cloud Build signature, place the contents of this field into a file (public.pem). The signature field is base64-decoded into its binary representation in signature.bin, and the provenance bytes from `BuildDetails` are base64-decoded into a binary representation in signed.bin. OpenSSL can then verify the signature: `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  final String publicKey;

  /// Signature of the related `BuildProvenance`, encoded in a base64 string.
  final String signature;

  /// Creates a new [BuildSignatureResponse].
  /// [keyId] An Id for the key used to sign. This could be either an Id for the key stored in `public_key` (such as the Id or fingerprint for a PGP key, or the CN for a cert), or a reference to an external key (such as a reference to a key in Cloud Key Management Service).
  /// [keyType] The type of the key, either stored in `public_key` or referenced in `key_id`
  /// [publicKey] Public key of the builder which can be used to verify that the related findings are valid and unchanged. If `key_type` is empty, this defaults to PEM encoded public keys. This field may be empty if `key_id` references an external key. For Cloud Build based signatures, this is a PEM encoded public key. To verify the Cloud Build signature, place the contents of this field into a file (public.pem). The signature field is base64-decoded into its binary representation in signature.bin, and the provenance bytes from `BuildDetails` are base64-decoded into a binary representation in signed.bin. OpenSSL can then verify the signature: `openssl sha256 -verify public.pem -signature signature.bin signed.bin`
  /// [signature] Signature of the related `BuildProvenance`, encoded in a base64 string.
  BuildSignatureResponse({
    required this.keyId,
    required this.keyType,
    required this.publicKey,
    required this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keyType': keyType,
      'publicKey': publicKey,
      'signature': signature,
    };
  }

  factory BuildSignatureResponse.fromMap(Map<String, dynamic> map) {
    return BuildSignatureResponse(
      keyId: map['keyId'] as String,
      keyType: map['keyType'] as String,
      publicKey: map['publicKey'] as String,
      signature: map['signature'] as String,
    );
  }
}
