// ignore_for_file: unused_element, unnecessary_cast

/// Specification determining how headers are added to requests or responses.
class HttpHeaderOptionComputeV1 {
  /// The name of the header.
  final String? headerName;

  /// The value of the header to add.
  final String? headerValue;

  /// If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header. The default value is false.
  final bool? replace;

  HttpHeaderOptionComputeV1({
    this.headerName,
    this.headerValue,
    this.replace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerNameValue = headerName;
    if (headerNameValue != null) {
      map['headerName'] = headerNameValue;
    }
    final headerValueValue = headerValue;
    if (headerValueValue != null) {
      map['headerValue'] = headerValueValue;
    }
    final replaceValue = replace;
    if (replaceValue != null) {
      map['replace'] = replaceValue;
    }
    return map;
  }

  factory HttpHeaderOptionComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpHeaderOptionComputeV1(
      headerName:
          map['headerName'] == null ? null : map['headerName'] as String,
      headerValue:
          map['headerValue'] == null ? null : map['headerValue'] as String,
      replace: map['replace'] == null ? null : map['replace'] as bool,
    );
  }
}
