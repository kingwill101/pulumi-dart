// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_placement_policy_type.dart';

/// Allocation configuration used by Batch Service to provision the nodes.
class NodePlacementConfiguration {
  /// Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
  final pulumi.Input<NodePlacementPolicyType>? policy;

  /// Creates a new [NodePlacementConfiguration].
  /// [policy] Allocation policy used by Batch Service to provision the nodes. If not specified, Batch will use the regional policy.
  NodePlacementConfiguration({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<NodePlacementPolicyType, String>(policy, (value) => value.value),
    };
  }

  factory NodePlacementConfiguration.fromMap(Map<String, dynamic> map) {
    return NodePlacementConfiguration(
      policy: map['policy'] == null ? null : (NodePlacementPolicyType.fromValue(map['policy']! as String)).input(),
    );
  }
}

