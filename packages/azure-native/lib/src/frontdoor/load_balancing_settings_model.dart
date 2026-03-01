// ignore_for_file: unused_element, unnecessary_cast


/// Load balancing settings for a backend pool
class LoadBalancingSettingsModel {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket
  final int? additionalLatencyMilliseconds;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The number of samples to consider for load balancing decisions
  final int? sampleSize;
  /// The number of samples within the sample period that must succeed
  final int? successfulSamplesRequired;

  /// Creates a new [LoadBalancingSettingsModel].
  /// [additionalLatencyMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [sampleSize] The number of samples to consider for load balancing decisions
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed
  LoadBalancingSettingsModel({
    this.additionalLatencyMilliseconds,
    this.id,
    this.name,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyMilliseconds': ?additionalLatencyMilliseconds,
      'id': ?id,
      'name': ?name,
      'sampleSize': ?sampleSize,
      'successfulSamplesRequired': ?successfulSamplesRequired,
    };
  }

  factory LoadBalancingSettingsModel.fromMap(Map<String, dynamic> map) {
    return LoadBalancingSettingsModel(
      additionalLatencyMilliseconds: map['additionalLatencyMilliseconds'] == null ? null : map['additionalLatencyMilliseconds'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sampleSize: map['sampleSize'] == null ? null : map['sampleSize'] as int,
      successfulSamplesRequired: map['successfulSamplesRequired'] == null ? null : map['successfulSamplesRequired'] as int,
    );
  }
}

