// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job execution constraints.
class TableVerticalLimitSettingsResponse {
  /// Enable early termination, determines whether or not if AutoMLJob will terminate early if there is no score improvement in last 20 iterations.
  final pulumi.Input<bool?>? enableEarlyTermination;
  /// Exit score for the AutoML job.
  final pulumi.Input<double?>? exitScore;
  /// Maximum Concurrent iterations.
  final pulumi.Input<int?>? maxConcurrentTrials;
  /// Max cores per iteration.
  final pulumi.Input<int?>? maxCoresPerTrial;
  /// Number of iterations.
  final pulumi.Input<int?>? maxTrials;
  /// AutoML job timeout.
  final pulumi.Input<String?>? timeout;
  /// Iteration timeout.
  final pulumi.Input<String?>? trialTimeout;

  /// Creates a new [TableVerticalLimitSettingsResponse].
  /// [enableEarlyTermination] Enable early termination, determines whether or not if AutoMLJob will terminate early if there is no score improvement in last 20 iterations.
  /// [exitScore] Exit score for the AutoML job.
  /// [maxConcurrentTrials] Maximum Concurrent iterations.
  /// [maxCoresPerTrial] Max cores per iteration.
  /// [maxTrials] Number of iterations.
  /// [timeout] AutoML job timeout.
  /// [trialTimeout] Iteration timeout.
  TableVerticalLimitSettingsResponse({
    pulumi.Input<bool?>? enableEarlyTermination,
    this.exitScore,
    pulumi.Input<int?>? maxConcurrentTrials,
    pulumi.Input<int?>? maxCoresPerTrial,
    pulumi.Input<int?>? maxTrials,
    pulumi.Input<String?>? timeout,
    pulumi.Input<String?>? trialTimeout,
  }) : enableEarlyTermination = enableEarlyTermination ?? pulumi.Input.fromValue(true), maxConcurrentTrials = maxConcurrentTrials ?? pulumi.Input.fromValue(1), maxCoresPerTrial = maxCoresPerTrial ?? pulumi.Input.fromValue(-1), maxTrials = maxTrials ?? pulumi.Input.fromValue(1000), timeout = timeout ?? pulumi.Input.fromValue('PT6H'), trialTimeout = trialTimeout ?? pulumi.Input.fromValue('PT30M');

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

  factory TableVerticalLimitSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TableVerticalLimitSettingsResponse(
      enableEarlyTermination: (() { final guardedValue = map['enableEarlyTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exitScore: (() { final guardedValue = map['exitScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxConcurrentTrials: (() { final guardedValue = map['maxConcurrentTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxCoresPerTrial: (() { final guardedValue = map['maxCoresPerTrial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxTrials: (() { final guardedValue = map['maxTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trialTimeout: (() { final guardedValue = map['trialTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
