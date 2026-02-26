// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKMSSecret.
class GetKMSSecretResult {
  final String? additionalAuthenticatedData;
  final String ciphertext;
  final String cryptoKey;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Contains the result of decrypting the provided ciphertext.
  final String plaintext;

  GetKMSSecretResult({
    this.additionalAuthenticatedData,
    required this.ciphertext,
    required this.cryptoKey,
    required this.id,
    required this.plaintext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalAuthenticatedDataValue = additionalAuthenticatedData;
    if (additionalAuthenticatedDataValue != null) {
      map['additionalAuthenticatedData'] = additionalAuthenticatedDataValue;
    }
    map['ciphertext'] = ciphertext;
    map['cryptoKey'] = cryptoKey;
    map['id'] = id;
    map['plaintext'] = plaintext;
    return map;
  }

  factory GetKMSSecretResult.fromMap(Map<String, dynamic> map) {
    return GetKMSSecretResult(
      additionalAuthenticatedData: map['additionalAuthenticatedData'] == null
          ? null
          : map['additionalAuthenticatedData'] as String,
      ciphertext: map['ciphertext'] as String,
      cryptoKey: map['cryptoKey'] as String,
      id: map['id'] as String,
      plaintext: map['plaintext'] as String,
    );
  }
}
