// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttpRouteMatchPath {
  /// The exact path to match on.
  final pulumi.Input<String>? exact;
  /// The regex used to match the path.
  final pulumi.Input<String>? regex;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchPath].
  /// [exact] The exact path to match on.
  /// [regex] The regex used to match the path.
  GatewayRouteSpecHttpRouteMatchPath({
    this.exact,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'regex': ?regex,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchPath(
      exact: map['exact'] == null ? null : (map['exact'] as String).input(),
      regex: map['regex'] == null ? null : (map['regex'] as String).input(),
    );
  }
}

