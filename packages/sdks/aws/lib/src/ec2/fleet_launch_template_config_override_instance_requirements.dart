// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_launch_template_config_override_instance_requirements_accelerator_count.dart';
import 'fleet_launch_template_config_override_instance_requirements_accelerator_total_memory_mib.dart';
import 'fleet_launch_template_config_override_instance_requirements_baseline_ebs_bandwidth_mbps.dart';
import 'fleet_launch_template_config_override_instance_requirements_memory_gib_per_vcpu.dart';
import 'fleet_launch_template_config_override_instance_requirements_memory_mib.dart';
import 'fleet_launch_template_config_override_instance_requirements_network_bandwidth_gbps.dart';
import 'fleet_launch_template_config_override_instance_requirements_network_interface_count.dart';
import 'fleet_launch_template_config_override_instance_requirements_total_local_storage_gb.dart';
import 'fleet_launch_template_config_override_instance_requirements_vcpu_count.dart';

class FleetLaunchTemplateConfigOverrideInstanceRequirements {
  /// Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum limits.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount? acceleratorCount;
  /// List of accelerator manufacturer names. Default is any manufacturer.
  final List<String>? acceleratorManufacturers;
  /// List of accelerator names. Default is any acclerator.
  final List<String>? acceleratorNames;
  /// Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;
  /// The accelerator types that must be on the instance type. Default is any accelerator type.
  final List<String>? acceleratorTypes;
  /// The instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards,represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types. Default is any instance type.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  final List<String>? allowedInstanceTypes;
  /// Indicate whether bare metal instace types should be `included`, `excluded`, or `required`. Default is `excluded`.
  final String? bareMetal;
  /// Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;
  /// Indicates whether burstable performance T instance types are `included`, `excluded`, or `required`. Default is `excluded`.
  final String? burstablePerformance;
  /// The CPU manufacturers to include. Default is any manufacturer.
  /// > **NOTE:** Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  final List<String>? cpuManufacturers;
  /// The instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  final List<String>? excludedInstanceTypes;
  /// Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Valid values are `current` and `previous`. Default is `current` and `previous` generation instance types.
  final List<String>? instanceGenerations;
  /// Indicate whether instance types with local storage volumes are `included`, `excluded`, or `required`. Default is `included`.
  final String? localStorage;
  /// List of local storage type names. Valid values are `hdd` and `ssd`. Default any storage type.
  final List<String>? localStorageTypes;
  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with `spot_max_price_percentage_over_lowest_price`
  final int? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
  /// Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu? memoryGibPerVcpu;
  /// The minimum and maximum amount of memory per vCPU, in GiB. Default is no minimum or maximum limits.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib memoryMib;
  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is No minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps? networkBandwidthGbps;
  /// Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount? networkInterfaceCount;
  /// The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  ///
  /// If you set `target_capacity_unit_type` to `vcpu` or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  final int? onDemandMaxPricePercentageOverLowestPrice;
  /// Indicate whether instance types must support On-Demand Instance Hibernation, either `true` or `false`. Default is `false`.
  final bool? requireHibernateSupport;
  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with `max_spot_price_as_percentage_of_optimal_on_demand_price`
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final int? spotMaxPricePercentageOverLowestPrice;
  /// Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb? totalLocalStorageGb;
  /// Block describing the minimum and maximum number of vCPUs. Default is no maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount vcpuCount;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirements].
  /// [acceleratorCount] Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum limits.
  /// [acceleratorManufacturers] List of accelerator manufacturer names. Default is any manufacturer.
  /// [acceleratorNames] List of accelerator names. Default is any acclerator.
  /// [acceleratorTotalMemoryMib] Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  /// [acceleratorTypes] The accelerator types that must be on the instance type. Default is any accelerator type.
  /// [allowedInstanceTypes] The instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards,represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types. Default is any instance type.
  /// [bareMetal] Indicate whether bare metal instace types should be `included`, `excluded`, or `required`. Default is `excluded`.
  /// [baselineEbsBandwidthMbps] Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  /// [burstablePerformance] Indicates whether burstable performance T instance types are `included`, `excluded`, or `required`. Default is `excluded`.
  /// [cpuManufacturers] The CPU manufacturers to include. Default is any manufacturer.
  /// [excludedInstanceTypes] The instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  /// [instanceGenerations] Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Valid values are `current` and `previous`. Default is `current` and `previous` generation instance types.
  /// [localStorage] Indicate whether instance types with local storage volumes are `included`, `excluded`, or `required`. Default is `included`.
  /// [localStorageTypes] List of local storage type names. Valid values are `hdd` and `ssd`. Default any storage type.
  /// [maxSpotPriceAsPercentageOfOptimalOnDemandPrice] The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with `spot_max_price_percentage_over_lowest_price`
  /// [memoryGibPerVcpu] Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  /// [memoryMib] The minimum and maximum amount of memory per vCPU, in GiB. Default is no minimum or maximum limits.
  /// [networkBandwidthGbps] The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is No minimum or maximum.
  /// [networkInterfaceCount] Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  /// [onDemandMaxPricePercentageOverLowestPrice] The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  /// [requireHibernateSupport] Indicate whether instance types must support On-Demand Instance Hibernation, either `true` or `false`. Default is `false`.
  /// [spotMaxPricePercentageOverLowestPrice] The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with `max_spot_price_as_percentage_of_optimal_on_demand_price`
  /// [totalLocalStorageGb] Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  /// [vcpuCount] Block describing the minimum and maximum number of vCPUs. Default is no maximum.
  FleetLaunchTemplateConfigOverrideInstanceRequirements({
    this.acceleratorCount,
    this.acceleratorManufacturers,
    this.acceleratorNames,
    this.acceleratorTotalMemoryMib,
    this.acceleratorTypes,
    this.allowedInstanceTypes,
    this.bareMetal,
    this.baselineEbsBandwidthMbps,
    this.burstablePerformance,
    this.cpuManufacturers,
    this.excludedInstanceTypes,
    this.instanceGenerations,
    this.localStorage,
    this.localStorageTypes,
    this.maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
    this.memoryGibPerVcpu,
    required this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
    this.spotMaxPricePercentageOverLowestPrice,
    this.totalLocalStorageGb,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount == null ? null : acceleratorCount!.toMap(),
      'acceleratorManufacturers': ?acceleratorManufacturers,
      'acceleratorNames': ?acceleratorNames,
      'acceleratorTotalMemoryMib': ?acceleratorTotalMemoryMib == null ? null : acceleratorTotalMemoryMib!.toMap(),
      'acceleratorTypes': ?acceleratorTypes,
      'allowedInstanceTypes': ?allowedInstanceTypes,
      'bareMetal': ?bareMetal,
      'baselineEbsBandwidthMbps': ?baselineEbsBandwidthMbps == null ? null : baselineEbsBandwidthMbps!.toMap(),
      'burstablePerformance': ?burstablePerformance,
      'cpuManufacturers': ?cpuManufacturers,
      'excludedInstanceTypes': ?excludedInstanceTypes,
      'instanceGenerations': ?instanceGenerations,
      'localStorage': ?localStorage,
      'localStorageTypes': ?localStorageTypes,
      'maxSpotPriceAsPercentageOfOptimalOnDemandPrice': ?maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
      'memoryGibPerVcpu': ?memoryGibPerVcpu == null ? null : memoryGibPerVcpu!.toMap(),
      'memoryMib': memoryMib.toMap(),
      'networkBandwidthGbps': ?networkBandwidthGbps == null ? null : networkBandwidthGbps!.toMap(),
      'networkInterfaceCount': ?networkInterfaceCount == null ? null : networkInterfaceCount!.toMap(),
      'onDemandMaxPricePercentageOverLowestPrice': ?onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': ?requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice': ?spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGb': ?totalLocalStorageGb == null ? null : totalLocalStorageGb!.toMap(),
      'vcpuCount': vcpuCount.toMap(),
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirements.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirements(
      acceleratorCount: map['acceleratorCount'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount.fromMap((map['acceleratorCount'] as Map).cast<String, dynamic>()),
      acceleratorManufacturers: map['acceleratorManufacturers'] == null ? null : (map['acceleratorManufacturers'] as List).cast<String>(),
      acceleratorNames: map['acceleratorNames'] == null ? null : (map['acceleratorNames'] as List).cast<String>(),
      acceleratorTotalMemoryMib: map['acceleratorTotalMemoryMib'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib.fromMap((map['acceleratorTotalMemoryMib'] as Map).cast<String, dynamic>()),
      acceleratorTypes: map['acceleratorTypes'] == null ? null : (map['acceleratorTypes'] as List).cast<String>(),
      allowedInstanceTypes: map['allowedInstanceTypes'] == null ? null : (map['allowedInstanceTypes'] as List).cast<String>(),
      bareMetal: map['bareMetal'] == null ? null : map['bareMetal'] as String,
      baselineEbsBandwidthMbps: map['baselineEbsBandwidthMbps'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps.fromMap((map['baselineEbsBandwidthMbps'] as Map).cast<String, dynamic>()),
      burstablePerformance: map['burstablePerformance'] == null ? null : map['burstablePerformance'] as String,
      cpuManufacturers: map['cpuManufacturers'] == null ? null : (map['cpuManufacturers'] as List).cast<String>(),
      excludedInstanceTypes: map['excludedInstanceTypes'] == null ? null : (map['excludedInstanceTypes'] as List).cast<String>(),
      instanceGenerations: map['instanceGenerations'] == null ? null : (map['instanceGenerations'] as List).cast<String>(),
      localStorage: map['localStorage'] == null ? null : map['localStorage'] as String,
      localStorageTypes: map['localStorageTypes'] == null ? null : (map['localStorageTypes'] as List).cast<String>(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice: map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] == null ? null : map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int,
      memoryGibPerVcpu: map['memoryGibPerVcpu'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu.fromMap((map['memoryGibPerVcpu'] as Map).cast<String, dynamic>()),
      memoryMib: FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib.fromMap((map['memoryMib'] as Map).cast<String, dynamic>()),
      networkBandwidthGbps: map['networkBandwidthGbps'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap((map['networkBandwidthGbps'] as Map).cast<String, dynamic>()),
      networkInterfaceCount: map['networkInterfaceCount'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount.fromMap((map['networkInterfaceCount'] as Map).cast<String, dynamic>()),
      onDemandMaxPricePercentageOverLowestPrice: map['onDemandMaxPricePercentageOverLowestPrice'] == null ? null : map['onDemandMaxPricePercentageOverLowestPrice'] as int,
      requireHibernateSupport: map['requireHibernateSupport'] == null ? null : map['requireHibernateSupport'] as bool,
      spotMaxPricePercentageOverLowestPrice: map['spotMaxPricePercentageOverLowestPrice'] == null ? null : map['spotMaxPricePercentageOverLowestPrice'] as int,
      totalLocalStorageGb: map['totalLocalStorageGb'] == null ? null : FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb.fromMap((map['totalLocalStorageGb'] as Map).cast<String, dynamic>()),
      vcpuCount: FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount.fromMap((map['vcpuCount'] as Map).cast<String, dynamic>()),
    );
  }
}

