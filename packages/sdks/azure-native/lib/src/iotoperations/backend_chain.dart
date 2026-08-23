// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired properties of the backend instances of the broker
class BackendChain {
  /// The desired number of physical backend partitions.
  final pulumi.Input<int> partitions;
  /// The desired numbers of backend replicas (pods) in a physical partition.
  final pulumi.Input<int> redundancyFactor;
  /// Number of logical backend workers per replica (pod).
  final pulumi.Input<int>? workers;

  /// Creates a new [BackendChain].
  /// [partitions] The desired number of physical backend partitions.
  /// [redundancyFactor] The desired numbers of backend replicas (pods) in a physical partition.
  /// [workers] Number of logical backend workers per replica (pod).
  const BackendChain({
    required this.partitions,
    required this.redundancyFactor,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitions': partitions,
      'redundancyFactor': redundancyFactor,
      'workers': ?workers,
    };
  }

  factory BackendChain.fromMap(Map<String, dynamic> map) {
    return BackendChain(
      partitions: pulumi.Input.fromValue(map['partitions'] as int),
      redundancyFactor: pulumi.Input.fromValue(map['redundancyFactor'] as int),
      workers: (() { final guardedValue = map['workers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
