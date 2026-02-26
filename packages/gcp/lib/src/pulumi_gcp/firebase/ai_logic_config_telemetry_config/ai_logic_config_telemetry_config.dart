// ignore_for_file: unused_element, unnecessary_cast

class AiLogicConfigTelemetryConfig {
  /// The current monitoring mode used for this project.
  /// Possible values:
  /// NONE
  /// ALL
  final String? mode;

  /// The percentage of requests to be sampled, expressed as a fraction
  /// in the range (0,1]. Note that the actual sampling rate may be lower than
  /// the specified value if the system is overloaded. Default is 1.0.
  final double? samplingRate;

  AiLogicConfigTelemetryConfig({
    this.mode,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final samplingRateValue = samplingRate;
    if (samplingRateValue != null) {
      map['samplingRate'] = samplingRateValue;
    }
    return map;
  }

  factory AiLogicConfigTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return AiLogicConfigTelemetryConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
      samplingRate:
          map['samplingRate'] == null ? null : map['samplingRate'] as double,
    );
  }
}
