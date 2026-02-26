// ignore_for_file: unused_element, unnecessary_cast

import '../fleet_launch_template_config_override_instance_requirements_accelerator_count/fleet_launch_template_config_override_instance_requirements_accelerator_count.dart';
import '../fleet_launch_template_config_override_instance_requirements_accelerator_total_memory_mib/fleet_launch_template_config_override_instance_requirements_accelerator_total_memory_mib.dart';
import '../fleet_launch_template_config_override_instance_requirements_baseline_ebs_bandwidth_mbps/fleet_launch_template_config_override_instance_requirements_baseline_ebs_bandwidth_mbps.dart';
import '../fleet_launch_template_config_override_instance_requirements_memory_gib_per_vcpu/fleet_launch_template_config_override_instance_requirements_memory_gib_per_vcpu.dart';
import '../fleet_launch_template_config_override_instance_requirements_memory_mib/fleet_launch_template_config_override_instance_requirements_memory_mib.dart';
import '../fleet_launch_template_config_override_instance_requirements_network_bandwidth_gbps/fleet_launch_template_config_override_instance_requirements_network_bandwidth_gbps.dart';
import '../fleet_launch_template_config_override_instance_requirements_network_interface_count/fleet_launch_template_config_override_instance_requirements_network_interface_count.dart';
import '../fleet_launch_template_config_override_instance_requirements_total_local_storage_gb/fleet_launch_template_config_override_instance_requirements_total_local_storage_gb.dart';
import '../fleet_launch_template_config_override_instance_requirements_vcpu_count/fleet_launch_template_config_override_instance_requirements_vcpu_count.dart';

class FleetLaunchTemplateConfigOverrideInstanceRequirements {
  /// Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum limits.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount?
      acceleratorCount;

  /// List of accelerator manufacturer names. Default is any manufacturer.
  final List<String>? acceleratorManufacturers;

  /// List of accelerator names. Default is any acclerator.
  final List<String>? acceleratorNames;

  /// Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib?
      acceleratorTotalMemoryMib;

  /// The accelerator types that must be on the instance type. Default is any accelerator type.
  final List<String>? acceleratorTypes;

  /// The instance types to apply your specified attributes against. All other instance types are ignored, even if they match your specified attributes. You can use strings with one or more wild cards,represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types. Default is any instance type.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  final List<String>? allowedInstanceTypes;

  /// Indicate whether bare metal instace types should be <span pulumi-lang-nodejs="`included`" pulumi-lang-dotnet="`Included`" pulumi-lang-go="`included`" pulumi-lang-python="`included`" pulumi-lang-yaml="`included`" pulumi-lang-java="`included`">`included`</span>, <span pulumi-lang-nodejs="`excluded`" pulumi-lang-dotnet="`Excluded`" pulumi-lang-go="`excluded`" pulumi-lang-python="`excluded`" pulumi-lang-yaml="`excluded`" pulumi-lang-java="`excluded`">`excluded`</span>, or <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>. Default is <span pulumi-lang-nodejs="`excluded`" pulumi-lang-dotnet="`Excluded`" pulumi-lang-go="`excluded`" pulumi-lang-python="`excluded`" pulumi-lang-yaml="`excluded`" pulumi-lang-java="`excluded`">`excluded`</span>.
  final String? bareMetal;

  /// Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps?
      baselineEbsBandwidthMbps;

  /// Indicates whether burstable performance T instance types are <span pulumi-lang-nodejs="`included`" pulumi-lang-dotnet="`Included`" pulumi-lang-go="`included`" pulumi-lang-python="`included`" pulumi-lang-yaml="`included`" pulumi-lang-java="`included`">`included`</span>, <span pulumi-lang-nodejs="`excluded`" pulumi-lang-dotnet="`Excluded`" pulumi-lang-go="`excluded`" pulumi-lang-python="`excluded`" pulumi-lang-yaml="`excluded`" pulumi-lang-java="`excluded`">`excluded`</span>, or <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>. Default is <span pulumi-lang-nodejs="`excluded`" pulumi-lang-dotnet="`Excluded`" pulumi-lang-go="`excluded`" pulumi-lang-python="`excluded`" pulumi-lang-yaml="`excluded`" pulumi-lang-java="`excluded`">`excluded`</span>.
  final String? burstablePerformance;

  /// The CPU manufacturers to include. Default is any manufacturer.
  /// > **NOTE:** Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  final List<String>? cpuManufacturers;

  /// The instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (\*). The following are examples: `c5*`, `m5a.*`, `r*`, `*3*`. For example, if you specify `c5*`, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types.
  ///
  /// If you specify `AllowedInstanceTypes`, you can't specify `ExcludedInstanceTypes`.
  final List<String>? excludedInstanceTypes;

  /// Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Valid values are <span pulumi-lang-nodejs="`current`" pulumi-lang-dotnet="`Current`" pulumi-lang-go="`current`" pulumi-lang-python="`current`" pulumi-lang-yaml="`current`" pulumi-lang-java="`current`">`current`</span> and <span pulumi-lang-nodejs="`previous`" pulumi-lang-dotnet="`Previous`" pulumi-lang-go="`previous`" pulumi-lang-python="`previous`" pulumi-lang-yaml="`previous`" pulumi-lang-java="`previous`">`previous`</span>. Default is <span pulumi-lang-nodejs="`current`" pulumi-lang-dotnet="`Current`" pulumi-lang-go="`current`" pulumi-lang-python="`current`" pulumi-lang-yaml="`current`" pulumi-lang-java="`current`">`current`</span> and <span pulumi-lang-nodejs="`previous`" pulumi-lang-dotnet="`Previous`" pulumi-lang-go="`previous`" pulumi-lang-python="`previous`" pulumi-lang-yaml="`previous`" pulumi-lang-java="`previous`">`previous`</span> generation instance types.
  final List<String>? instanceGenerations;

  /// Indicate whether instance types with local storage volumes are <span pulumi-lang-nodejs="`included`" pulumi-lang-dotnet="`Included`" pulumi-lang-go="`included`" pulumi-lang-python="`included`" pulumi-lang-yaml="`included`" pulumi-lang-java="`included`">`included`</span>, <span pulumi-lang-nodejs="`excluded`" pulumi-lang-dotnet="`Excluded`" pulumi-lang-go="`excluded`" pulumi-lang-python="`excluded`" pulumi-lang-yaml="`excluded`" pulumi-lang-java="`excluded`">`excluded`</span>, or <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>. Default is <span pulumi-lang-nodejs="`included`" pulumi-lang-dotnet="`Included`" pulumi-lang-go="`included`" pulumi-lang-python="`included`" pulumi-lang-yaml="`included`" pulumi-lang-java="`included`">`included`</span>.
  final String? localStorage;

  /// List of local storage type names. Valid values are <span pulumi-lang-nodejs="`hdd`" pulumi-lang-dotnet="`Hdd`" pulumi-lang-go="`hdd`" pulumi-lang-python="`hdd`" pulumi-lang-yaml="`hdd`" pulumi-lang-java="`hdd`">`hdd`</span> and <span pulumi-lang-nodejs="`ssd`" pulumi-lang-dotnet="`Ssd`" pulumi-lang-go="`ssd`" pulumi-lang-python="`ssd`" pulumi-lang-yaml="`ssd`" pulumi-lang-java="`ssd`">`ssd`</span>. Default any storage type.
  final List<String>? localStorageTypes;

  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Conflicts with <span pulumi-lang-nodejs="`spotMaxPricePercentageOverLowestPrice`" pulumi-lang-dotnet="`SpotMaxPricePercentageOverLowestPrice`" pulumi-lang-go="`spotMaxPricePercentageOverLowestPrice`" pulumi-lang-python="`spot_max_price_percentage_over_lowest_price`" pulumi-lang-yaml="`spotMaxPricePercentageOverLowestPrice`" pulumi-lang-java="`spotMaxPricePercentageOverLowestPrice`">`spot_max_price_percentage_over_lowest_price`</span>
  final int? maxSpotPriceAsPercentageOfOptimalOnDemandPrice;

  /// Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu?
      memoryGibPerVcpu;

  /// The minimum and maximum amount of memory per vCPU, in GiB. Default is no minimum or maximum limits.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib
      memoryMib;

  /// The minimum and maximum amount of network bandwidth, in gigabits per second (Gbps). Default is No minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps?
      networkBandwidthGbps;

  /// Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount?
      networkInterfaceCount;

  /// The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.
  ///
  /// If you set <span pulumi-lang-nodejs="`targetCapacityUnitType`" pulumi-lang-dotnet="`TargetCapacityUnitType`" pulumi-lang-go="`targetCapacityUnitType`" pulumi-lang-python="`target_capacity_unit_type`" pulumi-lang-yaml="`targetCapacityUnitType`" pulumi-lang-java="`targetCapacityUnitType`">`target_capacity_unit_type`</span> to <span pulumi-lang-nodejs="`vcpu`" pulumi-lang-dotnet="`Vcpu`" pulumi-lang-go="`vcpu`" pulumi-lang-python="`vcpu`" pulumi-lang-yaml="`vcpu`" pulumi-lang-java="`vcpu`">`vcpu`</span> or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  final int? onDemandMaxPricePercentageOverLowestPrice;

  /// Indicate whether instance types must support On-Demand Instance Hibernation, either <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? requireHibernateSupport;

  /// The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100. Conflicts with <span pulumi-lang-nodejs="`maxSpotPriceAsPercentageOfOptimalOnDemandPrice`" pulumi-lang-dotnet="`MaxSpotPriceAsPercentageOfOptimalOnDemandPrice`" pulumi-lang-go="`maxSpotPriceAsPercentageOfOptimalOnDemandPrice`" pulumi-lang-python="`max_spot_price_as_percentage_of_optimal_on_demand_price`" pulumi-lang-yaml="`maxSpotPriceAsPercentageOfOptimalOnDemandPrice`" pulumi-lang-java="`maxSpotPriceAsPercentageOfOptimalOnDemandPrice`">`max_spot_price_as_percentage_of_optimal_on_demand_price`</span>
  ///
  /// If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price.
  final int? spotMaxPricePercentageOverLowestPrice;

  /// Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb?
      totalLocalStorageGb;

  /// Block describing the minimum and maximum number of vCPUs. Default is no maximum.
  final FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount
      vcpuCount;

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
    map['memoryMib'] = memoryMib.toMap();
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
    map['vcpuCount'] = vcpuCount.toMap();
    return map;
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirements.fromMap(
      Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirements(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount
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
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib
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
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps
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
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu
              .fromMap(
                  (map['memoryGibPerVcpu'] as Map).cast<String, dynamic>()),
      memoryMib: FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib
          .fromMap((map['memoryMib'] as Map).cast<String, dynamic>()),
      networkBandwidthGbps: map['networkBandwidthGbps'] == null
          ? null
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps
              .fromMap(
                  (map['networkBandwidthGbps'] as Map).cast<String, dynamic>()),
      networkInterfaceCount: map['networkInterfaceCount'] == null
          ? null
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount
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
          : FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb
              .fromMap(
                  (map['totalLocalStorageGb'] as Map).cast<String, dynamic>()),
      vcpuCount: FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount
          .fromMap((map['vcpuCount'] as Map).cast<String, dynamic>()),
    );
  }
}
