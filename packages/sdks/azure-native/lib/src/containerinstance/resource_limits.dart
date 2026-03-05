// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpu_resource.dart';

/// The resource limits.
class ResourceLimits {
  /// The CPU limit of this container instance.
  final pulumi.Input<double>? cpu;
  /// The GPU limit of this container instance.
  final pulumi.Input<GpuResource>? gpu;
  /// The memory limit in GB of this container instance.
  final pulumi.Input<double>? memoryInGB;

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
      'gpu': ?pulumi.Input.mapOptionalInputValue<GpuResource, Map<String, dynamic>>(gpu, (value) => value.toMap()),
      'memoryInGB': ?memoryInGB,
    };
  }

  factory ResourceLimits.fromMap(Map<String, dynamic> map) {
    return ResourceLimits(
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GpuResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryInGB: (() { final guardedValue = map['memoryInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

