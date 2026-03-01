// ignore_for_file: unused_element, unnecessary_cast


/// Round-Robin load balancing settings for a backend pool
class LoadBalancingSettingsParametersResponse {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket
  final int? additionalLatencyInMilliseconds;
  /// The number of samples to consider for load balancing decisions
  final int? sampleSize;
  /// The number of samples within the sample period that must succeed
  final int? successfulSamplesRequired;

  /// Creates a new [LoadBalancingSettingsParametersResponse].
  /// [additionalLatencyInMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket
  /// [sampleSize] The number of samples to consider for load balancing decisions
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed
  LoadBalancingSettingsParametersResponse({
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

  factory LoadBalancingSettingsParametersResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancingSettingsParametersResponse(
      additionalLatencyInMilliseconds: map['additionalLatencyInMilliseconds'] == null ? null : map['additionalLatencyInMilliseconds'] as int,
      sampleSize: map['sampleSize'] == null ? null : map['sampleSize'] as int,
      successfulSamplesRequired: map['successfulSamplesRequired'] == null ? null : map['successfulSamplesRequired'] as int,
    );
  }
}

