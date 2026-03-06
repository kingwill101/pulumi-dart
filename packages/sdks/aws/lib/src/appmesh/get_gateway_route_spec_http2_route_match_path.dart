// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteMatchPath {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> regex;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  const GetGatewayRouteSpecHttp2RouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'regex': regex,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchPath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}

