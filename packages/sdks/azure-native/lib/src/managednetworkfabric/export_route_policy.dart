// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Export Route Policy either IPv4 or IPv6.
class ExportRoutePolicy {
  /// ARM resource ID of RoutePolicy.
  final pulumi.Input<String>? exportIpv4RoutePolicyId;
  /// ARM resource ID of RoutePolicy.
  final pulumi.Input<String>? exportIpv6RoutePolicyId;

  /// Creates a new [ExportRoutePolicy].
  /// [exportIpv4RoutePolicyId] ARM resource ID of RoutePolicy.
  /// [exportIpv6RoutePolicyId] ARM resource ID of RoutePolicy.
  ExportRoutePolicy({
    this.exportIpv4RoutePolicyId,
    this.exportIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RoutePolicyId': ?exportIpv4RoutePolicyId,
      'exportIpv6RoutePolicyId': ?exportIpv6RoutePolicyId,
    };
  }

  factory ExportRoutePolicy.fromMap(Map<String, dynamic> map) {
    return ExportRoutePolicy(
      exportIpv4RoutePolicyId: (() { final guardedValue = map['exportIpv4RoutePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportIpv6RoutePolicyId: (() { final guardedValue = map['exportIpv6RoutePolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

