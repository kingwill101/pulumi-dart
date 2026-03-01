// ignore_for_file: unused_element, unnecessary_cast


class RequestMatchPatternResponse {
  final String? method;
  final String? path;

  /// Creates a new [RequestMatchPatternResponse].
  /// [method] Optional.
  /// [path] Optional.
  RequestMatchPatternResponse({
    this.method,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'path': ?path,
    };
  }

  factory RequestMatchPatternResponse.fromMap(Map<String, dynamic> map) {
    return RequestMatchPatternResponse(
      method: map['method'] == null ? null : map['method'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

