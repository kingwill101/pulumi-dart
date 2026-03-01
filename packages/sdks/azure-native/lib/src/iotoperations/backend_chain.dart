// ignore_for_file: unused_element, unnecessary_cast


/// Desired properties of the backend instances of the broker
class BackendChain {
  /// The desired number of physical backend partitions.
  final int partitions;
  /// The desired numbers of backend replicas (pods) in a physical partition.
  final int redundancyFactor;
  /// Number of logical backend workers per replica (pod).
  final int? workers;

  /// Creates a new [BackendChain].
  /// [partitions] The desired number of physical backend partitions.
  /// [redundancyFactor] The desired numbers of backend replicas (pods) in a physical partition.
  /// [workers] Number of logical backend workers per replica (pod).
  BackendChain({
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
      partitions: map['partitions'] as int,
      redundancyFactor: map['redundancyFactor'] as int,
      workers: map['workers'] == null ? null : map['workers'] as int,
    );
  }
}

