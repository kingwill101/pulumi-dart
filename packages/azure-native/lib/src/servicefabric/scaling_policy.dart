// ignore_for_file: unused_element, unnecessary_cast

import 'add_remove_incremental_named_partition_scaling_mechanism.dart';
import 'average_partition_load_scaling_trigger.dart';

/// Specifies a metric to load balance a service during runtime.
class ScalingPolicy {
  /// Specifies the mechanism associated with this scaling policy
  final AddRemoveIncrementalNamedPartitionScalingMechanism scalingMechanism;
  /// Specifies the trigger associated with this scaling policy.
  final AveragePartitionLoadScalingTrigger scalingTrigger;

  /// Creates a new [ScalingPolicy].
  /// [scalingMechanism] Specifies the mechanism associated with this scaling policy
  /// [scalingTrigger] Specifies the trigger associated with this scaling policy.
  ScalingPolicy({
    required this.scalingMechanism,
    required this.scalingTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scalingMechanism': scalingMechanism.toMap(),
      'scalingTrigger': scalingTrigger.toMap(),
    };
  }

  factory ScalingPolicy.fromMap(Map<String, dynamic> map) {
    return ScalingPolicy(
      scalingMechanism: AddRemoveIncrementalNamedPartitionScalingMechanism.fromMap((map['scalingMechanism'] as Map).cast<String, dynamic>()),
      scalingTrigger: AveragePartitionLoadScalingTrigger.fromMap((map['scalingTrigger'] as Map).cast<String, dynamic>()),
    );
  }
}

