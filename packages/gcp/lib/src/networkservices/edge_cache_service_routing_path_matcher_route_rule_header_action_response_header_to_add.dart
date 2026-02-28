// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd {
  /// The name of the header to add.
  final String headerName;

  /// The value of the header to add.
  final String headerValue;

  /// Whether to replace all existing headers with the same name.
  final bool? replace;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd].
  /// [headerName] The name of the header to add.
  /// [headerValue] The value of the header to add.
  /// [replace] Whether to replace all existing headers with the same name.
  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd({
    required this.headerName,
    required this.headerValue,
    this.replace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    final replaceValue = replace;
    if (replaceValue != null) {
      map['replace'] = replaceValue;
    }
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToAdd(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      replace: map['replace'] == null ? null : map['replace'] as bool,
    );
  }
}
