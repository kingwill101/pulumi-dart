// ignore_for_file: unused_element, unnecessary_cast


/// Describes header information for http route matching.
class HttpRouteMatchHeader {
  /// Name of header to match in request.
  final String name;
  /// how to match header value
  final String? type;
  /// Value of header to match in request.
  final String? value;

  /// Creates a new [HttpRouteMatchHeader].
  /// [name] Name of header to match in request.
  /// [type] how to match header value
  /// [value] Value of header to match in request.
  HttpRouteMatchHeader({
    required this.name,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': ?type,
      'value': ?value,
    };
  }

  factory HttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchHeader(
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

