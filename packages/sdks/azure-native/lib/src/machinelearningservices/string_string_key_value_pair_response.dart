// ignore_for_file: unused_element, unnecessary_cast


class StringStringKeyValuePairResponse {
  final String? key;
  final String? value;

  /// Creates a new [StringStringKeyValuePairResponse].
  /// [key] Optional.
  /// [value] Optional.
  StringStringKeyValuePairResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory StringStringKeyValuePairResponse.fromMap(Map<String, dynamic> map) {
    return StringStringKeyValuePairResponse(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

