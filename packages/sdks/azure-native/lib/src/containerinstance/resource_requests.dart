// ignore_for_file: unused_element, unnecessary_cast

import 'gpu_resource.dart';

/// The resource requests.
class ResourceRequests {
  /// The CPU request of this container instance.
  final double cpu;
  /// The GPU request of this container instance.
  final GpuResource? gpu;
  /// The memory request in GB of this container instance.
  final double memoryInGB;

  /// Creates a new [ResourceRequests].
  /// [cpu] The CPU request of this container instance.
  /// [gpu] The GPU request of this container instance.
  /// [memoryInGB] The memory request in GB of this container instance.
  ResourceRequests({
    required this.cpu,
    this.gpu,
    required this.memoryInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'gpu': ?gpu == null ? null : gpu!.toMap(),
      'memoryInGB': memoryInGB,
    };
  }

  factory ResourceRequests.fromMap(Map<String, dynamic> map) {
    return ResourceRequests(
      cpu: map['cpu'] as double,
      gpu: map['gpu'] == null ? null : GpuResource.fromMap((map['gpu'] as Map).cast<String, dynamic>()),
      memoryInGB: map['memoryInGB'] as double,
    );
  }
}

