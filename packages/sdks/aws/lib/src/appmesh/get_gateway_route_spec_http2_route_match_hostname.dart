// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteMatchHostname {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> suffix;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchHostname].
  /// [exact] Required.
  /// [suffix] Required.
  GetGatewayRouteSpecHttp2RouteMatchHostname({
    required this.exact,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'suffix': suffix,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHostname.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHostname(
      exact: (map['exact'] as String).input(),
      suffix: (map['suffix'] as String).input(),
    );
  }
}

