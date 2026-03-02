// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'l3_export_route_policy.dart';

/// Connected Subnet Route Policy properties.
class ConnectedSubnetRoutePolicy {
  /// Array of ARM Resource ID of the RoutePolicies.
  final pulumi.Input<L3ExportRoutePolicy>? exportRoutePolicy;
  /// ARM Resource ID of the Route Policy. This is used for the backward compatibility.
  final pulumi.Input<String>? exportRoutePolicyId;

  /// Creates a new [ConnectedSubnetRoutePolicy].
  /// [exportRoutePolicy] Array of ARM Resource ID of the RoutePolicies.
  /// [exportRoutePolicyId] ARM Resource ID of the Route Policy. This is used for the backward compatibility.
  ConnectedSubnetRoutePolicy({
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportRoutePolicy': ?pulumi.Input.mapOptionalInputValue<L3ExportRoutePolicy, Map<String, dynamic>>(exportRoutePolicy, (value) => value.toMap()),
      'exportRoutePolicyId': ?exportRoutePolicyId,
    };
  }

  factory ConnectedSubnetRoutePolicy.fromMap(Map<String, dynamic> map) {
    return ConnectedSubnetRoutePolicy(
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : (L3ExportRoutePolicy.fromMap((map['exportRoutePolicy']! as Map).cast<String, dynamic>())).input(),
      exportRoutePolicyId: map['exportRoutePolicyId'] == null ? null : (map['exportRoutePolicyId']! as String).input(),
    );
  }
}

