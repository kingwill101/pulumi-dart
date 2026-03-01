// ignore_for_file: unused_element, unnecessary_cast


/// Sweep Job limit class.
class SweepJobLimits {
  /// Expected value is 'Sweep'.
  final String jobLimitsType;
  /// Sweep Job max concurrent trials.
  final int? maxConcurrentTrials;
  /// Sweep Job max total trials.
  final int? maxTotalTrials;
  /// The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  final String? timeout;
  /// Sweep Job Trial timeout value.
  final String? trialTimeout;

  /// Creates a new [SweepJobLimits].
  /// [jobLimitsType] Expected value is 'Sweep'.
  /// [maxConcurrentTrials] Sweep Job max concurrent trials.
  /// [maxTotalTrials] Sweep Job max total trials.
  /// [timeout] The max run duration in ISO 8601 format, after which the job will be cancelled. Only supports duration with precision as low as Seconds.
  /// [trialTimeout] Sweep Job Trial timeout value.
  SweepJobLimits({
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

  factory SweepJobLimits.fromMap(Map<String, dynamic> map) {
    return SweepJobLimits(
      jobLimitsType: map['jobLimitsType'] as String,
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : map['maxConcurrentTrials'] as int,
      maxTotalTrials: map['maxTotalTrials'] == null ? null : map['maxTotalTrials'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      trialTimeout: map['trialTimeout'] == null ? null : map['trialTimeout'] as String,
    );
  }
}

