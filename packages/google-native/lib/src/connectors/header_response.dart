// ignore_for_file: unused_element, unnecessary_cast

/// Header details for a given header to be added to Endpoint.
class HeaderResponse {
  /// Key of Header.
  final String key;

  /// Value of Header.
  final String value;

  /// Creates a new [HeaderResponse].
  /// [key] Key of Header.
  /// [value] Value of Header.
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
