// ignore_for_file: unused_element, unnecessary_cast

import 'gpu_resource_response.dart';

/// The resource requests.
class ResourceRequestsResponse {
  /// The CPU request of this container instance.
  final double cpu;
  /// The GPU request of this container instance.
  final GpuResourceResponse? gpu;
  /// The memory request in GB of this container instance.
  final double memoryInGB;

  /// Creates a new [ResourceRequestsResponse].
  /// [cpu] The CPU request of this container instance.
  /// [gpu] The GPU request of this container instance.
  /// [memoryInGB] The memory request in GB of this container instance.
  ResourceRequestsResponse({
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

  factory ResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequestsResponse(
      cpu: map['cpu'] as double,
      gpu: map['gpu'] == null ? null : GpuResourceResponse.fromMap((map['gpu'] as Map).cast<String, dynamic>()),
      memoryInGB: map['memoryInGB'] as double,
    );
  }
}

