// ignore_for_file: unused_element, unnecessary_cast


class EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove {
  /// Headers to remove from the response prior to sending it back to the client.
  /// Response headers are only sent to the client, and do not have an effect on the cache serving the response.
  final String headerName;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove].
  /// [headerName] Headers to remove from the response prior to sending it back to the client.
  EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove({
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderActionResponseHeaderToRemove(
      headerName: map['headerName'] as String,
    );
  }
}

