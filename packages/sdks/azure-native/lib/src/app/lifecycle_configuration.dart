// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The lifecycle configuration properties of a session in the dynamic session pool
class LifecycleConfiguration {
  /// The cooldown period of a session in seconds when the lifecycle type is 'Timed'.
  final pulumi.Input<int>? cooldownPeriodInSeconds;
  /// The lifecycle type of the session pool.
  final pulumi.Input<String>? lifecycleType;
  /// The maximum alive period of a session in seconds when the lifecycle type is 'OnContainerExit'.
  final pulumi.Input<int>? maxAlivePeriodInSeconds;

  /// Creates a new [LifecycleConfiguration].
  /// [cooldownPeriodInSeconds] The cooldown period of a session in seconds when the lifecycle type is 'Timed'.
  /// [lifecycleType] The lifecycle type of the session pool.
  /// [maxAlivePeriodInSeconds] The maximum alive period of a session in seconds when the lifecycle type is 'OnContainerExit'.
  LifecycleConfiguration({
    this.cooldownPeriodInSeconds,
    this.lifecycleType,
    this.maxAlivePeriodInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cooldownPeriodInSeconds': ?cooldownPeriodInSeconds,
      'lifecycleType': ?lifecycleType,
      'maxAlivePeriodInSeconds': ?maxAlivePeriodInSeconds,
    };
  }

  factory LifecycleConfiguration.fromMap(Map<String, dynamic> map) {
    return LifecycleConfiguration(
      cooldownPeriodInSeconds: map['cooldownPeriodInSeconds'] == null ? null : (map['cooldownPeriodInSeconds'] as int).input(),
      lifecycleType: map['lifecycleType'] == null ? null : (map['lifecycleType'] as String).input(),
      maxAlivePeriodInSeconds: map['maxAlivePeriodInSeconds'] == null ? null : (map['maxAlivePeriodInSeconds'] as int).input(),
    );
  }
}

