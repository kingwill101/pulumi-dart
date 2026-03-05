// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InternetMonitorHealthEventsConfig {
  /// The health event threshold percentage set for availability scores.
  final pulumi.Input<double>? availabilityScoreThreshold;
  /// The health event threshold percentage set for performance scores.
  final pulumi.Input<double>? performanceScoreThreshold;

  /// Creates a new [InternetMonitorHealthEventsConfig].
  /// [availabilityScoreThreshold] The health event threshold percentage set for availability scores.
  /// [performanceScoreThreshold] The health event threshold percentage set for performance scores.
  InternetMonitorHealthEventsConfig({
    this.availabilityScoreThreshold,
    this.performanceScoreThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityScoreThreshold': ?availabilityScoreThreshold,
      'performanceScoreThreshold': ?performanceScoreThreshold,
    };
  }

  factory InternetMonitorHealthEventsConfig.fromMap(Map<String, dynamic> map) {
    return InternetMonitorHealthEventsConfig(
      availabilityScoreThreshold: (() { final guardedValue = map['availabilityScoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      performanceScoreThreshold: (() { final guardedValue = map['performanceScoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

