// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for throughput pool in the fleetspace.
class FleetspacePropertiesThroughputPoolConfiguration {
  /// Maximum throughput for the pool.
  final int? maxThroughput;
  /// Minimum throughput for the pool.
  final int? minThroughput;

  /// Creates a new [FleetspacePropertiesThroughputPoolConfiguration].
  /// [maxThroughput] Maximum throughput for the pool.
  /// [minThroughput] Minimum throughput for the pool.
  FleetspacePropertiesThroughputPoolConfiguration({
    this.maxThroughput,
    this.minThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
      'minThroughput': ?minThroughput,
    };
  }

  factory FleetspacePropertiesThroughputPoolConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetspacePropertiesThroughputPoolConfiguration(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
      minThroughput: map['minThroughput'] == null ? null : map['minThroughput'] as int,
    );
  }
}

