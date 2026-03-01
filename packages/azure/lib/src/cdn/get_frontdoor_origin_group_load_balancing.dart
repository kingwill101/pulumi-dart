// ignore_for_file: unused_element, unnecessary_cast


class GetFrontdoorOriginGroupLoadBalancing {
  /// Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket.
  final int additionalLatencyInMilliseconds;
  /// Specifies the number of samples to consider for load balancing decisions.
  final int sampleSize;
  /// Specifies the number of samples within the sample period that must succeed.
  final int successfulSamplesRequired;

  /// Creates a new [GetFrontdoorOriginGroupLoadBalancing].
  /// [additionalLatencyInMilliseconds] Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket.
  /// [sampleSize] Specifies the number of samples to consider for load balancing decisions.
  /// [successfulSamplesRequired] Specifies the number of samples within the sample period that must succeed.
  GetFrontdoorOriginGroupLoadBalancing({
    required this.additionalLatencyInMilliseconds,
    required this.sampleSize,
    required this.successfulSamplesRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyInMilliseconds': additionalLatencyInMilliseconds,
      'sampleSize': sampleSize,
      'successfulSamplesRequired': successfulSamplesRequired,
    };
  }

  factory GetFrontdoorOriginGroupLoadBalancing.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorOriginGroupLoadBalancing(
      additionalLatencyInMilliseconds: map['additionalLatencyInMilliseconds'] as int,
      sampleSize: map['sampleSize'] as int,
      successfulSamplesRequired: map['successfulSamplesRequired'] as int,
    );
  }
}

