// ignore_for_file: unused_element, unnecessary_cast

class URLMapHeaderActionResponseHeadersToAdd {
  /// The name of the header to add.
  final String headerName;

  /// The value of the header to add.
  final String headerValue;

  /// If false, headerValue is appended to any values that already exist for the header.
  /// If true, headerValue is set for the header, discarding any values that were set for that header.
  final bool replace;

  /// Creates a new [URLMapHeaderActionResponseHeadersToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header.
  URLMapHeaderActionResponseHeadersToAdd({
    required this.headerName,
    required this.headerValue,
    required this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'replace': replace,
    };
  }

  factory URLMapHeaderActionResponseHeadersToAdd.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapHeaderActionResponseHeadersToAdd(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      replace: map['replace'] as bool,
    );
  }
}
