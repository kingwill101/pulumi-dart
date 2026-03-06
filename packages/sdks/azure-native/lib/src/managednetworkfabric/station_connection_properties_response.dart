// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Station Connection Properties.
class StationConnectionPropertiesResponse {
  /// Connection keepalive idle time in seconds
  final pulumi.Input<int>? keepaliveIdleTime;
  /// Probe count, default value is 10
  final pulumi.Input<int>? probeCount;
  /// Probe interval in seconds, default value is 60
  final pulumi.Input<int>? probeInterval;

  /// Creates a new [StationConnectionPropertiesResponse].
  /// [keepaliveIdleTime] Connection keepalive idle time in seconds
  /// [probeCount] Probe count, default value is 10
  /// [probeInterval] Probe interval in seconds, default value is 60
  const StationConnectionPropertiesResponse({
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

  factory StationConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StationConnectionPropertiesResponse(
      keepaliveIdleTime: (() { final guardedValue = map['keepaliveIdleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      probeCount: (() { final guardedValue = map['probeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      probeInterval: (() { final guardedValue = map['probeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

