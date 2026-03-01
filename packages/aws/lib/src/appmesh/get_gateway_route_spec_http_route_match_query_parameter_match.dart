// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch {
  final String exact;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] Required.
  GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch({required this.exact});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exact': exact};
  }

  factory GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch(
      exact: map['exact'] as String,
    );
  }
}
