// ignore_for_file: unused_element, unnecessary_cast


/// Path to match for routing.
class HttpRouteMatchPathResponse {
  /// replacement string for matched part of the Uri.
  final String? rewrite;
  /// how to match value in the Uri
  final String type;
  /// Uri path to match for request.
  final String value;

  /// Creates a new [HttpRouteMatchPathResponse].
  /// [rewrite] replacement string for matched part of the Uri.
  /// [type] how to match value in the Uri
  /// [value] Uri path to match for request.
  HttpRouteMatchPathResponse({
    this.rewrite,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?rewrite,
      'type': type,
      'value': value,
    };
  }

  factory HttpRouteMatchPathResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchPathResponse(
      rewrite: map['rewrite'] == null ? null : map['rewrite'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

