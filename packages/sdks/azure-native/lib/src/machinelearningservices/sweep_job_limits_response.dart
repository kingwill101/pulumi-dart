// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sweep Job limit class.
class SweepJobLimitsResponse {
  /// Expected value is 'Sweep'.
  final pulumi.Input<String> jobLimitsType;
  /// Sweep Job max concurrent trials.
  final pulumi.Input<int>? maxConcurrentTrials;
  /// Sweep Job max total trials.
  final pulumi.Input<int>? maxTotalTrials;
  /// The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  final pulumi.Input<String>? timeout;
  /// Sweep Job Trial timeout value.
  final pulumi.Input<String>? trialTimeout;

  /// Creates a new [SweepJobLimitsResponse].
  /// [jobLimitsType] Expected value is 'Sweep'.
  /// [maxConcurrentTrials] Sweep Job max concurrent trials.
  /// [maxTotalTrials] Sweep Job max total trials.
  /// [timeout] The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  /// [trialTimeout] Sweep Job Trial timeout value.
  SweepJobLimitsResponse({
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
      jobLimitsType: (map['jobLimitsType'] as String).input(),
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : (map['maxConcurrentTrials'] as int).input(),
      maxTotalTrials: map['maxTotalTrials'] == null ? null : (map['maxTotalTrials'] as int).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
      trialTimeout: map['trialTimeout'] == null ? null : (map['trialTimeout'] as String).input(),
    );
  }
}

