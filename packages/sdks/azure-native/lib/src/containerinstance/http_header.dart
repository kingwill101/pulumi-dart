// ignore_for_file: unused_element, unnecessary_cast


/// The HTTP header.
class HttpHeader {
  /// The header name.
  final String? name;
  /// The header value.
  final String? value;

  /// Creates a new [HttpHeader].
  /// [name] The header name.
  /// [value] The header value.
  HttpHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HttpHeader.fromMap(Map<String, dynamic> map) {
    return HttpHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

