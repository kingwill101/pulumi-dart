// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sampling settings for Diagnostic.
class SamplingSettingsResponse {
  /// Rate of sampling for fixed-rate sampling.
  final pulumi.Input<double>? percentage;
  /// Sampling type.
  final pulumi.Input<String>? samplingType;

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
      percentage: map['percentage'] == null ? null : (map['percentage'] as double).input(),
      samplingType: map['samplingType'] == null ? null : (map['samplingType'] as String).input(),
    );
  }
}

