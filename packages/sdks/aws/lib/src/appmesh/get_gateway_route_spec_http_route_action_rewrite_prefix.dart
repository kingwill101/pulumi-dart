// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteActionRewritePrefix {
  final pulumi.Input<String> defaultPrefix;
  final pulumi.Input<String> value;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionRewritePrefix].
  /// [defaultPrefix] Required.
  /// [value] Required.
  GetGatewayRouteSpecHttpRouteActionRewritePrefix({
    required this.defaultPrefix,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPrefix': defaultPrefix,
      'value': value,
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionRewritePrefix.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewritePrefix(
      defaultPrefix: (map['defaultPrefix'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

