// ignore_for_file: unused_element, unnecessary_cast


/// Dapr application health check configuration
class DaprResponseAppHealth {
  /// Boolean indicating if the health probe is enabled
  final bool? enabled;
  /// Path for the health probe
  final String? path;
  /// Interval for the health probe in seconds
  final int? probeIntervalSeconds;
  /// Timeout for the health probe in milliseconds
  final int? probeTimeoutMilliseconds;
  /// Threshold for the health probe
  final int? threshold;

  /// Creates a new [DaprResponseAppHealth].
  /// [enabled] Boolean indicating if the health probe is enabled
  /// [path] Path for the health probe
  /// [probeIntervalSeconds] Interval for the health probe in seconds
  /// [probeTimeoutMilliseconds] Timeout for the health probe in milliseconds
  /// [threshold] Threshold for the health probe
  DaprResponseAppHealth({
    this.enabled,
    this.path,
    this.probeIntervalSeconds,
    this.probeTimeoutMilliseconds,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'path': ?path,
      'probeIntervalSeconds': ?probeIntervalSeconds,
      'probeTimeoutMilliseconds': ?probeTimeoutMilliseconds,
      'threshold': ?threshold,
    };
  }

  factory DaprResponseAppHealth.fromMap(Map<String, dynamic> map) {
    return DaprResponseAppHealth(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      probeIntervalSeconds: map['probeIntervalSeconds'] == null ? null : map['probeIntervalSeconds'] as int,
      probeTimeoutMilliseconds: map['probeTimeoutMilliseconds'] == null ? null : map['probeTimeoutMilliseconds'] as int,
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
    );
  }
}

