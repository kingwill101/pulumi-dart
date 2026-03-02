// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlaintext.
class GetPlaintextResult {
  final String ciphertextBlob;
  final Map<String, String>? encryptionContext;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The globally unique ID of the CMK. It is the ID of the CMK used to decrypt ciphertext.
  final String keyId;
  /// The decrypted plaintext.
  final String plaintext;

  /// Creates a new [GetPlaintextResult].
  /// [ciphertextBlob] Required.
  /// [encryptionContext] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] The globally unique ID of the CMK. It is the ID of the CMK used to decrypt ciphertext.
  /// [plaintext] The decrypted plaintext.
  GetPlaintextResult({
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

  factory GetPlaintextResult.fromMap(Map<String, dynamic> map) {
    return GetPlaintextResult(
      ciphertextBlob: map['ciphertextBlob'] as String,
      encryptionContext: map['encryptionContext'] == null ? null : (map['encryptionContext']! as Map).cast<String, String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}

