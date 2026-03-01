// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorBackendPoolLoadBalancing {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket. Defaults to `0`.
  final int? additionalLatencyMilliseconds;
  /// The ID of the FrontDoor.
  final String? id;
  /// Specifies the name of the Load Balancer.
  final String name;
  /// The number of samples to consider for load balancing decisions. Defaults to `4`.
  final int? sampleSize;
  /// The number of samples within the sample period that must succeed. Defaults to `2`.
  final int? successfulSamplesRequired;

  /// Creates a new [FrontdoorBackendPoolLoadBalancing].
  /// [additionalLatencyMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket. Defaults to `0`.
  /// [id] The ID of the FrontDoor.
  /// [name] Specifies the name of the Load Balancer.
  /// [sampleSize] The number of samples to consider for load balancing decisions. Defaults to `4`.
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed. Defaults to `2`.
  FrontdoorBackendPoolLoadBalancing({
    this.additionalLatencyMilliseconds,
    this.id,
    required this.name,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyMilliseconds': ?additionalLatencyMilliseconds,
      'id': ?id,
      'name': name,
      'sampleSize': ?sampleSize,
      'successfulSamplesRequired': ?successfulSamplesRequired,
    };
  }

  factory FrontdoorBackendPoolLoadBalancing.fromMap(Map<String, dynamic> map) {
    return FrontdoorBackendPoolLoadBalancing(
      additionalLatencyMilliseconds: map['additionalLatencyMilliseconds'] == null ? null : map['additionalLatencyMilliseconds'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      sampleSize: map['sampleSize'] == null ? null : map['sampleSize'] as int,
      successfulSamplesRequired: map['successfulSamplesRequired'] == null ? null : map['successfulSamplesRequired'] as int,
    );
  }
}

