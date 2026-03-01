// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd {
  /// The name of the header to add.
  final String headerName;

  /// The value of the header to add.
  final String headerValue;

  /// If false, headerValue is appended to any values that already exist for the header.
  /// If true, headerValue is set for the header, discarding any values that were set for that header.
  final bool replace;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] If false, headerValue is appended to any values that already exist for the header.
  URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd({
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

  factory URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAdd(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      replace: map['replace'] as bool,
    );
  }
}
