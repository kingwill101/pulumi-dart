// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteMatchHostname {
  final String exact;
  final String suffix;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchHostname].
  /// [exact] Required.
  /// [suffix] Required.
  GetGatewayRouteSpecHttpRouteMatchHostname({
    required this.exact,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    map['suffix'] = suffix;
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteMatchHostname.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchHostname(
      exact: map['exact'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
