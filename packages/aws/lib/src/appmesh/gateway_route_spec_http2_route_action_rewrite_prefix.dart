// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteActionRewritePrefix {
  /// Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  final String? defaultPrefix;

  /// Value used to replace the incoming route prefix when rewritten.
  final String? value;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionRewritePrefix].
  /// [defaultPrefix] Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  /// [value] Value used to replace the incoming route prefix when rewritten.
  GatewayRouteSpecHttp2RouteActionRewritePrefix({
    this.defaultPrefix,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultPrefixValue = defaultPrefix;
    if (defaultPrefixValue != null) {
      map['defaultPrefix'] = defaultPrefixValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionRewritePrefix(
      defaultPrefix:
          map['defaultPrefix'] == null ? null : map['defaultPrefix'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
