// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteActionRewritePath {
  final String exact;

  GetGatewayRouteSpecHttpRouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteActionRewritePath.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewritePath(
      exact: map['exact'] as String,
    );
  }
}
