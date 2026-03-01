// ignore_for_file: unused_element, unnecessary_cast

/// HTTPHeader describes a custom header to be used in HTTP probes
class HTTPHeader {
  /// The header field name
  final String name;

  /// The header field value
  final String? value;

  /// Creates a new [HTTPHeader].
  /// [name] The header field name
  /// [value] The header field value
  HTTPHeader({required this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': ?value};
  }

  factory HTTPHeader.fromMap(Map<String, dynamic> map) {
    return HTTPHeader(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
