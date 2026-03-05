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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      eniAmount: (() { final guardedValue = map['eniAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gpuAmount: (() { final guardedValue = map['gpuAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gpuSpec: (() { final guardedValue = map['gpuSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTypeFamily: (() { final guardedValue = map['instanceTypeFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isOutdated: (() { final guardedValue = map['isOutdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kubernetesNodeRole: (() { final guardedValue = map['kubernetesNodeRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memorySize: (() { final guardedValue = map['memorySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minimumEniIpv6AddressQuantity: (() { final guardedValue = map['minimumEniIpv6AddressQuantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumEniPrivateIpAddressQuantity: (() { final guardedValue = map['minimumEniPrivateIpAddressQuantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortedBy: (() { final guardedValue = map['sortedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskCategory: (() { final guardedValue = map['systemDiskCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

