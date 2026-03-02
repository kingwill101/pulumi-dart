// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpu_resource.dart';

/// The resource requests.
class ResourceRequests {
  /// The CPU request of this container instance.
  final pulumi.Input<double> cpu;
  /// The GPU request of this container instance.
  final pulumi.Input<GpuResource>? gpu;
  /// The memory request in GB of this container instance.
  final pulumi.Input<double> memoryInGB;

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
      'gpu': ?pulumi.Input.mapOptionalInputValue<GpuResource, Map<String, dynamic>>(gpu, (value) => value.toMap()),
      'memoryInGB': memoryInGB,
    };
  }

  factory ResourceRequests.fromMap(Map<String, dynamic> map) {
    return ResourceRequests(
      cpu: (map['cpu'] as double).input(),
      gpu: map['gpu'] == null ? null : (GpuResource.fromMap((map['gpu'] as Map).cast<String, dynamic>())).input(),
      memoryInGB: (map['memoryInGB'] as double).input(),
    );
  }
}

