// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Station Connection Properties.
class StationConnectionProperties {
  /// Connection keepalive idle time in seconds
  final pulumi.Input<int>? keepaliveIdleTime;
  /// Probe count, default value is 10
  final pulumi.Input<int>? probeCount;
  /// Probe interval in seconds, default value is 60
  final pulumi.Input<int>? probeInterval;

  /// Creates a new [StationConnectionProperties].
  /// [keepaliveIdleTime] Connection keepalive idle time in seconds
  /// [probeCount] Probe count, default value is 10
  /// [probeInterval] Probe interval in seconds, default value is 60
  StationConnectionProperties({
    this.keepaliveIdleTime,
    this.probeCount,
    this.probeInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keepaliveIdleTime': ?keepaliveIdleTime,
      'probeCount': ?probeCount,
      'probeInterval': ?probeInterval,
    };
  }

  factory StationConnectionProperties.fromMap(Map<String, dynamic> map) {
    return StationConnectionProperties(
      keepaliveIdleTime: map['keepaliveIdleTime'] == null ? null : (map['keepaliveIdleTime']! as int).input(),
      probeCount: map['probeCount'] == null ? null : (map['probeCount']! as int).input(),
      probeInterval: map['probeInterval'] == null ? null : (map['probeInterval']! as int).input(),
    );
  }
}

