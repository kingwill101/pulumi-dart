// ignore_for_file: unused_element, unnecessary_cast

import 'gpusharing_config_gpu_sharing_strategy_container_v1beta1.dart';

/// GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.
class GPUSharingConfigContainerV1beta1 {
  /// The type of GPU sharing strategy to enable on the GPU node.
  final GPUSharingConfigGpuSharingStrategyContainerV1beta1? gpuSharingStrategy;
  /// The max number of containers that can share a physical GPU.
  final String? maxSharedClientsPerGpu;

  /// Creates a new [GPUSharingConfigContainerV1beta1].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The max number of containers that can share a physical GPU.
  GPUSharingConfigContainerV1beta1({
    this.gpuSharingStrategy,
    this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': ?gpuSharingStrategy == null ? null : gpuSharingStrategy!.value,
      'maxSharedClientsPerGpu': ?maxSharedClientsPerGpu,
    };
  }

  factory GPUSharingConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GPUSharingConfigContainerV1beta1(
      gpuSharingStrategy: map['gpuSharingStrategy'] == null ? null : GPUSharingConfigGpuSharingStrategyContainerV1beta1.fromValue(map['gpuSharingStrategy'] as String),
      maxSharedClientsPerGpu: map['maxSharedClientsPerGpu'] == null ? null : map['maxSharedClientsPerGpu'] as String,
    );
  }
}

