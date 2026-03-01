// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_guest_accelerator_gpu_driver_installation_config.dart';
import 'get_cluster_node_config_guest_accelerator_gpu_sharing_config.dart';

class GetClusterNodeConfigGuestAccelerator {
  /// The number of the accelerator cards exposed to an instance.
  final int count;

  /// Configuration for auto installation of GPU driver.
  final List<GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig>
  gpuDriverInstallationConfigs;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  final String gpuPartitionSize;

  /// Configuration for GPU sharing.
  final List<GetClusterNodeConfigGuestAcceleratorGpuSharingConfig>
  gpuSharingConfigs;

  /// The accelerator type resource name.
  final String type;

  /// Creates a new [GetClusterNodeConfigGuestAccelerator].
  /// [count] The number of the accelerator cards exposed to an instance.
  /// [gpuDriverInstallationConfigs] Configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA mig user guide (https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning)
  /// [gpuSharingConfigs] Configuration for GPU sharing.
  /// [type] The accelerator type resource name.
  GetClusterNodeConfigGuestAccelerator({
    required this.count,
    required this.gpuDriverInstallationConfigs,
    required this.gpuPartitionSize,
    required this.gpuSharingConfigs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'gpuDriverInstallationConfigs':
          pulumi.Input.encodeList<
            GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig,
            Map<String, dynamic>
          >(gpuDriverInstallationConfigs, (value) => value.toMap()),
      'gpuPartitionSize': gpuPartitionSize,
      'gpuSharingConfigs':
          pulumi.Input.encodeList<
            GetClusterNodeConfigGuestAcceleratorGpuSharingConfig,
            Map<String, dynamic>
          >(gpuSharingConfigs, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetClusterNodeConfigGuestAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigGuestAccelerator(
      count: map['count'] as int,
      gpuDriverInstallationConfigs:
          pulumi.Input.decodeList<
            GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig
          >(
            map['gpuDriverInstallationConfigs'],
            (value) =>
                GetClusterNodeConfigGuestAcceleratorGpuDriverInstallationConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      gpuPartitionSize: map['gpuPartitionSize'] as String,
      gpuSharingConfigs:
          pulumi.Input.decodeList<
            GetClusterNodeConfigGuestAcceleratorGpuSharingConfig
          >(
            map['gpuSharingConfigs'],
            (value) =>
                GetClusterNodeConfigGuestAcceleratorGpuSharingConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      type: map['type'] as String,
    );
  }
}
