// ignore_for_file: unused_element, unnecessary_cast


/// Limit settings for the AutoML job.
class ImageLimitSettings {
  /// Maximum number of concurrent AutoML iterations.
  final int? maxConcurrentTrials;
  /// Maximum number of AutoML iterations.
  final int? maxTrials;
  /// AutoML job timeout.
  final String? timeout;

  /// Creates a new [ImageLimitSettings].
  /// [maxConcurrentTrials] Maximum number of concurrent AutoML iterations.
  /// [maxTrials] Maximum number of AutoML iterations.
  /// [timeout] AutoML job timeout.
  ImageLimitSettings({
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
      maxConcurrentTrials: map['maxConcurrentTrials'] == null ? null : map['maxConcurrentTrials'] as int,
      maxTrials: map['maxTrials'] == null ? null : map['maxTrials'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

