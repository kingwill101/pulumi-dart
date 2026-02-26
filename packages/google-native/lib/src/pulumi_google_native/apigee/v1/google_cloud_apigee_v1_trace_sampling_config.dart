// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_trace_sampling_config_sampler.dart';

/// TraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.
class GoogleCloudApigeeV1TraceSamplingConfig {
  /// Sampler of distributed tracing. OFF is the default value.
  final GoogleCloudApigeeV1TraceSamplingConfigSampler? sampler;

  /// Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.
  final double? samplingRate;

  GoogleCloudApigeeV1TraceSamplingConfig({
    this.sampler,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final samplerValue = sampler;
    if (samplerValue != null) {
      map['sampler'] = samplerValue.value;
    }
    final samplingRateValue = samplingRate;
    if (samplingRateValue != null) {
      map['samplingRate'] = samplingRateValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1TraceSamplingConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TraceSamplingConfig(
      sampler: map['sampler'] == null
          ? null
          : GoogleCloudApigeeV1TraceSamplingConfigSampler.fromValue(
              map['sampler'] as String),
      samplingRate:
          map['samplingRate'] == null ? null : map['samplingRate'] as double,
    );
  }
}
