// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_group_response.dart';
import 'managed_network_peering_policy_response.dart';

/// The collection of Connectivity related groups and policies within the Managed Network
class ConnectivityCollectionResponse {
  /// The collection of connectivity related Managed Network Groups within the Managed Network
  final pulumi.Input<List<ManagedNetworkGroupResponse>> groups;
  /// The collection of Managed Network Peering Policies within the Managed Network
  final pulumi.Input<List<ManagedNetworkPeeringPolicyResponse>> peerings;

  /// Creates a new [ConnectivityCollectionResponse].
  /// [groups] The collection of connectivity related Managed Network Groups within the Managed Network
  /// [peerings] The collection of Managed Network Peering Policies within the Managed Network
  const ConnectivityCollectionResponse({
    required this.groups,
    required this.peerings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.mapInputValue<List<ManagedNetworkGroupResponse>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<ManagedNetworkGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerings': pulumi.Input.mapInputValue<List<ManagedNetworkPeeringPolicyResponse>, List<Map<String, dynamic>>>(peerings, (value) => pulumi.Input.encodeList<ManagedNetworkPeeringPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConnectivityCollectionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityCollectionResponse(
      groups: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedNetworkGroupResponse>(map['groups']!, (value) => ManagedNetworkGroupResponse.fromMap((value as Map).cast<String, dynamic>()))),
      peerings: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedNetworkPeeringPolicyResponse>(map['peerings']!, (value) => ManagedNetworkPeeringPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
