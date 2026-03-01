// ignore_for_file: unused_element, unnecessary_cast


/// The HTTP header.
class HTTPHeaderResponse {
  /// The name in HTTP header.
  final String? name;
  /// The value in HTTP header.
  final String? value;

  /// Creates a new [HTTPHeaderResponse].
  /// [name] The name in HTTP header.
  /// [value] The value in HTTP header.
  HTTPHeaderResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HTTPHeaderResponse.fromMap(Map<String, dynamic> map) {
    return HTTPHeaderResponse(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

