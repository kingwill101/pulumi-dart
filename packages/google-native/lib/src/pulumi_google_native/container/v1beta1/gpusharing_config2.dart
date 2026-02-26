// ignore_for_file: unused_element, unnecessary_cast

import 'gpusharing_config_gpu_sharing_strategy2.dart';

/// GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
class GPUSharingConfig2 {
  /// The type of GPU sharing strategy to enable on the GPU node.
  final GPUSharingConfigGpuSharingStrategy2? gpuSharingStrategy;

  /// The max number of containers that can share a physical GPU.
  final String? maxSharedClientsPerGpu;

  GPUSharingConfig2({
    this.gpuSharingStrategy,
    this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gpuSharingStrategyValue = gpuSharingStrategy;
    if (gpuSharingStrategyValue != null) {
      map['gpuSharingStrategy'] = gpuSharingStrategyValue.value;
    }
    final maxSharedClientsPerGpuValue = maxSharedClientsPerGpu;
    if (maxSharedClientsPerGpuValue != null) {
      map['maxSharedClientsPerGpu'] = maxSharedClientsPerGpuValue;
    }
    return map;
  }

  factory GPUSharingConfig2.fromMap(Map<String, dynamic> map) {
    return GPUSharingConfig2(
      gpuSharingStrategy: map['gpuSharingStrategy'] == null
          ? null
          : GPUSharingConfigGpuSharingStrategy2.fromValue(
              map['gpuSharingStrategy'] as String),
      maxSharedClientsPerGpu: map['maxSharedClientsPerGpu'] == null
          ? null
          : map['maxSharedClientsPerGpu'] as String,
    );
  }
}
