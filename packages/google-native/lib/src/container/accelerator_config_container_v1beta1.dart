// ignore_for_file: unused_element, unnecessary_cast

import 'gpudriver_installation_config_container_v1beta1.dart';
import 'gpusharing_config_container_v1beta1.dart';

/// AcceleratorConfig represents a Hardware Accelerator request.
class AcceleratorConfigContainerV1beta1 {
  /// The number of the accelerator cards exposed to an instance.
  final String? acceleratorCount;
  /// The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  final String? acceleratorType;
  /// The configuration for auto installation of GPU driver.
  final GPUDriverInstallationConfigContainerV1beta1? gpuDriverInstallationConfig;
  /// Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  final String? gpuPartitionSize;
  /// The configuration for GPU sharing options.
  final GPUSharingConfigContainerV1beta1? gpuSharingConfig;
  /// The number of time-shared GPU resources to expose for each physical GPU.
  final String? maxTimeSharedClientsPerGpu;

  /// Creates a new [AcceleratorConfigContainerV1beta1].
  /// [acceleratorCount] The number of the accelerator cards exposed to an instance.
  /// [acceleratorType] The accelerator type resource name. List of supported accelerators [here](https://cloud.google.com/compute/docs/gpus)
  /// [gpuDriverInstallationConfig] The configuration for auto installation of GPU driver.
  /// [gpuPartitionSize] Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide](https://docs.nvidia.com/datacenter/tesla/mig-user-guide/#partitioning).
  /// [gpuSharingConfig] The configuration for GPU sharing options.
  /// [maxTimeSharedClientsPerGpu] The number of time-shared GPU resources to expose for each physical GPU.
  AcceleratorConfigContainerV1beta1({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuDriverInstallationConfig,
    this.gpuPartitionSize,
    this.gpuSharingConfig,
    this.maxTimeSharedClientsPerGpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'gpuDriverInstallationConfig': ?gpuDriverInstallationConfig == null ? null : gpuDriverInstallationConfig!.toMap(),
      'gpuPartitionSize': ?gpuPartitionSize,
      'gpuSharingConfig': ?gpuSharingConfig == null ? null : gpuSharingConfig!.toMap(),
      'maxTimeSharedClientsPerGpu': ?maxTimeSharedClientsPerGpu,
    };
  }

  factory AcceleratorConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigContainerV1beta1(
      acceleratorCount: map['acceleratorCount'] == null ? null : map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      gpuDriverInstallationConfig: map['gpuDriverInstallationConfig'] == null ? null : GPUDriverInstallationConfigContainerV1beta1.fromMap((map['gpuDriverInstallationConfig'] as Map).cast<String, dynamic>()),
      gpuPartitionSize: map['gpuPartitionSize'] == null ? null : map['gpuPartitionSize'] as String,
      gpuSharingConfig: map['gpuSharingConfig'] == null ? null : GPUSharingConfigContainerV1beta1.fromMap((map['gpuSharingConfig'] as Map).cast<String, dynamic>()),
      maxTimeSharedClientsPerGpu: map['maxTimeSharedClientsPerGpu'] == null ? null : map['maxTimeSharedClientsPerGpu'] as String,
    );
  }
}

