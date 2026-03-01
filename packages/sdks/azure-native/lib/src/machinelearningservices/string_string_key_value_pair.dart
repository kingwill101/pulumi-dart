// ignore_for_file: unused_element, unnecessary_cast


class StringStringKeyValuePair {
  final String? key;
  final String? value;

  /// Creates a new [StringStringKeyValuePair].
  /// [key] Optional.
  /// [value] Optional.
  StringStringKeyValuePair({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory StringStringKeyValuePair.fromMap(Map<String, dynamic> map) {
    return StringStringKeyValuePair(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

