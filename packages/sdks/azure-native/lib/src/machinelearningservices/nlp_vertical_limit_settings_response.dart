// ignore_for_file: unused_element, unnecessary_cast


/// Job execution constraints.
class NlpVerticalLimitSettingsResponse {
  /// Maximum Concurrent AutoML iterations.
  final int? maxConcurrentTrials;
  /// Number of AutoML iterations.
  final int? maxTrials;
  /// AutoML job timeout.
  final String? timeout;

  /// Creates a new [NlpVerticalLimitSettingsResponse].
  /// [maxConcurrentTrials] Maximum Concurrent AutoML iterations.
  /// [maxTrials] Number of AutoML iterations.
  /// [timeout] AutoML job timeout.
  NlpVerticalLimitSettingsResponse({
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

  factory NlpVerticalLimitSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NlpVerticalLimitSettingsResponse(
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : map['maxConcurrentTrials'] as int,
      maxTrials: map['maxTrials'] == null ? null : map['maxTrials'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

