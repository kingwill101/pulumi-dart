// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_networks_ip_allocation_policy_node_policy_bond.dart';

class ClusterNetworksIpAllocationPolicyNodePolicy {
  /// Bond information See `bonds` below.
  final pulumi.Input<List<ClusterNetworksIpAllocationPolicyNodePolicyBond>>? bonds;
  final pulumi.Input<String>? nodeId;

  /// Creates a new [ClusterNetworksIpAllocationPolicyNodePolicy].
  /// [bonds] Bond information See `bonds` below.
  /// [nodeId] Optional.
  const ClusterNetworksIpAllocationPolicyNodePolicy({
    this.bonds,
    this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bonds': ?pulumi.Input.mapOptionalInputValue<List<ClusterNetworksIpAllocationPolicyNodePolicyBond>, List<Map<String, dynamic>>>(bonds, (value) => pulumi.Input.encodeList<ClusterNetworksIpAllocationPolicyNodePolicyBond, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeId': ?nodeId,
    };
  }

  factory ClusterNetworksIpAllocationPolicyNodePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworksIpAllocationPolicyNodePolicy(
      bonds: (() { final guardedValue = map['bonds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNetworksIpAllocationPolicyNodePolicyBond>(guardedValue, (value) => ClusterNetworksIpAllocationPolicyNodePolicyBond.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

