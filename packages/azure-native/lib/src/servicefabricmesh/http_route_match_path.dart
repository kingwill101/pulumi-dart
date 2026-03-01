// ignore_for_file: unused_element, unnecessary_cast


/// Path to match for routing.
class HttpRouteMatchPath {
  /// replacement string for matched part of the Uri.
  final String? rewrite;
  /// how to match value in the Uri
  final String type;
  /// Uri path to match for request.
  final String value;

  /// Creates a new [HttpRouteMatchPath].
  /// [rewrite] replacement string for matched part of the Uri.
  /// [type] how to match value in the Uri
  /// [value] Uri path to match for request.
  HttpRouteMatchPath({
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

  factory HttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchPath(
      rewrite: map['rewrite'] == null ? null : map['rewrite'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

