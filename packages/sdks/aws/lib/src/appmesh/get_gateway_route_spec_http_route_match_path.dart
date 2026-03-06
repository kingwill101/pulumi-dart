// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteMatchPath {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> regex;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  const GetGatewayRouteSpecHttpRouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'regex': regex,
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchPath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}

