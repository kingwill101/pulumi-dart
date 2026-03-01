// ignore_for_file: unused_element, unnecessary_cast


/// Station Connection Properties.
class StationConnectionPropertiesResponse {
  /// Connection keepalive idle time in seconds
  final int? keepaliveIdleTime;
  /// Probe count, default value is 10
  final int? probeCount;
  /// Probe interval in seconds, default value is 60
  final int? probeInterval;

  /// Creates a new [StationConnectionPropertiesResponse].
  /// [keepaliveIdleTime] Connection keepalive idle time in seconds
  /// [probeCount] Probe count, default value is 10
  /// [probeInterval] Probe interval in seconds, default value is 60
  StationConnectionPropertiesResponse({
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
      keepaliveIdleTime: map['keepaliveIdleTime'] == null ? null : map['keepaliveIdleTime'] as int,
      probeCount: map['probeCount'] == null ? null : map['probeCount'] as int,
      probeInterval: map['probeInterval'] == null ? null : map['probeInterval'] as int,
    );
  }
}

