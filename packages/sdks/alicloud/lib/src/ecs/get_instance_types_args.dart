// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_instance_types_get_instance_types_args_doc}
/// Arguments for getInstanceTypes.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_instance_types_get_instance_types_args_doc}
class GetInstanceTypesArgs {
  /// The zone where instance types are supported.
  final pulumi.Input<String>? availabilityZone;
  /// Filter the results to a specific number of cpu cores.
  final pulumi.Input<int>? cpuCoreCount;
  /// Filter the result whose network interface number is no more than `eni_amount`.
  final pulumi.Input<int>? eniAmount;
  /// The GPU amount of an instance type.
  final pulumi.Input<int>? gpuAmount;
  /// The GPU spec of an instance type.
  final pulumi.Input<String>? gpuSpec;
  /// The ID of the image.
  final pulumi.Input<String>? imageId;
  /// Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// Instance specifications. For more information, see instance Specification Family, or you can call the describe instance types interface to get the latest specification table.
  final pulumi.Input<String>? instanceType;
  /// Filter the results based on their family name. For example: 'ecs.n4'.
  final pulumi.Input<String>? instanceTypeFamily;
  /// If true, outdated instance types are included in the results. Default to false.
  final pulumi.Input<bool>? isOutdated;
  /// Filter the result which is used to create a kubernetes cluster
  /// and managed kubernetes cluster. Optional Values: `Master` and `Worker`.
  final pulumi.Input<String>? kubernetesNodeRole;
  /// Filter the results to a specific memory size in GB.
  final pulumi.Input<double>? memorySize;
  /// The minimum number of IPv6 addresses per ENI. **Note:** If an instance type supports fewer IPv6 addresses per ENI than the specified value, information about the instance type is not queried.
  final pulumi.Input<int>? minimumEniIpv6AddressQuantity;
  /// The minimum expected IPv4 address upper limit of a single ENI when querying instance specifications. **Note:** If an instance type supports fewer IPv4 addresses per ENI than the specified value, information about the instance type is not queried.
  final pulumi.Input<int>? minimumEniPrivateIpAddressQuantity;
  /// Filter the results by network type. Valid values: `Classic` and `Vpc`.
  final pulumi.Input<String>? networkType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Sort mode, valid values: `CPU`, `Memory`, `Price`.
  final pulumi.Input<String>? sortedBy;
  /// Filter the results by ECS spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  final pulumi.Input<String>? spotStrategy;
  /// Filter the results by system disk category. Valid values: `cloud`, `ephemeral_ssd`, `cloud_essd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd_entry`, `cloud_auto`.
  /// **NOTE**: Its default value `cloud_efficiency` has been removed from the version v1.150.0.
  final pulumi.Input<String>? systemDiskCategory;

  /// Creates a new [GetInstanceTypesArgs].
  /// [availabilityZone] The zone where instance types are supported.
  /// [cpuCoreCount] Filter the results to a specific number of cpu cores.
  /// [eniAmount] Filter the result whose network interface number is no more than `eni_amount`.
  /// [gpuAmount] The GPU amount of an instance type.
  /// [gpuSpec] The GPU spec of an instance type.
  /// [imageId] The ID of the image.
  /// [instanceChargeType] Filter the results by charge type. Valid values: `PrePaid` and `PostPaid`. Default to `PostPaid`.
  /// [instanceType] Instance specifications. For more information, see instance Specification Family, or you can call the describe instance types interface to get the latest specification table.
  /// [instanceTypeFamily] Filter the results based on their family name. For example: 'ecs.n4'.
  /// [isOutdated] If true, outdated instance types are included in the results. Default to false.
  /// [kubernetesNodeRole] Filter the result which is used to create a kubernetes cluster
  /// [memorySize] Filter the results to a specific memory size in GB.
  /// [minimumEniIpv6AddressQuantity] The minimum number of IPv6 addresses per ENI. **Note:** If an instance type supports fewer IPv6 addresses per ENI than the specified value, information about the instance type is not queried.
  /// [minimumEniPrivateIpAddressQuantity] The minimum expected IPv4 address upper limit of a single ENI when querying instance specifications. **Note:** If an instance type supports fewer IPv4 addresses per ENI than the specified value, information about the instance type is not queried.
  /// [networkType] Filter the results by network type. Valid values: `Classic` and `Vpc`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [sortedBy] Sort mode, valid values: `CPU`, `Memory`, `Price`.
  /// [spotStrategy] Filter the results by ECS spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  /// [systemDiskCategory] Filter the results by system disk category. Valid values: `cloud`, `ephemeral_ssd`, `cloud_essd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd_entry`, `cloud_auto`.
  GetInstanceTypesArgs({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<int>? cpuCoreCount,
    pulumi.Output<int>? eniAmount,
    pulumi.Output<int>? gpuAmount,
    pulumi.Output<String>? gpuSpec,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? instanceTypeFamily,
    pulumi.Output<bool>? isOutdated,
    pulumi.Output<String>? kubernetesNodeRole,
    pulumi.Output<double>? memorySize,
    pulumi.Output<int>? minimumEniIpv6AddressQuantity,
    pulumi.Output<int>? minimumEniPrivateIpAddressQuantity,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? sortedBy,
    pulumi.Output<String>? spotStrategy,
    pulumi.Output<String>? systemDiskCategory,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      cpuCoreCount = pulumi.Input.asOptionalInput<int>(cpuCoreCount),
      eniAmount = pulumi.Input.asOptionalInput<int>(eniAmount),
      gpuAmount = pulumi.Input.asOptionalInput<int>(gpuAmount),
      gpuSpec = pulumi.Input.asOptionalInput<String>(gpuSpec),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      instanceTypeFamily = pulumi.Input.asOptionalInput<String>(instanceTypeFamily),
      isOutdated = pulumi.Input.asOptionalInput<bool>(isOutdated),
      kubernetesNodeRole = pulumi.Input.asOptionalInput<String>(kubernetesNodeRole),
      memorySize = pulumi.Input.asOptionalInput<double>(memorySize),
      minimumEniIpv6AddressQuantity = pulumi.Input.asOptionalInput<int>(minimumEniIpv6AddressQuantity),
      minimumEniPrivateIpAddressQuantity = pulumi.Input.asOptionalInput<int>(minimumEniPrivateIpAddressQuantity),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sortedBy = pulumi.Input.asOptionalInput<String>(sortedBy),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      systemDiskCategory = pulumi.Input.asOptionalInput<String>(systemDiskCategory);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'cpuCoreCount': ?cpuCoreCount,
      'eniAmount': ?eniAmount,
      'gpuAmount': ?gpuAmount,
      'gpuSpec': ?gpuSpec,
      'imageId': ?imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceType': ?instanceType,
      'instanceTypeFamily': ?instanceTypeFamily,
      'isOutdated': ?isOutdated,
      'kubernetesNodeRole': ?kubernetesNodeRole,
      'memorySize': ?memorySize,
      'minimumEniIpv6AddressQuantity': ?minimumEniIpv6AddressQuantity,
      'minimumEniPrivateIpAddressQuantity': ?minimumEniPrivateIpAddressQuantity,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'sortedBy': ?sortedBy,
      'spotStrategy': ?spotStrategy,
      'systemDiskCategory': ?systemDiskCategory,
    };
  }

  factory GetInstanceTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesArgs(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : pulumi.Output.create<int>(map['cpuCoreCount'] as int),
      eniAmount: map['eniAmount'] == null ? null : pulumi.Output.create<int>(map['eniAmount'] as int),
      gpuAmount: map['gpuAmount'] == null ? null : pulumi.Output.create<int>(map['gpuAmount'] as int),
      gpuSpec: map['gpuSpec'] == null ? null : pulumi.Output.create<String>(map['gpuSpec'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      instanceTypeFamily: map['instanceTypeFamily'] == null ? null : pulumi.Output.create<String>(map['instanceTypeFamily'] as String),
      isOutdated: map['isOutdated'] == null ? null : pulumi.Output.create<bool>(map['isOutdated'] as bool),
      kubernetesNodeRole: map['kubernetesNodeRole'] == null ? null : pulumi.Output.create<String>(map['kubernetesNodeRole'] as String),
      memorySize: map['memorySize'] == null ? null : pulumi.Output.create<double>(map['memorySize'] as double),
      minimumEniIpv6AddressQuantity: map['minimumEniIpv6AddressQuantity'] == null ? null : pulumi.Output.create<int>(map['minimumEniIpv6AddressQuantity'] as int),
      minimumEniPrivateIpAddressQuantity: map['minimumEniPrivateIpAddressQuantity'] == null ? null : pulumi.Output.create<int>(map['minimumEniPrivateIpAddressQuantity'] as int),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sortedBy: map['sortedBy'] == null ? null : pulumi.Output.create<String>(map['sortedBy'] as String),
      spotStrategy: map['spotStrategy'] == null ? null : pulumi.Output.create<String>(map['spotStrategy'] as String),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : pulumi.Output.create<String>(map['systemDiskCategory'] as String),
    );
  }
}

