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
    this.availabilityZone,
    this.cpuCoreCount,
    this.eniAmount,
    this.gpuAmount,
    this.gpuSpec,
    this.imageId,
    this.instanceChargeType,
    this.instanceType,
    this.instanceTypeFamily,
    this.isOutdated,
    this.kubernetesNodeRole,
    this.memorySize,
    this.minimumEniIpv6AddressQuantity,
    this.minimumEniPrivateIpAddressQuantity,
    this.networkType,
    this.outputFile,
    this.sortedBy,
    this.spotStrategy,
    this.systemDiskCategory,
  });

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
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : (map['cpuCoreCount']! as int).input(),
      eniAmount: map['eniAmount'] == null ? null : (map['eniAmount']! as int).input(),
      gpuAmount: map['gpuAmount'] == null ? null : (map['gpuAmount']! as int).input(),
      gpuSpec: map['gpuSpec'] == null ? null : (map['gpuSpec']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      instanceTypeFamily: map['instanceTypeFamily'] == null ? null : (map['instanceTypeFamily']! as String).input(),
      isOutdated: map['isOutdated'] == null ? null : (map['isOutdated']! as bool).input(),
      kubernetesNodeRole: map['kubernetesNodeRole'] == null ? null : (map['kubernetesNodeRole']! as String).input(),
      memorySize: map['memorySize'] == null ? null : (map['memorySize']! as double).input(),
      minimumEniIpv6AddressQuantity: map['minimumEniIpv6AddressQuantity'] == null ? null : (map['minimumEniIpv6AddressQuantity']! as int).input(),
      minimumEniPrivateIpAddressQuantity: map['minimumEniPrivateIpAddressQuantity'] == null ? null : (map['minimumEniPrivateIpAddressQuantity']! as int).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      sortedBy: map['sortedBy'] == null ? null : (map['sortedBy']! as String).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy']! as String).input(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : (map['systemDiskCategory']! as String).input(),
    );
  }
}

