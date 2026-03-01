// ignore_for_file: unused_element, unnecessary_cast


/// The HTTP header.
class HttpHeaderResponse {
  /// The header name.
  final String? name;
  /// The header value.
  final String? value;

  /// Creates a new [HttpHeaderResponse].
  /// [name] The header name.
  /// [value] The header value.
  HttpHeaderResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HttpHeaderResponse.fromMap(Map<String, dynamic> map) {
    return HttpHeaderResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

