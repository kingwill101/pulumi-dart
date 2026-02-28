// ignore_for_file: unused_element, unnecessary_cast

/// Specification determining how headers are added to requests or responses.
class HttpHeaderOptionResponseComputeBeta {
  /// The name of the header.
  final String headerName;

  /// The value of the header to add.
  final String headerValue;

  /// If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header. The default value is false.
  final bool replace;

  /// Creates a new [HttpHeaderOptionResponseComputeBeta].
  /// [headerName] The name of the header.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header. The default value is false.
  HttpHeaderOptionResponseComputeBeta({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    map['replace'] = replace;
    return map;
  }

  factory HttpHeaderOptionResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return HttpHeaderOptionResponseComputeBeta(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      replace: map['replace'] as bool,
    );
  }
}
