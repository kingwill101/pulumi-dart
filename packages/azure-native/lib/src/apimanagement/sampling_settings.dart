// ignore_for_file: unused_element, unnecessary_cast


/// Sampling settings for Diagnostic.
class SamplingSettings {
  /// Rate of sampling for fixed-rate sampling.
  final double? percentage;
  /// Sampling type.
  final String? samplingType;

  /// Creates a new [SamplingSettings].
  /// [percentage] Rate of sampling for fixed-rate sampling.
  /// [samplingType] Sampling type.
  SamplingSettings({
    this.percentage,
    this.samplingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
      'samplingType': ?samplingType,
    };
  }

  factory SamplingSettings.fromMap(Map<String, dynamic> map) {
    return SamplingSettings(
      percentage: map['percentage'] == null ? null : map['percentage'] as double,
      samplingType: map['samplingType'] == null ? null : map['samplingType'] as String,
    );
  }
}

