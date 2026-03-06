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
  const FleetspacePropertiesThroughputPoolConfiguration({
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
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minThroughput: (() { final guardedValue = map['minThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

