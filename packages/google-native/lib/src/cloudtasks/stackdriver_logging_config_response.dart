// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/).
class StackdriverLoggingConfigResponse {
  /// Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  final double samplingRatio;

  /// Creates a new [StackdriverLoggingConfigResponse].
  /// [samplingRatio] Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/logging/docs/). This field may contain any value between 0.0 and 1.0, inclusive. 0.0 is the default and means that no operations are logged.
  StackdriverLoggingConfigResponse({
    required this.samplingRatio,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['samplingRatio'] = samplingRatio;
    return map;
  }

  factory StackdriverLoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return StackdriverLoggingConfigResponse(
      samplingRatio: map['samplingRatio'] as double,
    );
  }
}
