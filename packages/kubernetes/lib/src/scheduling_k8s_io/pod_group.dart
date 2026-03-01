// ignore_for_file: unused_element, unnecessary_cast

import 'pod_group_policy.dart';

/// PodGroup represents a set of pods with a common scheduling policy.
class PodGroup {
  /// Name is a unique identifier for the PodGroup within the Workload. It must be a DNS label. This field is immutable.
  final String name;
  /// Policy defines the scheduling policy for this PodGroup.
  final PodGroupPolicy policy;

  /// Creates a new [PodGroup].
  /// [name] Name is a unique identifier for the PodGroup within the Workload. It must be a DNS label. This field is immutable.
  /// [policy] Policy defines the scheduling policy for this PodGroup.
  PodGroup({
    required this.name,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'policy': policy.toMap(),
    };
  }

  factory PodGroup.fromMap(Map<String, dynamic> map) {
    return PodGroup(
      name: map['name'] as String,
      policy: PodGroupPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

