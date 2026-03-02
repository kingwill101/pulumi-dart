// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'l3_export_route_policy_response.dart';

/// Connected Subnet Route Policy properties.
class ConnectedSubnetRoutePolicyResponse {
  /// Array of ARM Resource ID of the RoutePolicies.
  final pulumi.Input<L3ExportRoutePolicyResponse>? exportRoutePolicy;
  /// ARM Resource ID of the Route Policy. This is used for the backward compatibility.
  final pulumi.Input<String>? exportRoutePolicyId;

  /// Creates a new [ConnectedSubnetRoutePolicyResponse].
  /// [exportRoutePolicy] Array of ARM Resource ID of the RoutePolicies.
  /// [exportRoutePolicyId] ARM Resource ID of the Route Policy. This is used for the backward compatibility.
  ConnectedSubnetRoutePolicyResponse({
    this.exportRoutePolicy,
    this.exportRoutePolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportRoutePolicy': ?pulumi.Input.mapOptionalInputValue<L3ExportRoutePolicyResponse, Map<String, dynamic>>(exportRoutePolicy, (value) => value.toMap()),
      'exportRoutePolicyId': ?exportRoutePolicyId,
    };
  }

  factory ConnectedSubnetRoutePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedSubnetRoutePolicyResponse(
      exportRoutePolicy: map['exportRoutePolicy'] == null ? null : (L3ExportRoutePolicyResponse.fromMap((map['exportRoutePolicy'] as Map).cast<String, dynamic>())).input(),
      exportRoutePolicyId: map['exportRoutePolicyId'] == null ? null : (map['exportRoutePolicyId'] as String).input(),
    );
  }
}

