// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteActionRewritePrefix {
  /// Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  final String? defaultPrefix;

  /// Value used to replace the incoming route prefix when rewritten.
  final String? value;

  GatewayRouteSpecHttpRouteActionRewritePrefix({
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

  factory GatewayRouteSpecHttpRouteActionRewritePrefix.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewritePrefix(
      defaultPrefix:
          map['defaultPrefix'] == null ? null : map['defaultPrefix'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
