// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_type_fpga/get_instance_type_fpga.dart';
import '../get_instance_type_gpus/get_instance_type_gpus.dart';
import '../get_instance_type_inference_accelerator/get_instance_type_inference_accelerator.dart';
import '../get_instance_type_instance_disk/get_instance_type_instance_disk.dart';
import '../get_instance_type_media_accelerator/get_instance_type_media_accelerator.dart';
import '../get_instance_type_network_card/get_instance_type_network_card.dart';
import '../get_instance_type_neuron_device/get_instance_type_neuron_device.dart';

/// Result data returned by getInstanceType.
class GetInstanceTypeResult {
  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if auto recovery is supported.
  final bool autoRecoverySupported;

  /// A set of strings of valid settings for [configurable bandwidth weighting](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-bandwidth-weighting.html), if supported.
  final List<String> bandwidthWeightings;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if it is a bare metal instance type.
  final bool bareMetal;

  /// A set of strings of supported boot modes.
  final List<String> bootModes;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if the instance type is a burstable performance instance type.
  final bool burstablePerformanceSupported;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>  if the instance type is a current generation.
  final bool currentGeneration;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if Dedicated Hosts are supported on the instance type.
  final bool dedicatedHostsSupported;

  /// Default number of cores for the instance type.
  final int defaultCores;

  /// The index of the default network card, starting at <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int defaultNetworkCardIndex;

  /// The  default  number of threads per core for the instance type.
  final int defaultThreadsPerCore;

  /// Default number of vCPUs for the instance type.
  final int defaultVcpus;

  /// Indicates whether Amazon EBS encryption is supported.
  final String ebsEncryptionSupport;

  /// Whether non-volatile memory express (NVMe) is supported.
  final String ebsNvmeSupport;

  /// Indicates that the instance type is Amazon EBS-optimized.
  final String ebsOptimizedSupport;

  /// The baseline bandwidth performance for an EBS-optimized instance type, in Mbps.
  final int ebsPerformanceBaselineBandwidth;

  /// The baseline input/output storage operations per seconds for an EBS-optimized instance type.
  final int ebsPerformanceBaselineIops;

  /// The baseline throughput performance for an EBS-optimized instance type, in MBps.
  final double ebsPerformanceBaselineThroughput;

  /// The maximum bandwidth performance for an EBS-optimized instance type, in Mbps.
  final int ebsPerformanceMaximumBandwidth;

  /// The maximum input/output storage operations per second for an EBS-optimized instance type.
  final int ebsPerformanceMaximumIops;

  /// The maximum throughput performance for an EBS-optimized instance type, in MBps.
  final double ebsPerformanceMaximumThroughput;

  /// The maximum number of Elastic Fabric Adapters for the instance type.
  final int efaMaximumInterfaces;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if Elastic Fabric Adapter (EFA) is supported.
  final bool efaSupported;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if the instance type supports [ENA Express](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ena-express.html).
  final bool enaSrdSupported;

  /// Indicates whether Elastic Network Adapter (ENA) is `"supported"`, `"required"`, or `"unsupported"`.
  final String enaSupport;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if encryption in-transit between instances is supported.
  final bool encryptionInTransitSupported;

  /// Describes the FPGA accelerator settings for the instance type.
  /// * `fpgas.#.count` - The count of FPGA accelerators for the instance type.
  /// * `fpgas.#.manufacturer` - The manufacturer of the FPGA accelerator.
  /// * `fpgas.#.memory_size` - The size (in MiB) of the memory available to the FPGA accelerator.
  /// * `fpgas.#.name` - The name of the FPGA accelerator.
  final List<GetInstanceTypeFpga> fpgas;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if the instance type is eligible for the free tier.
  final bool freeTierEligible;

  /// Describes the GPU accelerators for the instance type.
  /// * `gpus.#.count` - The number of GPUs for the instance type.
  /// * `gpus.#.manufacturer` - The manufacturer of the GPU accelerator.
  /// * `gpus.#.memory_size` - The size (in MiB) of the memory available to the GPU accelerator.
  /// * `gpus.#.name` - The name of the GPU accelerator.
  final List<GetInstanceTypeGpus> gpuses;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if On-Demand hibernation is supported.
  final bool hibernationSupported;

  /// Hypervisor used for the instance type.
  final String hypervisor;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Describes the Inference accelerators for the instance type.
  /// * `inference_accelerators.#.count` - The number of Inference accelerators for the instance type.
  /// * `inference_accelerators.#.manufacturer` - The manufacturer of the Inference accelerator.
  /// * `inference_accelerators.#.memory_size` - The size (in MiB) of the memory available to the inference accelerator.
  /// * `inference_accelerators.#.name` - The name of the Inference accelerator.
  final List<GetInstanceTypeInferenceAccelerator> inferenceAccelerators;

  /// Describes the disks for the instance type.
  /// * `instance_disks.#.count` - The number of disks with this configuration.
  /// * `instance_disks.#.size` - The size of the disk in GB.
  /// * `instance_disks.#.type` - The type of disk.
  final List<GetInstanceTypeInstanceDisk> instanceDisks;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if instance storage is supported.
  final bool instanceStorageSupported;
  final String instanceType;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if IPv6 is supported.
  final bool ipv6Supported;

  /// The maximum number of IPv4 addresses per network interface.
  final int maximumIpv4AddressesPerInterface;

  /// The maximum number of IPv6 addresses per network interface.
  final int maximumIpv6AddressesPerInterface;

  /// The maximum number of physical network cards that can be allocated to the instance.
  final int maximumNetworkCards;

  /// The maximum number of network interfaces for the instance type.
  final int maximumNetworkInterfaces;

  /// Describes the media accelerator settings for the instance type.
  /// * `media_accelerators.#.count` - The number of media accelerators for the instance type.
  /// * `media_accelerators.#.manufacturer` - The manufacturer of the media accelerator.
  /// * `media_accelerators.#.memory_size` - The size (in MiB) of the memory available to each media accelerator.
  /// * `media_accelerators.#.name` - The name of the media accelerator.
  final List<GetInstanceTypeMediaAccelerator> mediaAccelerators;

  /// Size of the instance memory, in MiB.
  final int memorySize;

  /// Describes the network cards for the instance type.
  /// * `network_cards.#.baseline_bandwidth` - The baseline network performance (in Gbps) of the network card.
  /// * `network_cards.#.index` - The index of the network card.
  /// * `network_cards.#.maximum_interfaces` - The maximum number of network interfaces for the /network card.
  /// * `network_cards.#.performance` - Describes the network performance of the network card.
  /// * `network_cards.#.peak_bandwidth` - The peak (burst) network performance (in Gbps) of the network card.
  final List<GetInstanceTypeNetworkCard> networkCards;

  /// Describes the network performance.
  final String networkPerformance;

  /// Describes the Neuron accelerator settings for the instance type.
  /// * `neuron_devices.#.core_count` - The number of cores available to the neuron accelerator.
  /// * `neuron_devices.#.core_version` - A number representing the version of the neuron accelerator.
  /// * `neuron_devices.#.count` - The number of neuron accelerators for the instance type.
  /// * `neuron_devices.#.memory_size` - The size (in MiB) of the memory available to the neuron accelerator.
  /// * `neuron_devices.#.name` - The name of the neuron accelerator.
  final List<GetInstanceTypeNeuronDevice> neuronDevices;

  /// Indicates whether Nitro Enclaves is `"supported"` or `"unsupported"`.
  final String nitroEnclavesSupport;

  /// Indicates whether NitroTPM is `"supported"` or `"unsupported"`.
  final String nitroTpmSupport;

  /// A set of strings indicating the supported NitroTPM versions.
  final List<String> nitroTpmSupportedVersions;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if a local Precision Time Protocol (PTP) hardware clock (PHC) is supported.
  final String phcSupport;
  final String region;

  /// A list of strings of architectures supported by the instance type.
  final List<String> supportedArchitectures;

  /// A set of strings indicating supported CPU features.
  final List<String> supportedCpuFeatures;

  /// A list of supported placement groups types.
  final List<String> supportedPlacementStrategies;

  /// A list of supported root device types.
  final List<String> supportedRootDeviceTypes;

  /// A list of supported usage classes.  Usage classes are `"spot"`, `"on-demand"`, or `"capacity-block"`.
  final List<String> supportedUsagesClasses;

  /// The supported virtualization types.
  final List<String> supportedVirtualizationTypes;

  /// The speed of the processor, in GHz.
  final double sustainedClockSpeed;

  /// Total memory of all FPGA accelerators for the instance type (in MiB).
  final int totalFpgaMemory;

  /// Total size of the memory for the GPU accelerators for the instance type (in MiB).
  final int totalGpuMemory;

  /// The total size of the memory for the neuron accelerators for the instance type (in MiB).
  final int totalInferenceMemory;

  /// The total size of the instance disks, in GB.
  final int totalInstanceStorage;

  /// The total size of the memory for the media accelerators for the instance type (in MiB).
  final int totalMediaMemory;

  /// The total size of the memory for the neuron accelerators for the instance type (in MiB).
  final int totalNeuronDeviceMemory;

  /// List of the valid number of cores that can be configured for the instance type.
  final List<int> validCores;

  /// List of the valid number of threads per core that can be configured for the instance type.
  final List<int> validThreadsPerCores;

  GetInstanceTypeResult({
    required this.autoRecoverySupported,
    required this.bandwidthWeightings,
    required this.bareMetal,
    required this.bootModes,
    required this.burstablePerformanceSupported,
    required this.currentGeneration,
    required this.dedicatedHostsSupported,
    required this.defaultCores,
    required this.defaultNetworkCardIndex,
    required this.defaultThreadsPerCore,
    required this.defaultVcpus,
    required this.ebsEncryptionSupport,
    required this.ebsNvmeSupport,
    required this.ebsOptimizedSupport,
    required this.ebsPerformanceBaselineBandwidth,
    required this.ebsPerformanceBaselineIops,
    required this.ebsPerformanceBaselineThroughput,
    required this.ebsPerformanceMaximumBandwidth,
    required this.ebsPerformanceMaximumIops,
    required this.ebsPerformanceMaximumThroughput,
    required this.efaMaximumInterfaces,
    required this.efaSupported,
    required this.enaSrdSupported,
    required this.enaSupport,
    required this.encryptionInTransitSupported,
    required this.fpgas,
    required this.freeTierEligible,
    required this.gpuses,
    required this.hibernationSupported,
    required this.hypervisor,
    required this.id,
    required this.inferenceAccelerators,
    required this.instanceDisks,
    required this.instanceStorageSupported,
    required this.instanceType,
    required this.ipv6Supported,
    required this.maximumIpv4AddressesPerInterface,
    required this.maximumIpv6AddressesPerInterface,
    required this.maximumNetworkCards,
    required this.maximumNetworkInterfaces,
    required this.mediaAccelerators,
    required this.memorySize,
    required this.networkCards,
    required this.networkPerformance,
    required this.neuronDevices,
    required this.nitroEnclavesSupport,
    required this.nitroTpmSupport,
    required this.nitroTpmSupportedVersions,
    required this.phcSupport,
    required this.region,
    required this.supportedArchitectures,
    required this.supportedCpuFeatures,
    required this.supportedPlacementStrategies,
    required this.supportedRootDeviceTypes,
    required this.supportedUsagesClasses,
    required this.supportedVirtualizationTypes,
    required this.sustainedClockSpeed,
    required this.totalFpgaMemory,
    required this.totalGpuMemory,
    required this.totalInferenceMemory,
    required this.totalInstanceStorage,
    required this.totalMediaMemory,
    required this.totalNeuronDeviceMemory,
    required this.validCores,
    required this.validThreadsPerCores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoRecoverySupported'] = autoRecoverySupported;
    map['bandwidthWeightings'] = bandwidthWeightings;
    map['bareMetal'] = bareMetal;
    map['bootModes'] = bootModes;
    map['burstablePerformanceSupported'] = burstablePerformanceSupported;
    map['currentGeneration'] = currentGeneration;
    map['dedicatedHostsSupported'] = dedicatedHostsSupported;
    map['defaultCores'] = defaultCores;
    map['defaultNetworkCardIndex'] = defaultNetworkCardIndex;
    map['defaultThreadsPerCore'] = defaultThreadsPerCore;
    map['defaultVcpus'] = defaultVcpus;
    map['ebsEncryptionSupport'] = ebsEncryptionSupport;
    map['ebsNvmeSupport'] = ebsNvmeSupport;
    map['ebsOptimizedSupport'] = ebsOptimizedSupport;
    map['ebsPerformanceBaselineBandwidth'] = ebsPerformanceBaselineBandwidth;
    map['ebsPerformanceBaselineIops'] = ebsPerformanceBaselineIops;
    map['ebsPerformanceBaselineThroughput'] = ebsPerformanceBaselineThroughput;
    map['ebsPerformanceMaximumBandwidth'] = ebsPerformanceMaximumBandwidth;
    map['ebsPerformanceMaximumIops'] = ebsPerformanceMaximumIops;
    map['ebsPerformanceMaximumThroughput'] = ebsPerformanceMaximumThroughput;
    map['efaMaximumInterfaces'] = efaMaximumInterfaces;
    map['efaSupported'] = efaSupported;
    map['enaSrdSupported'] = enaSrdSupported;
    map['enaSupport'] = enaSupport;
    map['encryptionInTransitSupported'] = encryptionInTransitSupported;
    map['fpgas'] = Input.encodeList<GetInstanceTypeFpga, Map<String, dynamic>>(
        fpgas, (value) => value.toMap());
    map['freeTierEligible'] = freeTierEligible;
    map['gpuses'] = Input.encodeList<GetInstanceTypeGpus, Map<String, dynamic>>(
        gpuses, (value) => value.toMap());
    map['hibernationSupported'] = hibernationSupported;
    map['hypervisor'] = hypervisor;
    map['id'] = id;
    map['inferenceAccelerators'] = Input.encodeList<
        GetInstanceTypeInferenceAccelerator,
        Map<String, dynamic>>(inferenceAccelerators, (value) => value.toMap());
    map['instanceDisks'] =
        Input.encodeList<GetInstanceTypeInstanceDisk, Map<String, dynamic>>(
            instanceDisks, (value) => value.toMap());
    map['instanceStorageSupported'] = instanceStorageSupported;
    map['instanceType'] = instanceType;
    map['ipv6Supported'] = ipv6Supported;
    map['maximumIpv4AddressesPerInterface'] = maximumIpv4AddressesPerInterface;
    map['maximumIpv6AddressesPerInterface'] = maximumIpv6AddressesPerInterface;
    map['maximumNetworkCards'] = maximumNetworkCards;
    map['maximumNetworkInterfaces'] = maximumNetworkInterfaces;
    map['mediaAccelerators'] =
        Input.encodeList<GetInstanceTypeMediaAccelerator, Map<String, dynamic>>(
            mediaAccelerators, (value) => value.toMap());
    map['memorySize'] = memorySize;
    map['networkCards'] =
        Input.encodeList<GetInstanceTypeNetworkCard, Map<String, dynamic>>(
            networkCards, (value) => value.toMap());
    map['networkPerformance'] = networkPerformance;
    map['neuronDevices'] =
        Input.encodeList<GetInstanceTypeNeuronDevice, Map<String, dynamic>>(
            neuronDevices, (value) => value.toMap());
    map['nitroEnclavesSupport'] = nitroEnclavesSupport;
    map['nitroTpmSupport'] = nitroTpmSupport;
    map['nitroTpmSupportedVersions'] = nitroTpmSupportedVersions;
    map['phcSupport'] = phcSupport;
    map['region'] = region;
    map['supportedArchitectures'] = supportedArchitectures;
    map['supportedCpuFeatures'] = supportedCpuFeatures;
    map['supportedPlacementStrategies'] = supportedPlacementStrategies;
    map['supportedRootDeviceTypes'] = supportedRootDeviceTypes;
    map['supportedUsagesClasses'] = supportedUsagesClasses;
    map['supportedVirtualizationTypes'] = supportedVirtualizationTypes;
    map['sustainedClockSpeed'] = sustainedClockSpeed;
    map['totalFpgaMemory'] = totalFpgaMemory;
    map['totalGpuMemory'] = totalGpuMemory;
    map['totalInferenceMemory'] = totalInferenceMemory;
    map['totalInstanceStorage'] = totalInstanceStorage;
    map['totalMediaMemory'] = totalMediaMemory;
    map['totalNeuronDeviceMemory'] = totalNeuronDeviceMemory;
    map['validCores'] = validCores;
    map['validThreadsPerCores'] = validThreadsPerCores;
    return map;
  }

  factory GetInstanceTypeResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeResult(
      autoRecoverySupported: map['autoRecoverySupported'] as bool,
      bandwidthWeightings: (map['bandwidthWeightings'] as List).cast<String>(),
      bareMetal: map['bareMetal'] as bool,
      bootModes: (map['bootModes'] as List).cast<String>(),
      burstablePerformanceSupported:
          map['burstablePerformanceSupported'] as bool,
      currentGeneration: map['currentGeneration'] as bool,
      dedicatedHostsSupported: map['dedicatedHostsSupported'] as bool,
      defaultCores: map['defaultCores'] as int,
      defaultNetworkCardIndex: map['defaultNetworkCardIndex'] as int,
      defaultThreadsPerCore: map['defaultThreadsPerCore'] as int,
      defaultVcpus: map['defaultVcpus'] as int,
      ebsEncryptionSupport: map['ebsEncryptionSupport'] as String,
      ebsNvmeSupport: map['ebsNvmeSupport'] as String,
      ebsOptimizedSupport: map['ebsOptimizedSupport'] as String,
      ebsPerformanceBaselineBandwidth:
          map['ebsPerformanceBaselineBandwidth'] as int,
      ebsPerformanceBaselineIops: map['ebsPerformanceBaselineIops'] as int,
      ebsPerformanceBaselineThroughput:
          map['ebsPerformanceBaselineThroughput'] as double,
      ebsPerformanceMaximumBandwidth:
          map['ebsPerformanceMaximumBandwidth'] as int,
      ebsPerformanceMaximumIops: map['ebsPerformanceMaximumIops'] as int,
      ebsPerformanceMaximumThroughput:
          map['ebsPerformanceMaximumThroughput'] as double,
      efaMaximumInterfaces: map['efaMaximumInterfaces'] as int,
      efaSupported: map['efaSupported'] as bool,
      enaSrdSupported: map['enaSrdSupported'] as bool,
      enaSupport: map['enaSupport'] as String,
      encryptionInTransitSupported: map['encryptionInTransitSupported'] as bool,
      fpgas: Input.decodeList<GetInstanceTypeFpga>(
          map['fpgas'],
          (value) => GetInstanceTypeFpga.fromMap(
              (value as Map).cast<String, dynamic>())),
      freeTierEligible: map['freeTierEligible'] as bool,
      gpuses: Input.decodeList<GetInstanceTypeGpus>(
          map['gpuses'],
          (value) => GetInstanceTypeGpus.fromMap(
              (value as Map).cast<String, dynamic>())),
      hibernationSupported: map['hibernationSupported'] as bool,
      hypervisor: map['hypervisor'] as String,
      id: map['id'] as String,
      inferenceAccelerators:
          Input.decodeList<GetInstanceTypeInferenceAccelerator>(
              map['inferenceAccelerators'],
              (value) => GetInstanceTypeInferenceAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceDisks: Input.decodeList<GetInstanceTypeInstanceDisk>(
          map['instanceDisks'],
          (value) => GetInstanceTypeInstanceDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      instanceStorageSupported: map['instanceStorageSupported'] as bool,
      instanceType: map['instanceType'] as String,
      ipv6Supported: map['ipv6Supported'] as bool,
      maximumIpv4AddressesPerInterface:
          map['maximumIpv4AddressesPerInterface'] as int,
      maximumIpv6AddressesPerInterface:
          map['maximumIpv6AddressesPerInterface'] as int,
      maximumNetworkCards: map['maximumNetworkCards'] as int,
      maximumNetworkInterfaces: map['maximumNetworkInterfaces'] as int,
      mediaAccelerators: Input.decodeList<GetInstanceTypeMediaAccelerator>(
          map['mediaAccelerators'],
          (value) => GetInstanceTypeMediaAccelerator.fromMap(
              (value as Map).cast<String, dynamic>())),
      memorySize: map['memorySize'] as int,
      networkCards: Input.decodeList<GetInstanceTypeNetworkCard>(
          map['networkCards'],
          (value) => GetInstanceTypeNetworkCard.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkPerformance: map['networkPerformance'] as String,
      neuronDevices: Input.decodeList<GetInstanceTypeNeuronDevice>(
          map['neuronDevices'],
          (value) => GetInstanceTypeNeuronDevice.fromMap(
              (value as Map).cast<String, dynamic>())),
      nitroEnclavesSupport: map['nitroEnclavesSupport'] as String,
      nitroTpmSupport: map['nitroTpmSupport'] as String,
      nitroTpmSupportedVersions:
          (map['nitroTpmSupportedVersions'] as List).cast<String>(),
      phcSupport: map['phcSupport'] as String,
      region: map['region'] as String,
      supportedArchitectures:
          (map['supportedArchitectures'] as List).cast<String>(),
      supportedCpuFeatures:
          (map['supportedCpuFeatures'] as List).cast<String>(),
      supportedPlacementStrategies:
          (map['supportedPlacementStrategies'] as List).cast<String>(),
      supportedRootDeviceTypes:
          (map['supportedRootDeviceTypes'] as List).cast<String>(),
      supportedUsagesClasses:
          (map['supportedUsagesClasses'] as List).cast<String>(),
      supportedVirtualizationTypes:
          (map['supportedVirtualizationTypes'] as List).cast<String>(),
      sustainedClockSpeed: map['sustainedClockSpeed'] as double,
      totalFpgaMemory: map['totalFpgaMemory'] as int,
      totalGpuMemory: map['totalGpuMemory'] as int,
      totalInferenceMemory: map['totalInferenceMemory'] as int,
      totalInstanceStorage: map['totalInstanceStorage'] as int,
      totalMediaMemory: map['totalMediaMemory'] as int,
      totalNeuronDeviceMemory: map['totalNeuronDeviceMemory'] as int,
      validCores: (map['validCores'] as List).cast<int>(),
      validThreadsPerCores: (map['validThreadsPerCores'] as List).cast<int>(),
    );
  }
}
