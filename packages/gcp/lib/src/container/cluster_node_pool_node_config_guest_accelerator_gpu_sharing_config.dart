// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig {
  /// The type of GPU sharing strategy to enable on the GPU node.
  /// Accepted values are:
  /// * `"TIME_SHARING"`: Allow multiple containers to have [time-shared](https://cloud.google.com/kubernetes-engine/docs/concepts/timesharing-gpus) access to a single GPU device.
  /// * `"MPS"`: Enable co-operative multi-process CUDA workloads to run concurrently on a single GPU device with [MPS](https://cloud.google.com/kubernetes-engine/docs/how-to/nvidia-mps-gpus)
  final String gpuSharingStrategy;

  /// The maximum number of containers that can share a GPU.
  final int maxSharedClientsPerGpu;

  /// Creates a new [ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig].
  /// [gpuSharingStrategy] The type of GPU sharing strategy to enable on the GPU node.
  /// [maxSharedClientsPerGpu] The maximum number of containers that can share a GPU.
  ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig({
    required this.gpuSharingStrategy,
    required this.maxSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuSharingStrategy': gpuSharingStrategy,
      'maxSharedClientsPerGpu': maxSharedClientsPerGpu,
    };
  }

  factory ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig(
      gpuSharingStrategy: map['gpuSharingStrategy'] as String,
      maxSharedClientsPerGpu: map['maxSharedClientsPerGpu'] as int,
    );
  }
}
