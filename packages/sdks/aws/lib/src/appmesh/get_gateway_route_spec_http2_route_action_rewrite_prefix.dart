// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteActionRewritePrefix {
  final pulumi.Input<String> defaultPrefix;
  final pulumi.Input<String> value;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewritePrefix].
  /// [defaultPrefix] Required.
  /// [value] Required.
  GetGatewayRouteSpecHttp2RouteActionRewritePrefix({
    required this.defaultPrefix,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultPrefix': defaultPrefix, 'value': value};
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttp2RouteActionRewritePrefix(
      defaultPrefix: pulumi.Input.fromValue(map['defaultPrefix'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
