// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCiphertext.
class GetCiphertextResult {
  /// The ciphertext of the data key encrypted with the primary CMK version.
  final String ciphertextBlob;
  final Map<String, String>? encryptionContext;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyId;
  final String plaintext;

  /// Creates a new [GetCiphertextResult].
  /// [ciphertextBlob] The ciphertext of the data key encrypted with the primary CMK version.
  /// [encryptionContext] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Required.
  /// [plaintext] Required.
  GetCiphertextResult({
    required this.ciphertextBlob,
    this.encryptionContext,
    required this.id,
    required this.keyId,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphertextBlob': ciphertextBlob,
      'encryptionContext': ?encryptionContext,
      'id': id,
      'keyId': keyId,
      'plaintext': plaintext,
    };
  }

  factory GetCiphertextResult.fromMap(Map<String, dynamic> map) {
    return GetCiphertextResult(
      ciphertextBlob: map['ciphertextBlob'] as String,
      encryptionContext: map['encryptionContext'] == null ? null : (map['encryptionContext'] as Map).cast<String, String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}

