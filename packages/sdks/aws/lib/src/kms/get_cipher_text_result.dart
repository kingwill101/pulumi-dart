// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCipherText.
class GetCipherTextResult {
  /// Base64 encoded ciphertext
  final String ciphertextBlob;
  final Map<String, String>? context;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyId;
  final String plaintext;
  final String region;

  /// Creates a new [GetCipherTextResult].
  /// [ciphertextBlob] Base64 encoded ciphertext
  /// [context] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Required.
  /// [plaintext] Required.
  /// [region] Required.
  GetCipherTextResult({
    required this.ciphertextBlob,
    this.context,
    required this.id,
    required this.keyId,
    required this.plaintext,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertextBlob': ciphertextBlob,
      'context': ?context,
      'id': id,
      'keyId': keyId,
      'plaintext': plaintext,
      'region': region,
    };
  }

  factory GetCipherTextResult.fromMap(Map<String, dynamic> map) {
    return GetCipherTextResult(
      ciphertextBlob: map['ciphertextBlob'] as String,
      context: map['context'] == null ? null : (map['context'] as Map).cast<String, String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      plaintext: map['plaintext'] as String,
      region: map['region'] as String,
    );
  }
}

