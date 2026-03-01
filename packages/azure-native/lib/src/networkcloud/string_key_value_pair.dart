// ignore_for_file: unused_element, unnecessary_cast


class StringKeyValuePair {
  /// The key to the mapped value.
  final String key;
  /// The value of the mapping key.
  final String value;

  /// Creates a new [StringKeyValuePair].
  /// [key] The key to the mapped value.
  /// [value] The value of the mapping key.
  StringKeyValuePair({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory StringKeyValuePair.fromMap(Map<String, dynamic> map) {
    return StringKeyValuePair(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

