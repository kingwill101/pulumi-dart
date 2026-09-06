// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gpu_resource_response.dart';

/// The resource limits.
class ResourceLimitsResponse {
  /// The CPU limit of this container instance.
  final pulumi.Input<double?>? cpu;
  /// The GPU limit of this container instance.
  final pulumi.Input<GpuResourceResponse?>? gpu;
  /// The memory limit in GB of this container instance.
  final pulumi.Input<double?>? memoryInGB;

  /// Creates a new [ResourceLimitsResponse].
  /// [cpu] The CPU limit of this container instance.
  /// [gpu] The GPU limit of this container instance.
  /// [memoryInGB] The memory limit in GB of this container instance.
  const ResourceLimitsResponse({
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
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      gpu: (() { final guardedValue = map['gpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GpuResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryInGB: (() { final guardedValue = map['memoryInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
