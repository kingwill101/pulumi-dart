// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'cluster_node_config_guest_accelerator_gpu_sharing_config.dart';

class ClusterNodeConfigGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;

  /// Configuration for auto installation of GPU driver. Structure is documented below.
  final ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig?
      gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String? gpuPartitionSize;

  /// Configuration for GPU sharing. Structure is documented below.
  final ClusterNodeConfigGuestAcceleratorGpuSharingConfig? gpuSharingConfig;

  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  /// Creates a new [ClusterNodeConfigGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [gpuDriverInstallationConfig] Configuration for auto installation of GPU driver. Structure is documented below.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig [user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] Configuration for GPU sharing. Structure is documented below.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  ClusterNodeConfigGuestAccelerator({
    required this.count,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    final gpuDriverInstallationConfigValue = gpuDriverInstallationConfig;
    if (gpuDriverInstallationConfigValue != null) {
      map['gpuDriverInstallationConfig'] =
          gpuDriverInstallationConfigValue.toMap();
    }
    final gpuPartitionSizeValue = gpuPartitionSize;
    if (gpuPartitionSizeValue != null) {
      map['gpuPartitionSize'] = gpuPartitionSizeValue;
    }
    final gpuSharingConfigValue = gpuSharingConfig;
    if (gpuSharingConfigValue != null) {
      map['gpuSharingConfig'] = gpuSharingConfigValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory ClusterNodeConfigGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigGuestAccelerator(
      count: map['count'] as int,
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null
          ? null
          : ClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig
              .fromMap((map['gpuDriverInstallationConfig'] as Map)
                  .cast<String, dynamic>()),
      gpuPartitionSize: map['gpuPartitionSize'] == null
          ? null
          : map['gpuPartitionSize'] as String,
      gpuSharingConfig: map['gpuSharingConfig'] == null
          ? null
          : ClusterNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(
              (map['gpuSharingConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
