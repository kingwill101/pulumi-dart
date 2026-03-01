// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'cluster_node_pool_node_config_guest_accelerator_gpu_sharing_config.dart';

class ClusterNodePoolNodeConfigGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;

  /// Configuration for auto installation of GPU driver. Structure is documented below.
  final ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig?
  gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String? gpuPartitionSize;

  /// Configuration for GPU sharing. Structure is documented below.
  final ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig?
  gpuSharingConfig;

  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  /// Creates a new [ClusterNodePoolNodeConfigGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [gpuDriverInstallationConfig] Configuration for auto installation of GPU driver. Structure is documented below.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] Configuration for GPU sharing. Structure is documented below.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  ClusterNodePoolNodeConfigGuestAccelerator({
    required this.count,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'gpuDriverInstallationConfig': ?gpuDriverInstallationConfig == null
          ? null
          : gpuDriverInstallationConfig!.toMap(),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?gpuSharingConfig == null
          ? null
          : gpuSharingConfig!.toMap(),
      'type': type,
    };
  }

  factory ClusterNodePoolNodeConfigGuestAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigGuestAccelerator(
      count: map['count'] as int,
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null
          ? null
          : ClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
              (map['gpuDriverInstallationConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      gpuPartitionSize: map['gpuPartitionSize'] == null
          ? null
          : map['gpuPartitionSize'] as String,
      gpuSharingConfig: map['gpuSharingConfig'] == null
          ? null
          : ClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(
              (map['gpuSharingConfig'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] as String,
    );
  }
}
