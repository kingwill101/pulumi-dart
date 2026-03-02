// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Array of ARM Resource ID of the RoutePolicies.
class L3ExportRoutePolicy {
  /// ARM Resource ID of the RoutePolicy.
  final pulumi.Input<String>? exportIpv4RoutePolicyId;
  /// ARM Resource ID of the RoutePolicy.
  final pulumi.Input<String>? exportIpv6RoutePolicyId;

  /// Creates a new [L3ExportRoutePolicy].
  /// [exportIpv4RoutePolicyId] ARM Resource ID of the RoutePolicy.
  /// [exportIpv6RoutePolicyId] ARM Resource ID of the RoutePolicy.
  L3ExportRoutePolicy({
    this.exportIpv4RoutePolicyId,
    this.exportIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RoutePolicyId': ?exportIpv4RoutePolicyId,
      'exportIpv6RoutePolicyId': ?exportIpv6RoutePolicyId,
    };
  }

  factory L3ExportRoutePolicy.fromMap(Map<String, dynamic> map) {
    return L3ExportRoutePolicy(
      exportIpv4RoutePolicyId: map['exportIpv4RoutePolicyId'] == null ? null : (map['exportIpv4RoutePolicyId'] as String).input(),
      exportIpv6RoutePolicyId: map['exportIpv6RoutePolicyId'] == null ? null : (map['exportIpv6RoutePolicyId'] as String).input(),
    );
  }
}

