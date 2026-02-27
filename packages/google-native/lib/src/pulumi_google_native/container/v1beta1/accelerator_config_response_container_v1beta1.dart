// ignore_for_file: unused_element, unnecessary_cast

import 'gpudriver_installation_config_response_container_v1beta1.dart';
import 'gpusharing_config_response_container_v1beta1.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfigResponseContainerV1beta1 {
  /// The number of the accelerator cards exposed to an instance.
  final String acceleratorCount;

  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final String acceleratorType;

  /// The configuration for auto installation of GPU driver.
  final GPUDriverInstallationConfigResponseContainerV1beta1
      gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String gpuPartitionSize;

  /// The configuration for GPU sharing options.
  final GPUSharingConfigResponseContainerV1beta1 gpuSharingConfig;

  /// The number of time-shared GPU resources to expose for each physical GPU.
  final String maxTimeSharedClientsPerGpu;

  AcceleratorConfigResponseContainerV1beta1({
    required this.acceleratorCount,
    required this.acceleratorType,
    required this.gpuDriverInstallationConfig,
    required this.gpuPartitionSize,
    required this.gpuSharingConfig,
    required this.maxTimeSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    map['gpuDriverInstallationConfig'] = gpuDriverInstallationConfig.toMap();
    map['gpuPartitionSize'] = gpuPartitionSize;
    map['gpuSharingConfig'] = gpuSharingConfig.toMap();
    map['maxTimeSharedClientsPerGpu'] = maxTimeSharedClientsPerGpu;
    return map;
  }

  factory AcceleratorConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AcceleratorConfigResponseContainerV1beta1(
      acceleratorCount: map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] as String,
      gpuDriverInstallationConfig:
          GPUDriverInstallationConfigResponseContainerV1beta1.fromMap(
              (map['gpuDriverInstallationConfig'] as Map)
                  .cast<String, dynamic>()),
      gpuPartitionSize: map['gpuPartitionSize'] as String,
      gpuSharingConfig: GPUSharingConfigResponseContainerV1beta1.fromMap(
          (map['gpuSharingConfig'] as Map).cast<String, dynamic>()),
      maxTimeSharedClientsPerGpu: map['maxTimeSharedClientsPerGpu'] as String,
    );
  }
}
