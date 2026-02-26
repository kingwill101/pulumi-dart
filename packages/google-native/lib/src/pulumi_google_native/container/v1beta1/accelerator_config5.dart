// ignore_for_file: unused_element, unnecessary_cast

import 'gpudriver_installation_config2.dart';
import 'gpusharing_config2.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfig5 {
  /// The number of the accelerator cards exposed to an instance.
  final String? acceleratorCount;

  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final String? acceleratorType;

  /// The configuration for auto installation of GPU driver.
  final GPUDriverInstallationConfig2? gpuDriverInstallationConfig;

  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String? gpuPartitionSize;

  /// The configuration for GPU sharing options.
  final GPUSharingConfig2? gpuSharingConfig;

  /// The number of time-shared GPU resources to expose for each physical GPU.
  final String? maxTimeSharedClientsPerGpu;

  AcceleratorConfig5({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    this.maxTimeSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
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
    final maxTimeSharedClientsPerGpuValue = maxTimeSharedClientsPerGpu;
    if (maxTimeSharedClientsPerGpuValue != null) {
      map['maxTimeSharedClientsPerGpu'] = maxTimeSharedClientsPerGpuValue;
    }
    return map;
  }

  factory AcceleratorConfig5.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig5(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null
          ? null
          : GPUDriverInstallationConfig2.fromMap(
              (map['gpuDriverInstallationConfig'] as Map)
                  .cast<String, dynamic>()),
      gpuPartitionSize: map['gpuPartitionSize'] == null
          ? null
          : map['gpuPartitionSize'] as String,
      gpuSharingConfig: map['gpuSharingConfig'] == null
          ? null
          : GPUSharingConfig2.fromMap(
              (map['gpuSharingConfig'] as Map).cast<String, dynamic>()),
      maxTimeSharedClientsPerGpu: map['maxTimeSharedClientsPerGpu'] == null
          ? null
          : map['maxTimeSharedClientsPerGpu'] as String,
    );
  }
}
