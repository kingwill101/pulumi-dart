// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove {
  /// The name of the header to remove.
  final String headerName;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove].
  /// [headerName] The name of the header to remove.
  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'headerName': headerName};
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove(
      headerName: map['headerName'] as String,
    );
  }
}
