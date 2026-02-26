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

  GetCipherTextResult({
    required this.ciphertextBlob,
    this.context,
    required this.id,
    required this.keyId,
    required this.plaintext,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ciphertextBlob'] = ciphertextBlob;
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    map['id'] = id;
    map['keyId'] = keyId;
    map['plaintext'] = plaintext;
    map['region'] = region;
    return map;
  }

  factory GetCipherTextResult.fromMap(Map<String, dynamic> map) {
    return GetCipherTextResult(
      ciphertextBlob: map['ciphertextBlob'] as String,
      context: map['context'] == null
          ? null
          : (map['context'] as Map).cast<String, String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      plaintext: map['plaintext'] as String,
      region: map['region'] as String,
    );
  }
}
