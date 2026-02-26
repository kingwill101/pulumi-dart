// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove {
  /// The name of the header to remove.
  final String headerName;

  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionRequestHeaderToRemove(
      headerName: map['headerName'] as String,
    );
  }
}
