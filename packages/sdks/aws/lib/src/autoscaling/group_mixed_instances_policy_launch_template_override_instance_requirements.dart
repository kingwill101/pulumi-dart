// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_accelerator_count.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_accelerator_total_memory_mib.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_baseline_ebs_bandwidth_mbps.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_memory_gib_per_vcpu.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_memory_mib.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_network_bandwidth_gbps.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_network_interface_count.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_total_local_storage_gb.dart';
import 'group_mixed_instances_policy_launch_template_override_instance_requirements_vcpu_count.dart';

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements {
  /// Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount
  >?
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
  final pulumi.Input<List<String>>? acceleratorManufacturers;

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
  final pulumi.Input<List<String>>? acceleratorNames;

  /// Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib
  >?
  acceleratorTotalMemoryMib;

  /// List of accelerator types. Default is any accelerator type.
  ///
  /// ```
  /// Valid types:
  /// * fpga
  /// * gpu
  /// * inference
  /// ```
  final pulumi.Input<List<String>>? acceleratorTypes;

  /// List of instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards, represented by an asterisk (\*), to allow an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are allowing the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are allowing all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is all instance types.
  ///
  /// &gt; **NOTE:** If you specify `allowed_instance_types`, you can't specify `excluded_instance_types`.
  final pulumi.Input<List<String>>? allowedInstanceTypes;

  /// Indicate whether bare metal instace types should be `included`, `excluded`, or `required`. Default is `excluded`.
  final pulumi.Input<String>? bareMetal;

  /// Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps
  >?
  baselineEbsBandwidthMbps;

  /// Indicate whether burstable performance instance types should be `included`, `excluded`, or `required`. Default is `excluded`.
  final pulumi.Input<String>? burstablePerformance;

  /// List of CPU manufacturer names. Default is any manufacturer.
  ///
  /// &gt; **NOTE:** Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  ///
  /// ```
  /// Valid names:
  /// * amazon-web-services
  /// * amd
  /// * intel
  /// ```
  final pulumi.Input<List<String>>? cpuManufacturers;

  /// List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*), to exclude an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  ///
  /// &gt; **NOTE:** If you specify `excluded_instance_types`, you can't specify `allowed_instance_types`.
  final pulumi.Input<List<String>>? excludedInstanceTypes;

  /// List of instance generation names. Default is any generation.
  ///
  /// ```
  /// Valid names:
  /// * current  - Recommended for best performance.
  /// * previous - For existing applications optimized for older instance types.
  /// ```
  final pulumi.Input<List<String>>? instanceGenerations;

  /// Indicate whether instance types with local storage volumes are `included`, `excluded`, or `required`. Default is `included`.
  final pulumi.Input<String>? localStorage;

  /// List of local storage type names. Default any storage type.
  ///
  /// ```
  /// Value names:
  /// * hdd - hard disk drive
  /// * ssd - solid state drive
  /// ```
  final pulumi.Input<List<String>>? localStorageTypes;

  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with `spot_max_price_percentage_over_lowest_price`
  final pulumi.Input<int>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  /// Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu
  >?
  memoryGibPerVcpu;

  /// Block describing the minimum and maximum amount of memory (MiB). Default is no maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib
  >?
  memoryMib;

  /// Block describing the minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps
  >?
  networkBandwidthGbps;

  /// Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount
  >?
  networkInterfaceCount;

  /// Price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final pulumi.Input<int>? onDemandMaxPricePercentageOverLowestPrice;

  /// Indicate whether instance types must support On-Demand Instance Hibernation, either `true` or `false`. Default is `false`.
  final pulumi.Input<bool>? requireHibernateSupport;

  /// Price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with `max_spot_price_as_percentage_of_optimal_on_demand_price`
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final pulumi.Input<int>? spotMaxPricePercentageOverLowestPrice;

  /// Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb
  >?
  totalLocalStorageGb;

  /// Block describing the minimum and maximum number of vCPUs. Default is no maximum.
  final pulumi.Input<
    GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount
  >?
  vcpuCount;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements].
  /// [acceleratorCount] Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum.
  /// [acceleratorManufacturers] List of accelerator manufacturer names. Default is any manufacturer.
  /// [acceleratorNames] List of accelerator names. Default is any acclerator.
  /// [acceleratorTotalMemoryMib] Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  /// [acceleratorTypes] List of accelerator types. Default is any accelerator type.
  /// [allowedInstanceTypes] List of instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards, represented by an asterisk (\*), to allow an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are allowing the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are allowing all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is all instance types.
  /// [bareMetal] Indicate whether bare metal instace types should be `included`, `excluded`, or `required`. Default is `excluded`.
  /// [baselineEbsBandwidthMbps] Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  /// [burstablePerformance] Indicate whether burstable performance instance types should be `included`, `excluded`, or `required`. Default is `excluded`.
  /// [cpuManufacturers] List of CPU manufacturer names. Default is any manufacturer.
  /// [excludedInstanceTypes] List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*), to exclude an instance type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  /// [instanceGenerations] List of instance generation names. Default is any generation.
  /// [localStorage] Indicate whether instance types with local storage volumes are `included`, `excluded`, or `required`. Default is `included`.
  /// [localStorageTypes] List of local storage type names. Default any storage type.
  /// [maxSpotPriceAsPercentageOfOptimalOnDemandPrice] The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with `spot_max_price_percentage_over_lowest_price`
  /// [memoryGibPerVcpu] Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  /// [memoryMib] Block describing the minimum and maximum amount of memory (MiB). Default is no maximum.
  /// [networkBandwidthGbps] Block describing the minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is no minimum or maximum.
  /// [networkInterfaceCount] Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  /// [onDemandMaxPricePercentageOverLowestPrice] Price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  /// [requireHibernateSupport] Indicate whether instance types must support On-Demand Instance Hibernation, either `true` or `false`. Default is `false`.
  /// [spotMaxPricePercentageOverLowestPrice] Price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with `max_spot_price_as_percentage_of_optimal_on_demand_price`
  /// [totalLocalStorageGb] Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  /// [vcpuCount] Block describing the minimum and maximum number of vCPUs. Default is no maximum.
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
    return <String, dynamic>{
      'acceleratorCount':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount,
            Map<String, dynamic>
          >(acceleratorCount, (value) => value.toMap()),
      'acceleratorManufacturers': ?acceleratorManufacturers,
      'acceleratorNames': ?acceleratorNames,
      'acceleratorTotalMemoryMib':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib,
            Map<String, dynamic>
          >(acceleratorTotalMemoryMib, (value) => value.toMap()),
      'acceleratorTypes': ?acceleratorTypes,
      'allowedInstanceTypes': ?allowedInstanceTypes,
      'bareMetal': ?bareMetal,
      'baselineEbsBandwidthMbps':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps,
            Map<String, dynamic>
          >(baselineEbsBandwidthMbps, (value) => value.toMap()),
      'burstablePerformance': ?burstablePerformance,
      'cpuManufacturers': ?cpuManufacturers,
      'excludedInstanceTypes': ?excludedInstanceTypes,
      'instanceGenerations': ?instanceGenerations,
      'localStorage': ?localStorage,
      'localStorageTypes': ?localStorageTypes,
      'maxSpotPriceAsPercentageOfOptimalOnDemandPrice':
          ?maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
      'memoryGibPerVcpu':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu,
            Map<String, dynamic>
          >(memoryGibPerVcpu, (value) => value.toMap()),
      'memoryMib':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib,
            Map<String, dynamic>
          >(memoryMib, (value) => value.toMap()),
      'networkBandwidthGbps':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps,
            Map<String, dynamic>
          >(networkBandwidthGbps, (value) => value.toMap()),
      'networkInterfaceCount':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount,
            Map<String, dynamic>
          >(networkInterfaceCount, (value) => value.toMap()),
      'onDemandMaxPricePercentageOverLowestPrice':
          ?onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': ?requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice':
          ?spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGb':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb,
            Map<String, dynamic>
          >(totalLocalStorageGb, (value) => value.toMap()),
      'vcpuCount':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount,
            Map<String, dynamic>
          >(vcpuCount, (value) => value.toMap()),
    };
  }

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements.fromMap(
    Map<String, dynamic> map,
  ) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements(
      acceleratorCount: (() {
        final guardedValue = map['acceleratorCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      acceleratorManufacturers: (() {
        final guardedValue = map['acceleratorManufacturers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      acceleratorNames: (() {
        final guardedValue = map['acceleratorNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      acceleratorTotalMemoryMib: (() {
        final guardedValue = map['acceleratorTotalMemoryMib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorTotalMemoryMib.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      acceleratorTypes: (() {
        final guardedValue = map['acceleratorTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowedInstanceTypes: (() {
        final guardedValue = map['allowedInstanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      bareMetal: (() {
        final guardedValue = map['bareMetal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baselineEbsBandwidthMbps: (() {
        final guardedValue = map['baselineEbsBandwidthMbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      burstablePerformance: (() {
        final guardedValue = map['burstablePerformance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuManufacturers: (() {
        final guardedValue = map['cpuManufacturers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      excludedInstanceTypes: (() {
        final guardedValue = map['excludedInstanceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceGenerations: (() {
        final guardedValue = map['instanceGenerations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      localStorage: (() {
        final guardedValue = map['localStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localStorageTypes: (() {
        final guardedValue = map['localStorageTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxSpotPriceAsPercentageOfOptimalOnDemandPrice: (() {
        final guardedValue =
            map['maxSpotPriceAsPercentageOfOptimalOnDemandPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memoryGibPerVcpu: (() {
        final guardedValue = map['memoryGibPerVcpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      memoryMib: (() {
        final guardedValue = map['memoryMib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkBandwidthGbps: (() {
        final guardedValue = map['networkBandwidthGbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkInterfaceCount: (() {
        final guardedValue = map['networkInterfaceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsNetworkInterfaceCount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      onDemandMaxPricePercentageOverLowestPrice: (() {
        final guardedValue = map['onDemandMaxPricePercentageOverLowestPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      requireHibernateSupport: (() {
        final guardedValue = map['requireHibernateSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      spotMaxPricePercentageOverLowestPrice: (() {
        final guardedValue = map['spotMaxPricePercentageOverLowestPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      totalLocalStorageGb: (() {
        final guardedValue = map['totalLocalStorageGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vcpuCount: (() {
        final guardedValue = map['vcpuCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
