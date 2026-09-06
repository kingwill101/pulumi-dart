// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sampling settings for Diagnostic.
class SamplingSettings {
  /// Rate of sampling for fixed-rate sampling.
  final pulumi.Input<double?>? percentage;
  /// Sampling type.
  final pulumi.Input<dynamic>? samplingType;

  /// Creates a new [SamplingSettings].
  /// [percentage] Rate of sampling for fixed-rate sampling.
  /// [samplingType] Sampling type.
  const SamplingSettings({
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
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      samplingType: (() { final guardedValue = map['samplingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
