// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapHeaderActionResponseHeadersToAdd {
  /// The name of the header.
  final String? headerName;

  /// The value of the header to add.
  final String? headerValue;

  /// If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header.
  /// The default value is false.
  final bool? replace;

  /// Creates a new [RegionUrlMapHeaderActionResponseHeadersToAdd].
  /// [headerName] The name of the header.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header. If true, headerValue is set for the header, discarding any values that were set for that header.
  RegionUrlMapHeaderActionResponseHeadersToAdd({
    this.headerName,
    this.headerValue,
    this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
      'replace': ?replace,
    };
  }

  factory RegionUrlMapHeaderActionResponseHeadersToAdd.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapHeaderActionResponseHeadersToAdd(
      headerName: map['headerName'] == null
          ? null
          : map['headerName'] as String,
      headerValue: map['headerValue'] == null
          ? null
          : map['headerValue'] as String,
      replace: map['replace'] == null ? null : map['replace'] as bool,
    );
  }
}
