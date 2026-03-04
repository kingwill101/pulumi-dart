// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route Properties.
class StaticRouteProperties {
  /// List of next hop addresses.
  final pulumi.Input<List<String>> nextHop;

  /// Prefix of the route.
  final pulumi.Input<String> prefix;

  /// Creates a new [StaticRouteProperties].
  /// [nextHop] List of next hop addresses.
  /// [prefix] Prefix of the route.
  StaticRouteProperties({required this.nextHop, required this.prefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nextHop': nextHop, 'prefix': prefix};
  }

  factory StaticRouteProperties.fromMap(Map<String, dynamic> map) {
    return StaticRouteProperties(
      nextHop: pulumi.Input.fromValue((map['nextHop'] as List).cast<String>()),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
