// ignore_for_file: unused_element, unnecessary_cast

import 'add_remove_incremental_named_partition_scaling_mechanism_response.dart';
import 'average_partition_load_scaling_trigger_response.dart';

/// Specifies a metric to load balance a service during runtime.
class ScalingPolicyResponse {
  /// Specifies the mechanism associated with this scaling policy
  final AddRemoveIncrementalNamedPartitionScalingMechanismResponse scalingMechanism;
  /// Specifies the trigger associated with this scaling policy.
  final AveragePartitionLoadScalingTriggerResponse scalingTrigger;

  /// Creates a new [ScalingPolicyResponse].
  /// [scalingMechanism] Specifies the mechanism associated with this scaling policy
  /// [scalingTrigger] Specifies the trigger associated with this scaling policy.
  ScalingPolicyResponse({
    required this.scalingMechanism,
    required this.scalingTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scalingMechanism': scalingMechanism.toMap(),
      'scalingTrigger': scalingTrigger.toMap(),
    };
  }

  factory ScalingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ScalingPolicyResponse(
      scalingMechanism: AddRemoveIncrementalNamedPartitionScalingMechanismResponse.fromMap((map['scalingMechanism'] as Map).cast<String, dynamic>()),
      scalingTrigger: AveragePartitionLoadScalingTriggerResponse.fromMap((map['scalingTrigger'] as Map).cast<String, dynamic>()),
    );
  }
}

