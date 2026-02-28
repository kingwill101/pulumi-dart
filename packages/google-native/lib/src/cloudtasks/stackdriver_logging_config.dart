// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/).
class StackdriverLoggingConfig {
  /// Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  final double? samplingRatio;

  /// Creates a new [StackdriverLoggingConfig].
  /// [samplingRatio] Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  StackdriverLoggingConfig({
    this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final samplingRatioValue = samplingRatio;
    if (samplingRatioValue != null) {
      map['samplingRatio'] = samplingRatioValue;
    }
    return map;
  }

  factory StackdriverLoggingConfig.fromMap(Map<String, dynamic> map) {
    return StackdriverLoggingConfig(
      samplingRatio:
          map['samplingRatio'] == null ? null : map['samplingRatio'] as double,
    );
  }
}
