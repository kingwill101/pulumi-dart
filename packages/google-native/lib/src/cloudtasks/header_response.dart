// ignore_for_file: unused_element, unnecessary_cast

/// Defines a header message. A header can have a key and a value.
class HeaderResponse {
  /// The Key of the header.
  final String key;

  /// The Value of the header.
  final String value;

  /// Creates a new [HeaderResponse].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  HeaderResponse({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
