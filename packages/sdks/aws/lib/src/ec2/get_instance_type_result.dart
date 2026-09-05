// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_fpga.dart';
import 'get_instance_type_gpus.dart';
import 'get_instance_type_inference_accelerator.dart';
import 'get_instance_type_instance_disk.dart';
import 'get_instance_type_media_accelerator.dart';
import 'get_instance_type_network_card.dart';
import 'get_instance_type_neuron_device.dart';

/// Result data returned by getInstanceType.
class GetInstanceTypeResult {
  /// `true` if auto recovery is supported.
  final bool? autoRecoverySupported;
  /// A set of strings of valid settings for [configurable bandwidth weighting](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-bandwidth-weighting.html), if supported.
  final List<String>? bandwidthWeightings;
  /// `true` if it is a bare metal instance type.
  final bool? bareMetal;
  /// A set of strings of supported boot modes.
  final List<String>? bootModes;
  /// `true` if the instance type is a burstable performance instance type.
  final bool? burstablePerformanceSupported;
  /// `true`  if the instance type is a current generation.
  final bool? currentGeneration;
  /// `true` if Dedicated Hosts are supported on the instance type.
  final bool? dedicatedHostsSupported;
  /// Default number of cores for the instance type.
  final int? defaultCores;
  /// The index of the default network card, starting at `0`.
  final int? defaultNetworkCardIndex;
  /// The  default  number of threads per core for the instance type.
  final int? defaultThreadsPerCore;
  /// Default number of vCPUs for the instance type.
  final int? defaultVcpus;
  /// Indicates whether Amazon EBS encryption is supported.
  final String? ebsEncryptionSupport;
  /// Whether non-volatile memory express (NVMe) is supported.
  final String? ebsNvmeSupport;
  /// Indicates that the instance type is Amazon EBS-optimized.
  final String? ebsOptimizedSupport;
  /// The baseline bandwidth performance for an EBS-optimized instance type, in Mbps.
  final int? ebsPerformanceBaselineBandwidth;
  /// The baseline input/output storage operations per seconds for an EBS-optimized instance type.
  final int? ebsPerformanceBaselineIops;
  /// The baseline throughput performance for an EBS-optimized instance type, in MBps.
  final double? ebsPerformanceBaselineThroughput;
  /// The maximum bandwidth performance for an EBS-optimized instance type, in Mbps.
  final int? ebsPerformanceMaximumBandwidth;
  /// The maximum input/output storage operations per second for an EBS-optimized instance type.
  final int? ebsPerformanceMaximumIops;
  /// The maximum throughput performance for an EBS-optimized instance type, in MBps.
  final double? ebsPerformanceMaximumThroughput;
  /// The maximum number of Elastic Fabric Adapters for the instance type.
  final int? efaMaximumInterfaces;
  /// `true` if Elastic Fabric Adapter (EFA) is supported.
  final bool? efaSupported;
  /// `true` if the instance type supports [ENA Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ena-express.html).
  final bool? enaSrdSupported;
  /// Indicates whether Elastic Network Adapter (ENA) is `"supported"`, `"required"`, or `"unsupported"`.
  final String? enaSupport;
  /// `true` if encryption in-transit between instances is supported.
  final bool? encryptionInTransitSupported;
  /// Describes the FPGA accelerator settings for the instance type.
  /// * `fpgas.#.count` - The count of FPGA accelerators for the instance type.
  /// * `fpgas.#.manufacturer` - The manufacturer of the FPGA accelerator.
  /// * `fpgas.#.memory_size` - The size (in MiB) of the memory available to the FPGA accelerator.
  /// * `fpgas.#.name` - The name of the FPGA accelerator.
  final List<GetInstanceTypeFpga>? fpgas;
  /// `true` if the instance type is eligible for the free tier.
  final bool? freeTierEligible;
  /// Describes the GPU accelerators for the instance type.
  /// * `gpus.#.count` - The number of GPUs for the instance type.
  /// * `gpus.#.manufacturer` - The manufacturer of the GPU accelerator.
  /// * `gpus.#.memory_size` - The size (in MiB) of the memory available to the GPU accelerator.
  /// * `gpus.#.name` - The name of the GPU accelerator.
  final List<GetInstanceTypeGpus>? gpuses;
  /// `true` if On-Demand hibernation is supported.
  final bool? hibernationSupported;
  /// Hypervisor used for the instance type.
  final String? hypervisor;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Describes the Inference accelerators for the instance type.
  /// * `inference_accelerators.#.count` - The number of Inference accelerators for the instance type.
  /// * `inference_accelerators.#.manufacturer` - The manufacturer of the Inference accelerator.
  /// * `inference_accelerators.#.memory_size` - The size (in MiB) of the memory available to the inference accelerator.
  /// * `inference_accelerators.#.name` - The name of the Inference accelerator.
  final List<GetInstanceTypeInferenceAccelerator>? inferenceAccelerators;
  /// Describes the disks for the instance type.
  /// * `instance_disks.#.count` - The number of disks with this configuration.
  /// * `instance_disks.#.size` - The size of the disk in GB.
  /// * `instance_disks.#.type` - The type of disk.
  final List<GetInstanceTypeInstanceDisk>? instanceDisks;
  /// `true` if instance storage is supported.
  final bool? instanceStorageSupported;
  final String? instanceType;
  /// `true` if IPv6 is supported.
  final bool? ipv6Supported;
  /// The maximum number of IPv4 addresses per network interface.
  final int? maximumIpv4AddressesPerInterface;
  /// The maximum number of IPv6 addresses per network interface.
  final int? maximumIpv6AddressesPerInterface;
  /// The maximum number of physical network cards that can be allocated to the instance.
  final int? maximumNetworkCards;
  /// The maximum number of network interfaces for the instance type.
  final int? maximumNetworkInterfaces;
  /// Describes the media accelerator settings for the instance type.
  /// * `media_accelerators.#.count` - The number of media accelerators for the instance type.
  /// * `media_accelerators.#.manufacturer` - The manufacturer of the media accelerator.
  /// * `media_accelerators.#.memory_size` - The size (in MiB) of the memory available to each media accelerator.
  /// * `media_accelerators.#.name` - The name of the media accelerator.
  final List<GetInstanceTypeMediaAccelerator>? mediaAccelerators;
  /// Size of the instance memory, in MiB.
  final int? memorySize;
  /// Describes the network cards for the instance type.
  /// * `network_cards.#.baseline_bandwidth` - The baseline network performance (in Gbps) of the network card.
  /// * `network_cards.#.index` - The index of the network card.
  /// * `network_cards.#.maximum_interfaces` - The maximum number of network interfaces for the /network card.
  /// * `network_cards.#.performance` - Describes the network performance of the network card.
  /// * `network_cards.#.peak_bandwidth` - The peak (burst) network performance (in Gbps) of the network card.
  final List<GetInstanceTypeNetworkCard>? networkCards;
  /// Describes the network performance.
  final String? networkPerformance;
  /// Describes the Neuron accelerator settings for the instance type.
  /// * `neuron_devices.#.core_count` - The number of cores available to the neuron accelerator.
  /// * `neuron_devices.#.core_version` - A number representing the version of the neuron accelerator.
  /// * `neuron_devices.#.count` - The number of neuron accelerators for the instance type.
  /// * `neuron_devices.#.memory_size` - The size (in MiB) of the memory available to the neuron accelerator.
  /// * `neuron_devices.#.name` - The name of the neuron accelerator.
  final List<GetInstanceTypeNeuronDevice>? neuronDevices;
  /// Indicates whether Nitro Enclaves is `"supported"` or `"unsupported"`.
  final String? nitroEnclavesSupport;
  /// Indicates whether NitroTPM is `"supported"` or `"unsupported"`.
  final String? nitroTpmSupport;
  /// A set of strings indicating the supported NitroTPM versions.
  final List<String>? nitroTpmSupportedVersions;
  /// `true` if a local Precision Time Protocol (PTP) hardware clock (PHC) is supported.
  final String? phcSupport;
  final String? region;
  /// A list of strings of architectures supported by the instance type.
  final List<String>? supportedArchitectures;
  /// A set of strings indicating supported CPU features.
  final List<String>? supportedCpuFeatures;
  /// A list of supported placement groups types.
  final List<String>? supportedPlacementStrategies;
  /// A list of supported root device types.
  final List<String>? supportedRootDeviceTypes;
  /// A list of supported usage classes.  Usage classes are `"spot"`, `"on-demand"`, or `"capacity-block"`.
  final List<String>? supportedUsagesClasses;
  /// The supported virtualization types.
  final List<String>? supportedVirtualizationTypes;
  /// The speed of the processor, in GHz.
  final double? sustainedClockSpeed;
  /// Total memory of all FPGA accelerators for the instance type (in MiB).
  final int? totalFpgaMemory;
  /// Total size of the memory for the GPU accelerators for the instance type (in MiB).
  final int? totalGpuMemory;
  /// The total size of the memory for the neuron accelerators for the instance type (in MiB).
  final int? totalInferenceMemory;
  /// The total size of the instance disks, in GB.
  final int? totalInstanceStorage;
  /// The total size of the memory for the media accelerators for the instance type (in MiB).
  final int? totalMediaMemory;
  /// The total size of the memory for the neuron accelerators for the instance type (in MiB).
  final int? totalNeuronDeviceMemory;
  /// List of the valid number of cores that can be configured for the instance type.
  final List<int>? validCores;
  /// List of the valid number of threads per core that can be configured for the instance type.
  final List<int>? validThreadsPerCores;

  /// Creates a new [GetInstanceTypeResult].
  /// [autoRecoverySupported] `true` if auto recovery is supported.
  /// [bandwidthWeightings] A set of strings of valid settings for [configurable bandwidth weighting](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-bandwidth-weighting.html), if supported.
  /// [bareMetal] `true` if it is a bare metal instance type.
  /// [bootModes] A set of strings of supported boot modes.
  /// [burstablePerformanceSupported] `true` if the instance type is a burstable performance instance type.
  /// [currentGeneration] `true`  if the instance type is a current generation.
  /// [dedicatedHostsSupported] `true` if Dedicated Hosts are supported on the instance type.
  /// [defaultCores] Default number of cores for the instance type.
  /// [defaultNetworkCardIndex] The index of the default network card, starting at `0`.
  /// [defaultThreadsPerCore] The  default  number of threads per core for the instance type.
  /// [defaultVcpus] Default number of vCPUs for the instance type.
  /// [ebsEncryptionSupport] Indicates whether Amazon EBS encryption is supported.
  /// [ebsNvmeSupport] Whether non-volatile memory express (NVMe) is supported.
  /// [ebsOptimizedSupport] Indicates that the instance type is Amazon EBS-optimized.
  /// [ebsPerformanceBaselineBandwidth] The baseline bandwidth performance for an EBS-optimized instance type, in Mbps.
  /// [ebsPerformanceBaselineIops] The baseline input/output storage operations per seconds for an EBS-optimized instance type.
  /// [ebsPerformanceBaselineThroughput] The baseline throughput performance for an EBS-optimized instance type, in MBps.
  /// [ebsPerformanceMaximumBandwidth] The maximum bandwidth performance for an EBS-optimized instance type, in Mbps.
  /// [ebsPerformanceMaximumIops] The maximum input/output storage operations per second for an EBS-optimized instance type.
  /// [ebsPerformanceMaximumThroughput] The maximum throughput performance for an EBS-optimized instance type, in MBps.
  /// [efaMaximumInterfaces] The maximum number of Elastic Fabric Adapters for the instance type.
  /// [efaSupported] `true` if Elastic Fabric Adapter (EFA) is supported.
  /// [enaSrdSupported] `true` if the instance type supports [ENA Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ena-express.html).
  /// [enaSupport] Indicates whether Elastic Network Adapter (ENA) is `"supported"`, `"required"`, or `"unsupported"`.
  /// [encryptionInTransitSupported] `true` if encryption in-transit between instances is supported.
  /// [fpgas] Describes the FPGA accelerator settings for the instance type.
  /// [freeTierEligible] `true` if the instance type is eligible for the free tier.
  /// [gpuses] Describes the GPU accelerators for the instance type.
  /// [hibernationSupported] `true` if On-Demand hibernation is supported.
  /// [hypervisor] Hypervisor used for the instance type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inferenceAccelerators] Describes the Inference accelerators for the instance type.
  /// [instanceDisks] Describes the disks for the instance type.
  /// [instanceStorageSupported] `true` if instance storage is supported.
  /// [instanceType] Optional.
  /// [ipv6Supported] `true` if IPv6 is supported.
  /// [maximumIpv4AddressesPerInterface] The maximum number of IPv4 addresses per network interface.
  /// [maximumIpv6AddressesPerInterface] The maximum number of IPv6 addresses per network interface.
  /// [maximumNetworkCards] The maximum number of physical network cards that can be allocated to the instance.
  /// [maximumNetworkInterfaces] The maximum number of network interfaces for the instance type.
  /// [mediaAccelerators] Describes the media accelerator settings for the instance type.
  /// [memorySize] Size of the instance memory, in MiB.
  /// [networkCards] Describes the network cards for the instance type.
  /// [networkPerformance] Describes the network performance.
  /// [neuronDevices] Describes the Neuron accelerator settings for the instance type.
  /// [nitroEnclavesSupport] Indicates whether Nitro Enclaves is `"supported"` or `"unsupported"`.
  /// [nitroTpmSupport] Indicates whether NitroTPM is `"supported"` or `"unsupported"`.
  /// [nitroTpmSupportedVersions] A set of strings indicating the supported NitroTPM versions.
  /// [phcSupport] `true` if a local Precision Time Protocol (PTP) hardware clock (PHC) is supported.
  /// [region] Optional.
  /// [supportedArchitectures] A list of strings of architectures supported by the instance type.
  /// [supportedCpuFeatures] A set of strings indicating supported CPU features.
  /// [supportedPlacementStrategies] A list of supported placement groups types.
  /// [supportedRootDeviceTypes] A list of supported root device types.
  /// [supportedUsagesClasses] A list of supported usage classes.  Usage classes are `"spot"`, `"on-demand"`, or `"capacity-block"`.
  /// [supportedVirtualizationTypes] The supported virtualization types.
  /// [sustainedClockSpeed] The speed of the processor, in GHz.
  /// [totalFpgaMemory] Total memory of all FPGA accelerators for the instance type (in MiB).
  /// [totalGpuMemory] Total size of the memory for the GPU accelerators for the instance type (in MiB).
  /// [totalInferenceMemory] The total size of the memory for the neuron accelerators for the instance type (in MiB).
  /// [totalInstanceStorage] The total size of the instance disks, in GB.
  /// [totalMediaMemory] The total size of the memory for the media accelerators for the instance type (in MiB).
  /// [totalNeuronDeviceMemory] The total size of the memory for the neuron accelerators for the instance type (in MiB).
  /// [validCores] List of the valid number of cores that can be configured for the instance type.
  /// [validThreadsPerCores] List of the valid number of threads per core that can be configured for the instance type.
  const GetInstanceTypeResult({
    this.autoRecoverySupported,
    this.bandwidthWeightings,
    this.bareMetal,
    this.bootModes,
    this.burstablePerformanceSupported,
    this.currentGeneration,
    this.dedicatedHostsSupported,
    this.defaultCores,
    this.defaultNetworkCardIndex,
    this.defaultThreadsPerCore,
    this.defaultVcpus,
    this.ebsEncryptionSupport,
    this.ebsNvmeSupport,
    this.ebsOptimizedSupport,
    this.ebsPerformanceBaselineBandwidth,
    this.ebsPerformanceBaselineIops,
    this.ebsPerformanceBaselineThroughput,
    this.ebsPerformanceMaximumBandwidth,
    this.ebsPerformanceMaximumIops,
    this.ebsPerformanceMaximumThroughput,
    this.efaMaximumInterfaces,
    this.efaSupported,
    this.enaSrdSupported,
    this.enaSupport,
    this.encryptionInTransitSupported,
    this.fpgas,
    this.freeTierEligible,
    this.gpuses,
    this.hibernationSupported,
    this.hypervisor,
    this.id,
    this.inferenceAccelerators,
    this.instanceDisks,
    this.instanceStorageSupported,
    this.instanceType,
    this.ipv6Supported,
    this.maximumIpv4AddressesPerInterface,
    this.maximumIpv6AddressesPerInterface,
    this.maximumNetworkCards,
    this.maximumNetworkInterfaces,
    this.mediaAccelerators,
    this.memorySize,
    this.networkCards,
    this.networkPerformance,
    this.neuronDevices,
    this.nitroEnclavesSupport,
    this.nitroTpmSupport,
    this.nitroTpmSupportedVersions,
    this.phcSupport,
    this.region,
    this.supportedArchitectures,
    this.supportedCpuFeatures,
    this.supportedPlacementStrategies,
    this.supportedRootDeviceTypes,
    this.supportedUsagesClasses,
    this.supportedVirtualizationTypes,
    this.sustainedClockSpeed,
    this.totalFpgaMemory,
    this.totalGpuMemory,
    this.totalInferenceMemory,
    this.totalInstanceStorage,
    this.totalMediaMemory,
    this.totalNeuronDeviceMemory,
    this.validCores,
    this.validThreadsPerCores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRecoverySupported': ?autoRecoverySupported,
      'bandwidthWeightings': ?bandwidthWeightings,
      'bareMetal': ?bareMetal,
      'bootModes': ?bootModes,
      'burstablePerformanceSupported': ?burstablePerformanceSupported,
      'currentGeneration': ?currentGeneration,
      'dedicatedHostsSupported': ?dedicatedHostsSupported,
      'defaultCores': ?defaultCores,
      'defaultNetworkCardIndex': ?defaultNetworkCardIndex,
      'defaultThreadsPerCore': ?defaultThreadsPerCore,
      'defaultVcpus': ?defaultVcpus,
      'ebsEncryptionSupport': ?ebsEncryptionSupport,
      'ebsNvmeSupport': ?ebsNvmeSupport,
      'ebsOptimizedSupport': ?ebsOptimizedSupport,
      'ebsPerformanceBaselineBandwidth': ?ebsPerformanceBaselineBandwidth,
      'ebsPerformanceBaselineIops': ?ebsPerformanceBaselineIops,
      'ebsPerformanceBaselineThroughput': ?ebsPerformanceBaselineThroughput,
      'ebsPerformanceMaximumBandwidth': ?ebsPerformanceMaximumBandwidth,
      'ebsPerformanceMaximumIops': ?ebsPerformanceMaximumIops,
      'ebsPerformanceMaximumThroughput': ?ebsPerformanceMaximumThroughput,
      'efaMaximumInterfaces': ?efaMaximumInterfaces,
      'efaSupported': ?efaSupported,
      'enaSrdSupported': ?enaSrdSupported,
      'enaSupport': ?enaSupport,
      'encryptionInTransitSupported': ?encryptionInTransitSupported,
      'fpgas': ?(() { final guardedValue = fpgas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeFpga, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'freeTierEligible': ?freeTierEligible,
      'gpuses': ?(() { final guardedValue = gpuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeGpus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hibernationSupported': ?hibernationSupported,
      'hypervisor': ?hypervisor,
      'id': ?id,
      'inferenceAccelerators': ?(() { final guardedValue = inferenceAccelerators; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeInferenceAccelerator, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceDisks': ?(() { final guardedValue = instanceDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeInstanceDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceStorageSupported': ?instanceStorageSupported,
      'instanceType': ?instanceType,
      'ipv6Supported': ?ipv6Supported,
      'maximumIpv4AddressesPerInterface': ?maximumIpv4AddressesPerInterface,
      'maximumIpv6AddressesPerInterface': ?maximumIpv6AddressesPerInterface,
      'maximumNetworkCards': ?maximumNetworkCards,
      'maximumNetworkInterfaces': ?maximumNetworkInterfaces,
      'mediaAccelerators': ?(() { final guardedValue = mediaAccelerators; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeMediaAccelerator, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memorySize': ?memorySize,
      'networkCards': ?(() { final guardedValue = networkCards; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeNetworkCard, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkPerformance': ?networkPerformance,
      'neuronDevices': ?(() { final guardedValue = neuronDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceTypeNeuronDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nitroEnclavesSupport': ?nitroEnclavesSupport,
      'nitroTpmSupport': ?nitroTpmSupport,
      'nitroTpmSupportedVersions': ?nitroTpmSupportedVersions,
      'phcSupport': ?phcSupport,
      'region': ?region,
      'supportedArchitectures': ?supportedArchitectures,
      'supportedCpuFeatures': ?supportedCpuFeatures,
      'supportedPlacementStrategies': ?supportedPlacementStrategies,
      'supportedRootDeviceTypes': ?supportedRootDeviceTypes,
      'supportedUsagesClasses': ?supportedUsagesClasses,
      'supportedVirtualizationTypes': ?supportedVirtualizationTypes,
      'sustainedClockSpeed': ?sustainedClockSpeed,
      'totalFpgaMemory': ?totalFpgaMemory,
      'totalGpuMemory': ?totalGpuMemory,
      'totalInferenceMemory': ?totalInferenceMemory,
      'totalInstanceStorage': ?totalInstanceStorage,
      'totalMediaMemory': ?totalMediaMemory,
      'totalNeuronDeviceMemory': ?totalNeuronDeviceMemory,
      'validCores': ?validCores,
      'validThreadsPerCores': ?validThreadsPerCores,
    };
  }

  factory GetInstanceTypeResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeResult(
      autoRecoverySupported: (() { final guardedValue = map['autoRecoverySupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      bandwidthWeightings: (() { final guardedValue = map['bandwidthWeightings']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      bareMetal: (() { final guardedValue = map['bareMetal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      bootModes: (() { final guardedValue = map['bootModes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      burstablePerformanceSupported: (() { final guardedValue = map['burstablePerformanceSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      currentGeneration: (() { final guardedValue = map['currentGeneration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dedicatedHostsSupported: (() { final guardedValue = map['dedicatedHostsSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultCores: (() { final guardedValue = map['defaultCores']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultNetworkCardIndex: (() { final guardedValue = map['defaultNetworkCardIndex']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultThreadsPerCore: (() { final guardedValue = map['defaultThreadsPerCore']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultVcpus: (() { final guardedValue = map['defaultVcpus']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ebsEncryptionSupport: (() { final guardedValue = map['ebsEncryptionSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ebsNvmeSupport: (() { final guardedValue = map['ebsNvmeSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ebsOptimizedSupport: (() { final guardedValue = map['ebsOptimizedSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ebsPerformanceBaselineBandwidth: (() { final guardedValue = map['ebsPerformanceBaselineBandwidth']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ebsPerformanceBaselineIops: (() { final guardedValue = map['ebsPerformanceBaselineIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ebsPerformanceBaselineThroughput: (() { final guardedValue = map['ebsPerformanceBaselineThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      ebsPerformanceMaximumBandwidth: (() { final guardedValue = map['ebsPerformanceMaximumBandwidth']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ebsPerformanceMaximumIops: (() { final guardedValue = map['ebsPerformanceMaximumIops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ebsPerformanceMaximumThroughput: (() { final guardedValue = map['ebsPerformanceMaximumThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      efaMaximumInterfaces: (() { final guardedValue = map['efaMaximumInterfaces']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      efaSupported: (() { final guardedValue = map['efaSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enaSrdSupported: (() { final guardedValue = map['enaSrdSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enaSupport: (() { final guardedValue = map['enaSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionInTransitSupported: (() { final guardedValue = map['encryptionInTransitSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fpgas: (() { final guardedValue = map['fpgas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeFpga>(guardedValue, (value) => GetInstanceTypeFpga.fromMap((value as Map).cast<String, dynamic>())); })(),
      freeTierEligible: (() { final guardedValue = map['freeTierEligible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      gpuses: (() { final guardedValue = map['gpuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeGpus>(guardedValue, (value) => GetInstanceTypeGpus.fromMap((value as Map).cast<String, dynamic>())); })(),
      hibernationSupported: (() { final guardedValue = map['hibernationSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hypervisor: (() { final guardedValue = map['hypervisor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inferenceAccelerators: (() { final guardedValue = map['inferenceAccelerators']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeInferenceAccelerator>(guardedValue, (value) => GetInstanceTypeInferenceAccelerator.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceDisks: (() { final guardedValue = map['instanceDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeInstanceDisk>(guardedValue, (value) => GetInstanceTypeInstanceDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceStorageSupported: (() { final guardedValue = map['instanceStorageSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Supported: (() { final guardedValue = map['ipv6Supported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maximumIpv4AddressesPerInterface: (() { final guardedValue = map['maximumIpv4AddressesPerInterface']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maximumIpv6AddressesPerInterface: (() { final guardedValue = map['maximumIpv6AddressesPerInterface']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maximumNetworkCards: (() { final guardedValue = map['maximumNetworkCards']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maximumNetworkInterfaces: (() { final guardedValue = map['maximumNetworkInterfaces']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      mediaAccelerators: (() { final guardedValue = map['mediaAccelerators']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeMediaAccelerator>(guardedValue, (value) => GetInstanceTypeMediaAccelerator.fromMap((value as Map).cast<String, dynamic>())); })(),
      memorySize: (() { final guardedValue = map['memorySize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      networkCards: (() { final guardedValue = map['networkCards']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeNetworkCard>(guardedValue, (value) => GetInstanceTypeNetworkCard.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkPerformance: (() { final guardedValue = map['networkPerformance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      neuronDevices: (() { final guardedValue = map['neuronDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceTypeNeuronDevice>(guardedValue, (value) => GetInstanceTypeNeuronDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      nitroEnclavesSupport: (() { final guardedValue = map['nitroEnclavesSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nitroTpmSupport: (() { final guardedValue = map['nitroTpmSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nitroTpmSupportedVersions: (() { final guardedValue = map['nitroTpmSupportedVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      phcSupport: (() { final guardedValue = map['phcSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedArchitectures: (() { final guardedValue = map['supportedArchitectures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedCpuFeatures: (() { final guardedValue = map['supportedCpuFeatures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedPlacementStrategies: (() { final guardedValue = map['supportedPlacementStrategies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedRootDeviceTypes: (() { final guardedValue = map['supportedRootDeviceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedUsagesClasses: (() { final guardedValue = map['supportedUsagesClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedVirtualizationTypes: (() { final guardedValue = map['supportedVirtualizationTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sustainedClockSpeed: (() { final guardedValue = map['sustainedClockSpeed']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      totalFpgaMemory: (() { final guardedValue = map['totalFpgaMemory']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalGpuMemory: (() { final guardedValue = map['totalGpuMemory']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalInferenceMemory: (() { final guardedValue = map['totalInferenceMemory']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalInstanceStorage: (() { final guardedValue = map['totalInstanceStorage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalMediaMemory: (() { final guardedValue = map['totalMediaMemory']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalNeuronDeviceMemory: (() { final guardedValue = map['totalNeuronDeviceMemory']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      validCores: (() { final guardedValue = map['validCores']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      validThreadsPerCores: (() { final guardedValue = map['validThreadsPerCores']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
    );
  }
}
