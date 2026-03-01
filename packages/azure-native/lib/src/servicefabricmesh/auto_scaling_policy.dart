// ignore_for_file: unused_element, unnecessary_cast

import 'add_remove_replica_scaling_mechanism.dart';
import 'average_load_scaling_trigger.dart';

/// Describes the auto scaling policy
class AutoScalingPolicy {
  /// The mechanism that is used to scale when auto scaling operation is invoked.
  final AddRemoveReplicaScalingMechanism mechanism;
  /// The name of the auto scaling policy.
  final String name;
  /// Determines when auto scaling operation will be invoked.
  final AverageLoadScalingTrigger trigger;

  /// Creates a new [AutoScalingPolicy].
  /// [mechanism] The mechanism that is used to scale when auto scaling operation is invoked.
  /// [name] The name of the auto scaling policy.
  /// [trigger] Determines when auto scaling operation will be invoked.
  AutoScalingPolicy({
    required this.mechanism,
    required this.name,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mechanism': mechanism.toMap(),
      'name': name,
      'trigger': trigger.toMap(),
    };
  }

  factory AutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return AutoScalingPolicy(
      mechanism: AddRemoveReplicaScalingMechanism.fromMap((map['mechanism'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      trigger: AverageLoadScalingTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

