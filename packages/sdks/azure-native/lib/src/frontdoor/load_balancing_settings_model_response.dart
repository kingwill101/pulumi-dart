// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing settings for a backend pool
class LoadBalancingSettingsModelResponse {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket
  final pulumi.Input<int>? additionalLatencyMilliseconds;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// Resource status.
  final pulumi.Input<String> resourceState;
  /// The number of samples to consider for load balancing decisions
  final pulumi.Input<int>? sampleSize;
  /// The number of samples within the sample period that must succeed
  final pulumi.Input<int>? successfulSamplesRequired;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [LoadBalancingSettingsModelResponse].
  /// [additionalLatencyMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [sampleSize] The number of samples to consider for load balancing decisions
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed
  /// [type] Resource type.
  LoadBalancingSettingsModelResponse({
    this.additionalLatencyMilliseconds,
    this.id,
    this.name,
    required this.resourceState,
    this.sampleSize,
    this.successfulSamplesRequired,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyMilliseconds': ?additionalLatencyMilliseconds,
      'id': ?id,
      'name': ?name,
      'resourceState': resourceState,
      'sampleSize': ?sampleSize,
      'successfulSamplesRequired': ?successfulSamplesRequired,
      'type': type,
    };
  }

  factory LoadBalancingSettingsModelResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancingSettingsModelResponse(
      additionalLatencyMilliseconds: map['additionalLatencyMilliseconds'] == null ? null : (map['additionalLatencyMilliseconds']! as int).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceState: (map['resourceState'] as String).input(),
      sampleSize: map['sampleSize'] == null ? null : (map['sampleSize']! as int).input(),
      successfulSamplesRequired: map['successfulSamplesRequired'] == null ? null : (map['successfulSamplesRequired']! as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

