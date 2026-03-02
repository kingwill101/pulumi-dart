// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpu_resource_response.dart';

/// The resource limits.
class ResourceLimitsResponse {
  /// The CPU limit of this container instance.
  final pulumi.Input<double>? cpu;
  /// The GPU limit of this container instance.
  final pulumi.Input<GpuResourceResponse>? gpu;
  /// The memory limit in GB of this container instance.
  final pulumi.Input<double>? memoryInGB;

  /// Creates a new [ResourceLimitsResponse].
  /// [cpu] The CPU limit of this container instance.
  /// [gpu] The GPU limit of this container instance.
  /// [memoryInGB] The memory limit in GB of this container instance.
  ResourceLimitsResponse({
    this.cpu,
    this.gpu,
    this.memoryInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'gpu': ?pulumi.Input.mapOptionalInputValue<GpuResourceResponse, Map<String, dynamic>>(gpu, (value) => value.toMap()),
      'memoryInGB': ?memoryInGB,
    };
  }

  factory ResourceLimitsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitsResponse(
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      gpu: map['gpu'] == null ? null : (GpuResourceResponse.fromMap((map['gpu']! as Map).cast<String, dynamic>())).input(),
      memoryInGB: map['memoryInGB'] == null ? null : (map['memoryInGB']! as double).input(),
    );
  }
}

