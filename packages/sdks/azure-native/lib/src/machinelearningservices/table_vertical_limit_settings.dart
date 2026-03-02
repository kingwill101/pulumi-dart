// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job execution constraints.
class TableVerticalLimitSettings {
  /// Enable early termination, determines whether or not if AutoMLJob will terminate early if there is no score improvement in last 20 iterations.
  final pulumi.Input<bool>? enableEarlyTermination;
  /// Exit score for the AutoML job.
  final pulumi.Input<double>? exitScore;
  /// Maximum Concurrent iterations.
  final pulumi.Input<int>? maxConcurrentTrials;
  /// Max cores per iteration.
  final pulumi.Input<int>? maxCoresPerTrial;
  /// Number of iterations.
  final pulumi.Input<int>? maxTrials;
  /// AutoML job timeout.
  final pulumi.Input<String>? timeout;
  /// Iteration timeout.
  final pulumi.Input<String>? trialTimeout;

  /// Creates a new [TableVerticalLimitSettings].
  /// [enableEarlyTermination] Enable early termination, determines whether or not if AutoMLJob will terminate early if there is no score improvement in last 20 iterations.
  /// [exitScore] Exit score for the AutoML job.
  /// [maxConcurrentTrials] Maximum Concurrent iterations.
  /// [maxCoresPerTrial] Max cores per iteration.
  /// [maxTrials] Number of iterations.
  /// [timeout] AutoML job timeout.
  /// [trialTimeout] Iteration timeout.
  TableVerticalLimitSettings({
    this.enableEarlyTermination,
    this.exitScore,
    this.maxConcurrentTrials,
    this.maxCoresPerTrial,
    this.maxTrials,
    this.timeout,
    this.trialTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEarlyTermination': ?enableEarlyTermination,
      'exitScore': ?exitScore,
      'maxConcurrentTrials': ?maxConcurrentTrials,
      'maxCoresPerTrial': ?maxCoresPerTrial,
      'maxTrials': ?maxTrials,
      'timeout': ?timeout,
      'trialTimeout': ?trialTimeout,
    };
  }

  factory TableVerticalLimitSettings.fromMap(Map<String, dynamic> map) {
    return TableVerticalLimitSettings(
      enableEarlyTermination: map['enableEarlyTermination'] == null ? null : (map['enableEarlyTermination']! as bool).input(),
      exitScore: map['exitScore'] == null ? null : (map['exitScore']! as double).input(),
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : (map['maxConcurrentTrials']! as int).input(),
      maxCoresPerTrial: map['maxCoresPerTrial'] == null ? null : (map['maxCoresPerTrial']! as int).input(),
      maxTrials: map['maxTrials'] == null ? null : (map['maxTrials']! as int).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
      trialTimeout: map['trialTimeout'] == null ? null : (map['trialTimeout']! as String).input(),
    );
  }
}

