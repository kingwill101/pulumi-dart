// ignore_for_file: unused_element, unnecessary_cast

import 'placement_policy_type.dart';

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final String? policyName;

  /// Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final String? tpuTopology;

  /// The type of placement.
  final PlacementPolicyType? type;

  /// Creates a new [PlacementPolicy].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  /// [type] The type of placement.
  PlacementPolicy({this.policyName, this.tpuTopology, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'tpuTopology': ?tpuTopology,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory PlacementPolicy.fromMap(Map<String, dynamic> map) {
    return PlacementPolicy(
      policyName: map['policyName'] == null
          ? null
          : map['policyName'] as String,
      tpuTopology: map['tpuTopology'] == null
          ? null
          : map['tpuTopology'] as String,
      type: map['type'] == null
          ? null
          : PlacementPolicyType.fromValue(map['type'] as String),
    );
  }
}
