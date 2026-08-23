// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Load balancing settings for a backend pool
class LoadBalancingSettingsModel {
  /// The additional latency in milliseconds for probes to fall into the lowest latency bucket
  final pulumi.Input<int>? additionalLatencyMilliseconds;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The number of samples to consider for load balancing decisions
  final pulumi.Input<int>? sampleSize;
  /// The number of samples within the sample period that must succeed
  final pulumi.Input<int>? successfulSamplesRequired;

  /// Creates a new [LoadBalancingSettingsModel].
  /// [additionalLatencyMilliseconds] The additional latency in milliseconds for probes to fall into the lowest latency bucket
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [sampleSize] The number of samples to consider for load balancing decisions
  /// [successfulSamplesRequired] The number of samples within the sample period that must succeed
  const LoadBalancingSettingsModel({
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
      additionalLatencyMilliseconds: (() { final guardedValue = map['additionalLatencyMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sampleSize: (() { final guardedValue = map['sampleSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      successfulSamplesRequired: (() { final guardedValue = map['successfulSamplesRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
