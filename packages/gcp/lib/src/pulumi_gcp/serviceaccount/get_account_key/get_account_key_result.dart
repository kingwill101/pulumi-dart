// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountKey.
class GetAccountKeyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyAlgorithm;
  final String name;

  /// The public key, base64 encoded
  final String publicKey;
  final String? publicKeyType;

  GetAccountKeyResult({
    required this.id,
    required this.keyAlgorithm,
    required this.name,
    required this.publicKey,
    this.publicKeyType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['keyAlgorithm'] = keyAlgorithm;
    map['name'] = name;
    map['publicKey'] = publicKey;
    final publicKeyTypeValue = publicKeyType;
    if (publicKeyTypeValue != null) {
      map['publicKeyType'] = publicKeyTypeValue;
    }
    return map;
  }

  factory GetAccountKeyResult.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyResult(
      id: map['id'] as String,
      keyAlgorithm: map['keyAlgorithm'] as String,
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
      publicKeyType:
          map['publicKeyType'] == null ? null : map['publicKeyType'] as String,
    );
  }
}
