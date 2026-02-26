// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteMatchHostname {
  /// Exact host name to match on.
  final String? exact;

  /// Specified ending characters of the host name to match on.
  final String? suffix;

  GatewayRouteSpecHttpRouteMatchHostname({
    this.exact,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    final suffixValue = suffix;
    if (suffixValue != null) {
      map['suffix'] = suffixValue;
    }
    return map;
  }

  factory GatewayRouteSpecHttpRouteMatchHostname.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchHostname(
      exact: map['exact'] == null ? null : map['exact'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}
