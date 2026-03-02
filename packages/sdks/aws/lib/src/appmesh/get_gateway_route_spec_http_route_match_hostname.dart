// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteMatchHostname {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> suffix;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchHostname].
  /// [exact] Required.
  /// [suffix] Required.
  GetGatewayRouteSpecHttpRouteMatchHostname({
    required this.exact,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'suffix': suffix,
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatchHostname.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchHostname(
      exact: (map['exact'] as String).input(),
      suffix: (map['suffix'] as String).input(),
    );
  }
}

