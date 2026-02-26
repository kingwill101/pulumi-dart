// ignore_for_file: unused_element, unnecessary_cast

import 'placement_policy_type2.dart';

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicy3 {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final String? policyName;

  /// TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final String? tpuTopology;

  /// The type of placement.
  final PlacementPolicyType2? type;

  PlacementPolicy3({
    this.policyName,
    this.tpuTopology,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyNameValue = policyName;
    if (policyNameValue != null) {
      map['policyName'] = policyNameValue;
    }
    final tpuTopologyValue = tpuTopology;
    if (tpuTopologyValue != null) {
      map['tpuTopology'] = tpuTopologyValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory PlacementPolicy3.fromMap(Map<String, dynamic> map) {
    return PlacementPolicy3(
      policyName:
          map['policyName'] == null ? null : map['policyName'] as String,
      tpuTopology:
          map['tpuTopology'] == null ? null : map['tpuTopology'] as String,
      type: map['type'] == null
          ? null
          : PlacementPolicyType2.fromValue(map['type'] as String),
    );
  }
}
