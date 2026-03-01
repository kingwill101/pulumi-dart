// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteActionRewritePrefix {
  /// Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  final String? defaultPrefix;

  /// Value used to replace the incoming route prefix when rewritten.
  final String? value;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewritePrefix].
  /// [defaultPrefix] Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  /// [value] Value used to replace the incoming route prefix when rewritten.
  GatewayRouteSpecHttpRouteActionRewritePrefix({
    this.defaultPrefix,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultPrefix': ?defaultPrefix, 'value': ?value};
  }

  factory GatewayRouteSpecHttpRouteActionRewritePrefix.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayRouteSpecHttpRouteActionRewritePrefix(
      defaultPrefix: map['defaultPrefix'] == null
          ? null
          : map['defaultPrefix'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
