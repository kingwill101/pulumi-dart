// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch {
  final pulumi.Input<String> exact;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] Required.
  const GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}

