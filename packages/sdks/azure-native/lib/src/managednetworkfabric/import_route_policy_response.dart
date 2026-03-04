// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import Route Policy either IPv4 or IPv6.
class ImportRoutePolicyResponse {
  /// ARM resource ID of RoutePolicy.
  final pulumi.Input<String>? importIpv4RoutePolicyId;

  /// ARM resource ID of RoutePolicy.
  final pulumi.Input<String>? importIpv6RoutePolicyId;

  /// Creates a new [ImportRoutePolicyResponse].
  /// [importIpv4RoutePolicyId] ARM resource ID of RoutePolicy.
  /// [importIpv6RoutePolicyId] ARM resource ID of RoutePolicy.
  ImportRoutePolicyResponse({
    this.importIpv4RoutePolicyId,
    this.importIpv6RoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importIpv4RoutePolicyId': ?importIpv4RoutePolicyId,
      'importIpv6RoutePolicyId': ?importIpv6RoutePolicyId,
    };
  }

  factory ImportRoutePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ImportRoutePolicyResponse(
      importIpv4RoutePolicyId: (() {
        final guardedValue = map['importIpv4RoutePolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      importIpv6RoutePolicyId: (() {
        final guardedValue = map['importIpv6RoutePolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
