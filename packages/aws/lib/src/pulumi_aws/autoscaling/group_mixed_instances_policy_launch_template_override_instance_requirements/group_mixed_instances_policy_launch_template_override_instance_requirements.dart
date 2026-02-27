// ignore_for_file: unused_element, unnecessary_cast

import '../group_mixed_instances_policy_launch_template_override_instance_requirements_accelerator_count/group_mixed_instances_policy_launch_template_override_instance_requirements_accelerator_count.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_accelerator_total_memory_mib/group_mixed_instances_policy_launch_template_override_instance_requirements_accelerator_total_memory_mib.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_baseline_ebs_bandwidth_mbps/group_mixed_instances_policy_launch_template_override_instance_requirements_baseline_ebs_bandwidth_mbps.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_memory_gib_per_vcpu/group_mixed_instances_policy_launch_template_override_instance_requirements_memory_gib_per_vcpu.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_memory_mib/group_mixed_instances_policy_launch_template_override_instance_requirements_memory_mib.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_network_bandwidth_gbps/group_mixed_instances_policy_launch_template_override_instance_requirements_network_bandwidth_gbps.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_network_interface_count/group_mixed_instances_policy_launch_template_override_instance_requirements_network_interface_count.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_total_local_storage_gb/group_mixed_instances_policy_launch_template_override_instance_requirements_total_local_storage_gb.dart';
import '../group_mixed_instances_policy_launch_template_override_instance_requirements_vcpu_count/group_mixed_instances_policy_launch_template_override_instance_requirements_vcpu_count.dart';

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements {
  /// Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount?
      acceleratorCount;

  /// List of accelerator manufacturer names. Default is any manufacturer.
  ///
  /// ```
  /// Valid names:
  /// * amazon-web-services
  /// * amd
  /// * nvidia
  /// * xilinx
  /// ```
  final List<String>? acceleratorManufacturers;

  /// List of accelerator names. Default is any acclerator.
  ///
  /// ```
  /// Valid names:
  /// * a100            - NVIDIA A100 GPUs
  /// * v100            - NVIDIA V100 GPUs
  /// * k80             - NVIDIA K80 GPUs
  /// * t4              - NVIDIA T4 GPUs
  /// * m60             - NVIDIA M60 GPUs
  /// * radeon-pro-v520 - AMD Radeon Pro V520 GPUs
  /// * vu9p            - Xilinx VU9P FPGAs
  /// ```
  final List<String>? acceleratorNames;

  /// Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib?
      acceleratorTotalMemoryMib;

  /// List of accelerator types. Default is any accelerator type.
  ///
  /// ```
  /// Valid types:
  /// * fpga
  /// * gpu
  /// * inference
  /// ```
  final List<String>? acceleratorTypes;

  /// List of instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards, represented by an asterisk (\*), to allow an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are allowing the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are allowing all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is all instance types.
  ///
  /// > **NOTE:** If you specify `allowed_instance_types`, you can't specify `excluded_instance_types`.
  final List<String>? allowedInstanceTypes;

  /// Indicate whether bare metal instace types should be `included`, `excluded`, or `required`. Default is `excluded`.
  final String? bareMetal;

  /// Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps?
      baselineEbsBandwidthMbps;

  /// Indicate whether burstable performance instance types should be `included`, `excluded`, or `required`. Default is `excluded`.
  final String? burstablePerformance;

  /// List of CPU manufacturer names. Default is any manufacturer.
  ///
  /// > **NOTE:** Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  ///
  /// ```
  /// Valid names:
  /// * amazon-web-services
  /// * amd
  /// * intel
  /// ```
  final List<String>? cpuManufacturers;

  /// List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*), to exclude an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  ///
  /// > **NOTE:** If you specify `excluded_instance_types`, you can't specify `allowed_instance_types`.
  final List<String>? excludedInstanceTypes;

  /// List of instance generation names. Default is any generation.
  ///
  /// ```
  /// Valid names:
  /// * current  - Recommended for best performance.
  /// * previous - For existing applications optimized for older instance types.
  /// ```
  final List<String>? instanceGenerations;

  /// Indicate whether instance types with local storage volumes are `included`, `excluded`, or `required`. Default is `included`.
  final String? localStorage;

  /// List of local storage type names. Default any storage type.
  ///
  /// ```
  /// Value names:
  /// * hdd - hard disk drive
  /// * ssd - solid state drive
  /// ```
  final List<String>? localStorageTypes;

  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with `spot_max_price_percentage_over_lowest_price`
  final int? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  /// Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu?
      memoryGibPerVcpu;

  /// Block describing the minimum and maximum amount of memory (MiB). Default is no maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib?
      memoryMib;

  /// Block describing the minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps?
      networkBandwidthGbps;

  /// Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount?
      networkInterfaceCount;

  /// Price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final int? onDemandMaxPricePercentageOverLowestPrice;

  /// Indicate whether instance types must support On-Demand Instance Hibernation, either `true` or `false`. Default is `false`.
  final bool? requireHibernateSupport;

  /// Price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with `max_spot_price_as_percentage_of_optimal_on_demand_price`
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final int? spotMaxPricePercentageOverLowestPrice;

  /// Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb?
      totalLocalStorageGb;

  /// Block describing the minimum and maximum number of vCPUs. Default is no maximum.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount?
      vcpuCount;

  GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements({
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
    this.memoryMib,
    this.networkBandwidthGbps,
    this.networkInterfaceCount,
    this.onDemandMaxPricePercentageOverLowestPrice,
    this.requireHibernateSupport,
    this.spotMaxPricePercentageOverLowestPrice,
    this.totalLocalStorageGb,
    this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue.toMap();
    }
    final acceleratorManufacturersValue = acceleratorManufacturers;
    if (acceleratorManufacturersValue != null) {
      map['acceleratorManufacturers'] = acceleratorManufacturersValue;
    }
    final acceleratorNamesValue = acceleratorNames;
    if (acceleratorNamesValue != null) {
      map['acceleratorNames'] = acceleratorNamesValue;
    }
    final acceleratorTotalMemoryMibValue = acceleratorTotalMemoryMib;
    if (acceleratorTotalMemoryMibValue != null) {
      map['acceleratorTotalMemoryMib'] = acceleratorTotalMemoryMibValue.toMap();
    }
    final acceleratorTypesValue = acceleratorTypes;
    if (acceleratorTypesValue != null) {
      map['acceleratorTypes'] = acceleratorTypesValue;
    }
    final allowedInstanceTypesValue = allowedInstanceTypes;
    if (allowedInstanceTypesValue != null) {
      map['allowedInstanceTypes'] = allowedInstanceTypesValue;
    }
    final bareMetalValue = bareMetal;
    if (bareMetalValue != null) {
      map['bareMetal'] = bareMetalValue;
    }
    final baselineEbsBandwidthMbpsValue = baselineEbsBandwidthMbps;
    if (baselineEbsBandwidthMbpsValue != null) {
      map['baselineEbsBandwidthMbps'] = baselineEbsBandwidthMbpsValue.toMap();
    }
    final burstablePerformanceValue = burstablePerformance;
    if (burstablePerformanceValue != null) {
      map['burstablePerformance'] = burstablePerformanceValue;
    }
    final cpuManufacturersValue = cpuManufacturers;
    if (cpuManufacturersValue != null) {
      map['cpuManufacturers'] = cpuManufacturersValue;
    }
    final excludedInstanceTypesValue = excludedInstanceTypes;
    if (excludedInstanceTypesValue != null) {
      map['excludedInstanceTypes'] = excludedInstanceTypesValue;
    }
    final instanceGenerationsValue = instanceGenerations;
    if (instanceGenerationsValue != null) {
      map['instanceGenerations'] = instanceGenerationsValue;
    }
    final localStorageValue = localStorage;
    if (localStorageValue != null) {
      map['localStorage'] = localStorageValue;
    }
    final localStorageTypesValue = localStorageTypes;
    if (localStorageTypesValue != null) {
      map['localStorageTypes'] = localStorageTypesValue;
    }
    final maxSpotPriceAsPercentageOfOptimalOnDemandPriceValue =
        maxSpotPriceAsPercentageOfOptimalOnDemandPrice;
    if (maxSpotPriceAsPercentageOfOptimalOnDemandPriceValue != null) {
      map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] =
          maxSpotPriceAsPercentageOfOptimalOnDemandPriceValue;
    }
    final memoryGibPerVcpuValue = memoryGibPerVcpu;
    if (memoryGibPerVcpuValue != null) {
      map['memoryGibPerVcpu'] = memoryGibPerVcpuValue.toMap();
    }
    final memoryMibValue = memoryMib;
    if (memoryMibValue != null) {
      map['memoryMib'] = memoryMibValue.toMap();
    }
    final networkBandwidthGbpsValue = networkBandwidthGbps;
    if (networkBandwidthGbpsValue != null) {
      map['networkBandwidthGbps'] = networkBandwidthGbpsValue.toMap();
    }
    final networkInterfaceCountValue = networkInterfaceCount;
    if (networkInterfaceCountValue != null) {
      map['networkInterfaceCount'] = networkInterfaceCountValue.toMap();
    }
    final onDemandMaxPricePercentageOverLowestPriceValue =
        onDemandMaxPricePercentageOverLowestPrice;
    if (onDemandMaxPricePercentageOverLowestPriceValue != null) {
      map['onDemandMaxPricePercentageOverLowestPrice'] =
          onDemandMaxPricePercentageOverLowestPriceValue;
    }
    final requireHibernateSupportValue = requireHibernateSupport;
    if (requireHibernateSupportValue != null) {
      map['requireHibernateSupport'] = requireHibernateSupportValue;
    }
    final spotMaxPricePercentageOverLowestPriceValue =
        spotMaxPricePercentageOverLowestPrice;
    if (spotMaxPricePercentageOverLowestPriceValue != null) {
      map['spotMaxPricePercentageOverLowestPrice'] =
          spotMaxPricePercentageOverLowestPriceValue;
    }
    final totalLocalStorageGbValue = totalLocalStorageGb;
    if (totalLocalStorageGbValue != null) {
      map['totalLocalStorageGb'] = totalLocalStorageGbValue.toMap();
    }
    final vcpuCountValue = vcpuCount;
    if (vcpuCountValue != null) {
      map['vcpuCount'] = vcpuCountValue.toMap();
    }
    return map;
  }

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount
              .fromMap(
                  (map['acceleratorCount'] as Map).cast<String, dynamic>()),
      acceleratorManufacturers: map['acceleratorManufacturers'] == null
          ? null
          : (map['acceleratorManufacturers'] as List).cast<String>(),
      acceleratorNames: map['acceleratorNames'] == null
          ? null
          : (map['acceleratorNames'] as List).cast<String>(),
      acceleratorTotalMemoryMib: map['acceleratorTotalMemoryMib'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib
              .fromMap((map['acceleratorTotalMemoryMib'] as Map)
                  .cast<String, dynamic>()),
      acceleratorTypes: map['acceleratorTypes'] == null
          ? null
          : (map['acceleratorTypes'] as List).cast<String>(),
      allowedInstanceTypes: map['allowedInstanceTypes'] == null
          ? null
          : (map['allowedInstanceTypes'] as List).cast<String>(),
      bareMetal: map['bareMetal'] == null ? null : map['bareMetal'] as String,
      baselineEbsBandwidthMbps: map['baselineEbsBandwidthMbps'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps
              .fromMap((map['baselineEbsBandwidthMbps'] as Map)
                  .cast<String, dynamic>()),
      burstablePerformance: map['burstablePerformance'] == null
          ? null
          : map['burstablePerformance'] as String,
      cpuManufacturers: map['cpuManufacturers'] == null
          ? null
          : (map['cpuManufacturers'] as List).cast<String>(),
      excludedInstanceTypes: map['excludedInstanceTypes'] == null
          ? null
          : (map['excludedInstanceTypes'] as List).cast<String>(),
      instanceGenerations: map['instanceGenerations'] == null
          ? null
          : (map['instanceGenerations'] as List).cast<String>(),
      localStorage:
          map['localStorage'] == null ? null : map['localStorage'] as String,
      localStorageTypes: map['localStorageTypes'] == null
          ? null
          : (map['localStorageTypes'] as List).cast<String>(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice:
          map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] == null
              ? null
              : map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'] as int,
      memoryGibPerVcpu: map['memoryGibPerVcpu'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu
              .fromMap(
                  (map['memoryGibPerVcpu'] as Map).cast<String, dynamic>()),
      memoryMib: map['memoryMib'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib
              .fromMap((map['memoryMib'] as Map).cast<String, dynamic>()),
      networkBandwidthGbps: map['networkBandwidthGbps'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps
              .fromMap(
                  (map['networkBandwidthGbps'] as Map).cast<String, dynamic>()),
      networkInterfaceCount: map['networkInterfaceCount'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount
              .fromMap((map['networkInterfaceCount'] as Map)
                  .cast<String, dynamic>()),
      onDemandMaxPricePercentageOverLowestPrice:
          map['onDemandMaxPricePercentageOverLowestPrice'] == null
              ? null
              : map['onDemandMaxPricePercentageOverLowestPrice'] as int,
      requireHibernateSupport: map['requireHibernateSupport'] == null
          ? null
          : map['requireHibernateSupport'] as bool,
      spotMaxPricePercentageOverLowestPrice:
          map['spotMaxPricePercentageOverLowestPrice'] == null
              ? null
              : map['spotMaxPricePercentageOverLowestPrice'] as int,
      totalLocalStorageGb: map['totalLocalStorageGb'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb
              .fromMap(
                  (map['totalLocalStorageGb'] as Map).cast<String, dynamic>()),
      vcpuCount: map['vcpuCount'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount
              .fromMap((map['vcpuCount'] as Map).cast<String, dynamic>()),
    );
  }
}
