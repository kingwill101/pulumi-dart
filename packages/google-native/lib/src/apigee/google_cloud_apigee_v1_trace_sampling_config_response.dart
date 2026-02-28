// ignore_for_file: unused_element, unnecessary_cast

/// TraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.
class GoogleCloudApigeeV1TraceSamplingConfigResponse {
  /// Sampler of distributed tracing. OFF is the default value.
  final String sampler;

  /// Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.
  final double samplingRate;

  /// Creates a new [GoogleCloudApigeeV1TraceSamplingConfigResponse].
  /// [sampler] Sampler of distributed tracing. OFF is the default value.
  /// [samplingRate] Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.
  GoogleCloudApigeeV1TraceSamplingConfigResponse({
    required this.sampler,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sampler'] = sampler;
    map['samplingRate'] = samplingRate;
    return map;
  }

  factory GoogleCloudApigeeV1TraceSamplingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1TraceSamplingConfigResponse(
      sampler: map['sampler'] as String,
      samplingRate: map['samplingRate'] as double,
    );
  }
}
