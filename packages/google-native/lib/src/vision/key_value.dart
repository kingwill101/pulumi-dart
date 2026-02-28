// ignore_for_file: unused_element, unnecessary_cast


/// A product label represented as a key-value pair.
class KeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  final String? key;
  /// The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  final String? value;

  /// Creates a new [KeyValue].
  /// [key] The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  /// [value] The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  KeyValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory KeyValue.fromMap(Map<String, dynamic> map) {
    return KeyValue(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

