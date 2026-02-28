// ignore_for_file: unused_element, unnecessary_cast

class KMSEnvMap {
  /// The value of the cipherText response from the `encrypt` method.
  final String? cipherText;

  /// The name of the KMS key that will be used to decrypt the cipher text.
  final String? keyName;

  /// Creates a new [KMSEnvMap].
  /// [cipherText] The value of the cipherText response from the `encrypt` method.
  /// [keyName] The name of the KMS key that will be used to decrypt the cipher text.
  KMSEnvMap({
    this.cipherText,
    this.keyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cipherTextValue = cipherText;
    if (cipherTextValue != null) {
      map['cipherText'] = cipherTextValue;
    }
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    return map;
  }

  factory KMSEnvMap.fromMap(Map<String, dynamic> map) {
    return KMSEnvMap(
      cipherText:
          map['cipherText'] == null ? null : map['cipherText'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
    );
  }
}
