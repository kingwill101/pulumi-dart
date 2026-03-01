// ignore_for_file: unused_element, unnecessary_cast


/// HTTPHeader describes a custom header to be used in HTTP probes
class HTTPHeader {
  /// The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  final String name;
  /// The header field value
  final String value;

  /// Creates a new [HTTPHeader].
  /// [name] The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  /// [value] The header field value
  HTTPHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory HTTPHeader.fromMap(Map<String, dynamic> map) {
    return HTTPHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

