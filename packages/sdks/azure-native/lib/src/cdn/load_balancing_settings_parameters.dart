// ignore_for_file: unused_element, unnecessary_cast


/// Round-Robin load balancing settings for a backend pool
class LoadBalancingSettingsParameters {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket
  final int? additionalLatencyInMilliseconds;
  /// The number of samples to consider for load balancing decisions
  final int? sampleSize;
  /// The number of samples within the sample period that must succeed
  final int? successfulSamplesRequired;

  /// Creates a new [LoadBalancingSettingsParameters].
  /// [additionalLatencyInMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket
  /// [sampleSize] The number of samples to consider for load balancing decisions
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed
  LoadBalancingSettingsParameters({
    this.additionalLatencyInMilliseconds,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyInMilliseconds': ?additionalLatencyInMilliseconds,
      'sampleSize': ?sampleSize,
      'successfulSamplesRequired': ?successfulSamplesRequired,
    };
  }

  factory LoadBalancingSettingsParameters.fromMap(Map<String, dynamic> map) {
    return LoadBalancingSettingsParameters(
      additionalLatencyInMilliseconds: map['additionalLatencyInMilliseconds'] == null ? null : map['additionalLatencyInMilliseconds'] as int,
      sampleSize: map['sampleSize'] == null ? null : map['sampleSize'] as int,
      successfulSamplesRequired: map['successfulSamplesRequired'] == null ? null : map['successfulSamplesRequired'] as int,
    );
  }
}

