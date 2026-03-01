// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for throughput pool in the fleetspace.
class FleetspacePropertiesResponseThroughputPoolConfiguration {
  /// Maximum throughput for the pool.
  final int? maxThroughput;
  /// Minimum throughput for the pool.
  final int? minThroughput;

  /// Creates a new [FleetspacePropertiesResponseThroughputPoolConfiguration].
  /// [maxThroughput] Maximum throughput for the pool.
  /// [minThroughput] Minimum throughput for the pool.
  FleetspacePropertiesResponseThroughputPoolConfiguration({
    this.maxThroughput,
    this.minThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
      'minThroughput': ?minThroughput,
    };
  }

  factory FleetspacePropertiesResponseThroughputPoolConfiguration.fromMap(Map<String, dynamic> map) {
    return FleetspacePropertiesResponseThroughputPoolConfiguration(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
      minThroughput: map['minThroughput'] == null ? null : map['minThroughput'] as int,
    );
  }
}

