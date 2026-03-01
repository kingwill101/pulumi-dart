// ignore_for_file: unused_element, unnecessary_cast


/// Sampling settings for Diagnostic.
class SamplingSettingsResponse {
  /// Rate of sampling for fixed-rate sampling.
  final double? percentage;
  /// Sampling type.
  final String? samplingType;

  /// Creates a new [SamplingSettingsResponse].
  /// [percentage] Rate of sampling for fixed-rate sampling.
  /// [samplingType] Sampling type.
  SamplingSettingsResponse({
    this.percentage,
    this.samplingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
      'samplingType': ?samplingType,
    };
  }

  factory SamplingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SamplingSettingsResponse(
      percentage: map['percentage'] == null ? null : map['percentage'] as double,
      samplingType: map['samplingType'] == null ? null : map['samplingType'] as String,
    );
  }
}

