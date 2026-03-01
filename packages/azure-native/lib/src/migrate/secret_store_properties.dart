// ignore_for_file: unused_element, unnecessary_cast


class SecretStoreProperties {
  final String? secretStoreId;

  /// Creates a new [SecretStoreProperties].
  /// [secretStoreId] Optional.
  SecretStoreProperties({
    this.secretStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStoreId': ?secretStoreId,
    };
  }

  factory SecretStoreProperties.fromMap(Map<String, dynamic> map) {
    return SecretStoreProperties(
      secretStoreId: map['secretStoreId'] == null ? null : map['secretStoreId'] as String,
    );
  }
}

