// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr application health check configuration
class DaprResponseAppHealth {
  /// Boolean indicating if the health probe is enabled
  final pulumi.Input<bool>? enabled;
  /// Path for the health probe
  final pulumi.Input<String>? path;
  /// Interval for the health probe in seconds
  final pulumi.Input<int>? probeIntervalSeconds;
  /// Timeout for the health probe in milliseconds
  final pulumi.Input<int>? probeTimeoutMilliseconds;
  /// Threshold for the health probe
  final pulumi.Input<int>? threshold;

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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      probeIntervalSeconds: map['probeIntervalSeconds'] == null ? null : (map['probeIntervalSeconds']! as int).input(),
      probeTimeoutMilliseconds: map['probeTimeoutMilliseconds'] == null ? null : (map['probeTimeoutMilliseconds']! as int).input(),
      threshold: map['threshold'] == null ? null : (map['threshold']! as int).input(),
    );
  }
}

