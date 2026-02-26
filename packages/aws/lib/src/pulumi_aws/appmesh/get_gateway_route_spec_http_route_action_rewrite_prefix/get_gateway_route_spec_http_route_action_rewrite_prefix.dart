// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteActionRewritePrefix {
  final String defaultPrefix;
  final String value;

  GetGatewayRouteSpecHttpRouteActionRewritePrefix({
    required this.defaultPrefix,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultPrefix'] = defaultPrefix;
    map['value'] = value;
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteActionRewritePrefix.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewritePrefix(
      defaultPrefix: map['defaultPrefix'] as String,
      value: map['value'] as String,
    );
  }
}
