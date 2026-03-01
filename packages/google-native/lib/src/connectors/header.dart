// ignore_for_file: unused_element, unnecessary_cast

/// Header details for a given header to be added to Endpoint.
class Header {
  /// Key of Header.
  final String? key;

  /// Value of Header.
  final String? value;

  /// Creates a new [Header].
  /// [key] Key of Header.
  /// [value] Value of Header.
  Header({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory Header.fromMap(Map<String, dynamic> map) {
    return Header(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
