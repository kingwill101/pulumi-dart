// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount
  >?
  acceleratorCount;

  /// List of accelerator manufacturer names. Default is any manufacturer.
  final pulumi.Input<List<String>>? acceleratorManufacturers;

  /// List of accelerator names. Default is any acclerator.
  final pulumi.Input<List<String>>? acceleratorNames;

  /// Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib
  >?
  acceleratorTotalMemoryMib;

  /// The accelerator types that must be on the instance type. Default is any accelerator type.
  final pulumi.Input<List<String>>? acceleratorTypes;

  /// The instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards,represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types. Default is any instance type.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  final pulumi.Input<List<String>>? allowedInstanceTypes;

  /// Indicate whether bare metal instace types should be `included`, `excluded`, or `required`. Default is `excluded`.
  final pulumi.Input<String>? bareMetal;

  /// Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps
  >?
  baselineEbsBandwidthMbps;

  /// Indicates whether burstable performance T instance types are `included`, `excluded`, or `required`. Default is `excluded`.
  final pulumi.Input<String>? burstablePerformance;

  /// The CPU manufacturers to include. Default is any manufacturer.
  /// &gt; **NOTE:** Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  final pulumi.Input<List<String>>? cpuManufacturers;

  /// The instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  final pulumi.Input<List<String>>? excludedInstanceTypes;

  /// Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Valid values are `current` and `previous`. Default is `current` and `previous` generation instance types.
  final pulumi.Input<List<String>>? instanceGenerations;

  /// Indicate whether instance types with local storage volumes are `included`, `excluded`, or `required`. Default is `included`.
  final pulumi.Input<String>? localStorage;

  /// List of local storage type names. Valid values are `hdd` and `ssd`. Default any storage type.
  final pulumi.Input<List<String>>? localStorageTypes;

  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with `spot_max_price_percentage_over_lowest_price`
  final pulumi.Input<int>? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  /// Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu
  >?
  memoryGibPerVcpu;

  /// The minimum and maximum amount of memory per vCPU, in GiB. Default is no minimum or maximum limits.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib
  >
  memoryMib;

  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is No minimum or maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps
  >?
  networkBandwidthGbps;

  /// Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount
  >?
  networkInterfaceCount;

  /// The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  ///
  /// If you set `target_capacity_unit_type` to `vcpu` or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  final pulumi.Input<int>? onDemandMaxPricePercentageOverLowestPrice;

  /// Indicate whether instance types must support On-Demand Instance Hibernation, either `true` or `false`. Default is `false`.
  final pulumi.Input<bool>? requireHibernateSupport;

  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with `max_spot_price_as_percentage_of_optimal_on_demand_price`
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final pulumi.Input<int>? spotMaxPricePercentageOverLowestPrice;

  /// Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb
  >?
  totalLocalStorageGb;

  /// Block describing the minimum and maximum number of vCPUs. Default is no maximum.
  final pulumi.Input<
    FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount
  >
  vcpuCount;

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
      'acceleratorCount':
          ?pulumi.Input.mapOptionalInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount,
            Map<String, dynamic>
          >(acceleratorCount, (value) => value.toMap()),
      'acceleratorManufacturers': ?acceleratorManufacturers,
      'acceleratorNames': ?acceleratorNames,
      'acceleratorTotalMemoryMib':
          ?pulumi.Input.mapOptionalInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib,
            Map<String, dynamic>
          >(acceleratorTotalMemoryMib, (value) => value.toMap()),
      'acceleratorTypes': ?acceleratorTypes,
      'allowedInstanceTypes': ?allowedInstanceTypes,
      'bareMetal': ?bareMetal,
      'baselineEbsBandwidthMbps':
          ?pulumi.Input.mapOptionalInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps,
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
            FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu,
            Map<String, dynamic>
          >(memoryGibPerVcpu, (value) => value.toMap()),
      'memoryMib':
          pulumi.Input.mapInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib,
            Map<String, dynamic>
          >(memoryMib, (value) => value.toMap()),
      'networkBandwidthGbps':
          ?pulumi.Input.mapOptionalInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps,
            Map<String, dynamic>
          >(networkBandwidthGbps, (value) => value.toMap()),
      'networkInterfaceCount':
          ?pulumi.Input.mapOptionalInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount,
            Map<String, dynamic>
          >(networkInterfaceCount, (value) => value.toMap()),
      'onDemandMaxPricePercentageOverLowestPrice':
          ?onDemandMaxPricePercentageOverLowestPrice,
      'requireHibernateSupport': ?requireHibernateSupport,
      'spotMaxPricePercentageOverLowestPrice':
          ?spotMaxPricePercentageOverLowestPrice,
      'totalLocalStorageGb':
          ?pulumi.Input.mapOptionalInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb,
            Map<String, dynamic>
          >(totalLocalStorageGb, (value) => value.toMap()),
      'vcpuCount':
          pulumi.Input.mapInputValue<
            FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount,
            Map<String, dynamic>
          >(vcpuCount, (value) => value.toMap()),
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirements.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirements(
      acceleratorCount: (() {
        final guardedValue = map['acceleratorCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount.fromMap(
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
          FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib.fromMap(
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
          FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(
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
          FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      memoryMib: pulumi.Input.fromValue(
        FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib.fromMap(
          (map['memoryMib']! as Map).cast<String, dynamic>(),
        ),
      ),
      networkBandwidthGbps: (() {
        final guardedValue = map['networkBandwidthGbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkInterfaceCount: (() {
        final guardedValue = map['networkInterfaceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount.fromMap(
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
          FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vcpuCount: pulumi.Input.fromValue(
        FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount.fromMap(
          (map['vcpuCount']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
