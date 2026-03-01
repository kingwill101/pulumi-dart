// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_group_response.dart';
import 'managed_network_peering_policy_response.dart';

/// The collection of Connectivity related groups and policies within the Managed Network
class ConnectivityCollectionResponse {
  /// The collection of connectivity related Managed Network Groups within the Managed Network
  final List<ManagedNetworkGroupResponse> groups;
  /// The collection of Managed Network Peering Policies within the Managed Network
  final List<ManagedNetworkPeeringPolicyResponse> peerings;

  /// Creates a new [ConnectivityCollectionResponse].
  /// [groups] The collection of connectivity related Managed Network Groups within the Managed Network
  /// [peerings] The collection of Managed Network Peering Policies within the Managed Network
  ConnectivityCollectionResponse({
    required this.groups,
    required this.peerings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<ManagedNetworkGroupResponse, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'peerings': pulumi.Input.encodeList<ManagedNetworkPeeringPolicyResponse, Map<String, dynamic>>(peerings, (value) => value.toMap()),
    };
  }

  factory ConnectivityCollectionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityCollectionResponse(
      groups: pulumi.Input.decodeList<ManagedNetworkGroupResponse>(map['groups'], (value) => ManagedNetworkGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      peerings: pulumi.Input.decodeList<ManagedNetworkPeeringPolicyResponse>(map['peerings'], (value) => ManagedNetworkPeeringPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

