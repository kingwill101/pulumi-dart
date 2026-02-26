// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_node_config_guest_accelerator_gpu_driver_installation_config/get_cluster_node_pool_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import '../get_cluster_node_pool_node_config_guest_accelerator_gpu_sharing_config/get_cluster_node_pool_node_config_guest_accelerator_gpu_sharing_config.dart';

class GetClusterNodePoolNodeConfigGuestAccelerator {
  /// The number of the accelerator cards exposed to an instance.
  final int count;

  /// Configuration for auto installation of GPU driver.
  final List<
          GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig>
      gpuDriverInstallationConfigs;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  final String gpuPartitionSize;

  /// Configuration for GPU sharing.
  final List<GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig>
      gpuSharingConfigs;

  /// The accelerator type resource name.
  final String type;

  GetClusterNodePoolNodeConfigGuestAccelerator({
    required this.count,
    required this.gpuDriverInstallationConfigs,
    required this.gpuPartitionSize,
    required this.gpuSharingConfigs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['gpuDriverInstallationConfigs'] = Input.encodeList<
        GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig,
        Map<String,
            dynamic>>(gpuDriverInstallationConfigs, (value) => value.toMap());
    map['gpuPartitionSize'] = gpuPartitionSize;
    map['gpuSharingConfigs'] = Input.encodeList<
        GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig,
        Map<String, dynamic>>(gpuSharingConfigs, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetClusterNodePoolNodeConfigGuestAccelerator.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGuestAccelerator(
      count: map['count'] as int,
      gpuDriverInstallationConfigs: Input.decodeList<
              GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig>(
          map['gpuDriverInstallationConfigs'],
          (value) =>
              GetClusterNodePoolNodeConfigGuestAcceleratorGpuDriverInstallationConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      gpuPartitionSize: map['gpuPartitionSize'] as String,
      gpuSharingConfigs: Input.decodeList<
              GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig>(
          map['gpuSharingConfigs'],
          (value) =>
              GetClusterNodePoolNodeConfigGuestAcceleratorGpuSharingConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
