// ignore_for_file: unused_element, unnecessary_cast

import 'node_pool_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'node_pool_node_config_guest_accelerator_gpu_sharing_config.dart';

class NodePoolNodeConfigGuestAccelerator {
  /// The number of the accelerator cards exposed to an instance.
  final int count;

  /// Configuration for auto installation of GPU driver.
  final NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig?
      gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  final String? gpuPartitionSize;

  /// Configuration for GPU sharing.
  final NodePoolNodeConfigGuestAcceleratorGpuSharingConfig? gpuSharingConfig;

  /// The accelerator type resource name.
  final String type;

  /// Creates a new [NodePoolNodeConfigGuestAccelerator].
  /// [count] The number of the accelerator cards exposed to an instance.
  /// [gpuDriverInstallationConfig] Configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  /// [gpuSharingConfig] Configuration for GPU sharing.
  /// [type] The accelerator type resource name.
  NodePoolNodeConfigGuestAccelerator({
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

  factory NodePoolNodeConfigGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigGuestAccelerator(
      count: map['count'] as int,
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null
          ? null
          : NodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig
              .fromMap((map['gpuDriverInstallationConfig'] as Map)
                  .cast<String, dynamic>()),
      gpuPartitionSize: map['gpuPartitionSize'] == null
          ? null
          : map['gpuPartitionSize'] as String,
      gpuSharingConfig: map['gpuSharingConfig'] == null
          ? null
          : NodePoolNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(
              (map['gpuSharingConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
