// ignore_for_file: unused_element, unnecessary_cast

class QueueStackdriverLoggingConfig {
  /// Specifies the fraction of operations to write to Stackdriver Logging.
  /// This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the
  /// default and means that no operations are logged.
  final double samplingRatio;

  /// Creates a new [QueueStackdriverLoggingConfig].
  /// [samplingRatio] Specifies the fraction of operations to write to Stackdriver Logging.
  QueueStackdriverLoggingConfig({
    required this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['samplingRatio'] = samplingRatio;
    return map;
  }

  factory QueueStackdriverLoggingConfig.fromMap(Map<String, dynamic> map) {
    return QueueStackdriverLoggingConfig(
      samplingRatio: map['samplingRatio'] as double,
    );
  }
}
