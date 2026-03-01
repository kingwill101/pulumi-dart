// ignore_for_file: unused_element, unnecessary_cast

import 'gpu_resource.dart';

/// The resource limits.
class ResourceLimits {
  /// The CPU limit of this container instance.
  final double? cpu;
  /// The GPU limit of this container instance.
  final GpuResource? gpu;
  /// The memory limit in GB of this container instance.
  final double? memoryInGB;

  /// Creates a new [ResourceLimits].
  /// [cpu] The CPU limit of this container instance.
  /// [gpu] The GPU limit of this container instance.
  /// [memoryInGB] The memory limit in GB of this container instance.
  ResourceLimits({
    this.cpu,
    this.gpu,
    this.memoryInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'gpu': ?gpu == null ? null : gpu!.toMap(),
      'memoryInGB': ?memoryInGB,
    };
  }

  factory ResourceLimits.fromMap(Map<String, dynamic> map) {
    return ResourceLimits(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      gpu: map['gpu'] == null ? null : GpuResource.fromMap((map['gpu'] as Map).cast<String, dynamic>()),
      memoryInGB: map['memoryInGB'] == null ? null : map['memoryInGB'] as double,
    );
  }
}

