// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for throughput pool in the fleetspace.
class FleetspacePropertiesThroughputPoolConfiguration {
  /// Maximum throughput for the pool.
  final pulumi.Input<int>? maxThroughput;
  /// Minimum throughput for the pool.
  final pulumi.Input<int>? minThroughput;

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
      maxThroughput: map['maxThroughput'] == null ? null : (map['maxThroughput']! as int).input(),
      minThroughput: map['minThroughput'] == null ? null : (map['minThroughput']! as int).input(),
    );
  }
}

