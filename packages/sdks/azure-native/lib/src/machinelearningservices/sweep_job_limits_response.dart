// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sweep Job limit class.
class SweepJobLimitsResponse {
  /// Expected value is 'Sweep'.
  final pulumi.Input<String> jobLimitsType;
  /// Sweep Job max concurrent trials.
  final pulumi.Input<int?>? maxConcurrentTrials;
  /// Sweep Job max total trials.
  final pulumi.Input<int?>? maxTotalTrials;
  /// The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  final pulumi.Input<String?>? timeout;
  /// Sweep Job Trial timeout value.
  final pulumi.Input<String?>? trialTimeout;

  /// Creates a new [SweepJobLimitsResponse].
  /// [jobLimitsType] Expected value is 'Sweep'.
  /// [maxConcurrentTrials] Sweep Job max concurrent trials.
  /// [maxTotalTrials] Sweep Job max total trials.
  /// [timeout] The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  /// [trialTimeout] Sweep Job Trial timeout value.
  const SweepJobLimitsResponse({
    required this.jobLimitsType,
    this.maxConcurrentTrials,
    this.maxTotalTrials,
    this.timeout,
    this.trialTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobLimitsType': jobLimitsType,
      'maxConcurrentTrials': ?maxConcurrentTrials,
      'maxTotalTrials': ?maxTotalTrials,
      'timeout': ?timeout,
      'trialTimeout': ?trialTimeout,
    };
  }

  factory SweepJobLimitsResponse.fromMap(Map<String, dynamic> map) {
    return SweepJobLimitsResponse(
      jobLimitsType: pulumi.Input.fromValue(map['jobLimitsType'] as String),
      maxConcurrentTrials: (() { final guardedValue = map['maxConcurrentTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxTotalTrials: (() { final guardedValue = map['maxTotalTrials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trialTimeout: (() { final guardedValue = map['trialTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
