// ignore_for_file: unused_element, unnecessary_cast


class SecretStorePropertiesResponse {
  final String inputType;
  final String? secretStoreId;

  /// Creates a new [SecretStorePropertiesResponse].
  /// [inputType] Required.
  /// [secretStoreId] Optional.
  SecretStorePropertiesResponse({
    required this.inputType,
    this.secretStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputType': inputType,
      'secretStoreId': ?secretStoreId,
    };
  }

  factory SecretStorePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretStorePropertiesResponse(
      inputType: map['inputType'] as String,
      secretStoreId: map['secretStoreId'] == null ? null : map['secretStoreId'] as String,
    );
  }
}

