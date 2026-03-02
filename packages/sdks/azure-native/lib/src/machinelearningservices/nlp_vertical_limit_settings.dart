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
  NlpVerticalLimitSettings({
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
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : (map['maxConcurrentTrials']! as int).input(),
      maxTrials: map['maxTrials'] == null ? null : (map['maxTrials']! as int).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

