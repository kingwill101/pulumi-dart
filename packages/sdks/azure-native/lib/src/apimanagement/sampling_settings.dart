// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sampling settings for Diagnostic.
class SamplingSettings {
  /// Rate of sampling for fixed-rate sampling.
  final pulumi.Input<double>? percentage;
  /// Sampling type.
  final pulumi.Input<String>? samplingType;

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
      percentage: map['percentage'] == null ? null : (map['percentage'] as double).input(),
      samplingType: map['samplingType'] == null ? null : (map['samplingType'] as String).input(),
    );
  }
}

