// ignore_for_file: unused_element, unnecessary_cast

/// A product label represented as a key-value pair.
class KeyValueResponse {
  /// The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  final String key;

  /// The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  final String value;

  /// Creates a new [KeyValueResponse].
  /// [key] The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  /// [value] The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  KeyValueResponse({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory KeyValueResponse.fromMap(Map<String, dynamic> map) {
    return KeyValueResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
