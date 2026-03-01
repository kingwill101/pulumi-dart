// ignore_for_file: unused_element, unnecessary_cast


/// Limit settings for the AutoML job.
class ImageLimitSettingsResponse {
  /// Maximum number of concurrent AutoML iterations.
  final int? maxConcurrentTrials;
  /// Maximum number of AutoML iterations.
  final int? maxTrials;
  /// AutoML job timeout.
  final String? timeout;

  /// Creates a new [ImageLimitSettingsResponse].
  /// [maxConcurrentTrials] Maximum number of concurrent AutoML iterations.
  /// [maxTrials] Maximum number of AutoML iterations.
  /// [timeout] AutoML job timeout.
  ImageLimitSettingsResponse({
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

  factory ImageLimitSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ImageLimitSettingsResponse(
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : map['maxConcurrentTrials'] as int,
      maxTrials: map['maxTrials'] == null ? null : map['maxTrials'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

