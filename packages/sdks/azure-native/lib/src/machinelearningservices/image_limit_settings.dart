// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Limit settings for the AutoML job.
class ImageLimitSettings {
  /// Maximum number of concurrent AutoML iterations.
  final pulumi.Input<int>? maxConcurrentTrials;
  /// Maximum number of AutoML iterations.
  final pulumi.Input<int>? maxTrials;
  /// AutoML job timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ImageLimitSettings].
  /// [maxConcurrentTrials] Maximum number of concurrent AutoML iterations.
  /// [maxTrials] Maximum number of AutoML iterations.
  /// [timeout] AutoML job timeout.
  const ImageLimitSettings({
    this.maxConcurrentTrials,
    this.maxTrials,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentTrials': ?maxConcurrentTrials,
      'maxTrials': ?maxTrials,
      'timeout': ?timeout,
    };
  }

  factory ImageLimitSettings.fromMap(Map<String, dynamic> map) {
    return ImageLimitSettings(
      maxConcurrentTrials: (() { final guardedValue = map['maxConcurrentTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTrials: (() { final guardedValue = map['maxTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
