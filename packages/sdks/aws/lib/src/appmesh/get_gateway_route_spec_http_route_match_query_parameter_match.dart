// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch {
  final pulumi.Input<String> exact;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] Required.
  GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}

