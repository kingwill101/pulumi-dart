// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job execution constraints.
class NlpVerticalLimitSettings {
  /// Maximum Concurrent AutoML iterations.
  final pulumi.Input<int>? maxConcurrentTrials;
  /// Number of AutoML iterations.
  final pulumi.Input<int>? maxTrials;
  /// AutoML job timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [NlpVerticalLimitSettings].
  /// [maxConcurrentTrials] Maximum Concurrent AutoML iterations.
  /// [maxTrials] Number of AutoML iterations.
  /// [timeout] AutoML job timeout.
  const NlpVerticalLimitSettings({
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

  factory NlpVerticalLimitSettings.fromMap(Map<String, dynamic> map) {
    return NlpVerticalLimitSettings(
      maxConcurrentTrials: (() { final guardedValue = map['maxConcurrentTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTrials: (() { final guardedValue = map['maxTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
