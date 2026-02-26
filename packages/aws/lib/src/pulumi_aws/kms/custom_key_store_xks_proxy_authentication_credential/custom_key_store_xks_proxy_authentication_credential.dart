// ignore_for_file: unused_element, unnecessary_cast

class CustomKeyStoreXksProxyAuthenticationCredential {
  /// A unique identifier for the raw secret access key.
  final String accessKeyId;

  /// A secret string of 43-64 characters.
  final String rawSecretAccessKey;

  CustomKeyStoreXksProxyAuthenticationCredential({
    required this.accessKeyId,
    required this.rawSecretAccessKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyId'] = accessKeyId;
    map['rawSecretAccessKey'] = rawSecretAccessKey;
    return map;
  }

  factory CustomKeyStoreXksProxyAuthenticationCredential.fromMap(
      Map<String, dynamic> map) {
    return CustomKeyStoreXksProxyAuthenticationCredential(
      accessKeyId: map['accessKeyId'] as String,
      rawSecretAccessKey: map['rawSecretAccessKey'] as String,
    );
  }
}
