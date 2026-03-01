// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd {
  /// The name of the header to add.
  final String headerName;

  /// The value of the header to add.
  final String headerValue;

  /// Whether to replace all existing headers with the same name.
  /// By default, added header values are appended
  /// to the response or request headers with the
  /// same field names. The added values are
  /// separated by commas.
  /// To overwrite existing values, set `replace` to `true`.
  final bool? replace;

  /// Creates a new [EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] Whether to replace all existing headers with the same name.
  EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd({
    required this.headerName,
    required this.headerValue,
    this.replace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'replace': ?replace,
    };
  }

  factory EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      replace: map['replace'] == null ? null : map['replace'] as bool,
    );
  }
}
