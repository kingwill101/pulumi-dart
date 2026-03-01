// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_node_policy_bond.dart';

class ClusterNetworksIpAllocationPolicyNodePolicy {
  /// Bond information See `bonds` below.
  final List<ClusterNetworksIpAllocationPolicyNodePolicyBond>? bonds;
  final String? nodeId;

  /// Creates a new [ClusterNetworksIpAllocationPolicyNodePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [nodeId] Optional.
  ClusterNetworksIpAllocationPolicyNodePolicy({
    this.bonds,
    this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?bonds == null ? null : pulumi.Input.encodeList<ClusterNetworksIpAllocationPolicyNodePolicyBond, Map<String, dynamic>>(bonds!, (value) => value.toMap()),
      'nodeId': ?nodeId,
    };
  }

  factory ClusterNetworksIpAllocationPolicyNodePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicyNodePolicy(
      bonds: map['bonds'] == null ? null : pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyNodePolicyBond>(map['bonds'], (value) => ClusterNetworksIpAllocationPolicyNodePolicyBond.fromMap((value as Map).cast<String, dynamic>())),
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
    );
  }
}

