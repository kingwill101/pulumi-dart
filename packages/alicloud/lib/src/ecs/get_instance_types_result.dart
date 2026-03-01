// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_instance_type.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  final String? availabilityZone;
  /// Number of CPU cores.
  final int? cpuCoreCount;
  /// (Deprecated since v1.239.0) The maximum number of ENIs per instance. It sames as `eni_quantity`.
  final int? eniAmount;
  final int? gpuAmount;
  final String? gpuSpec;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of instance type IDs.
  final List<String> ids;
  final String? imageId;
  final String? instanceChargeType;
  final String? instanceType;
  final String? instanceTypeFamily;
  /// A list of image types. Each element contains the following attributes:
  final List<GetInstanceTypesInstanceType> instanceTypes;
  final bool? isOutdated;
  final String? kubernetesNodeRole;
  /// Size of memory, measured in GB.
  final double? memorySize;
  final int? minimumEniIpv6AddressQuantity;
  final int? minimumEniPrivateIpAddressQuantity;
  final String? networkType;
  final String? outputFile;
  final String? sortedBy;
  final String? spotStrategy;
  final String? systemDiskCategory;

  /// Creates a new [GetInstanceTypesResult].
  /// [availabilityZone] Optional.
  /// [cpuCoreCount] Number of CPU cores.
  /// [eniAmount] (Deprecated since v1.239.0) The maximum number of ENIs per instance. It sames as `eni_quantity`.
  /// [gpuAmount] Optional.
  /// [gpuSpec] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of instance type IDs.
  /// [imageId] Optional.
  /// [instanceChargeType] Optional.
  /// [instanceType] Optional.
  /// [instanceTypeFamily] Optional.
  /// [instanceTypes] A list of image types. Each element contains the following attributes:
  /// [isOutdated] Optional.
  /// [kubernetesNodeRole] Optional.
  /// [memorySize] Size of memory, measured in GB.
  /// [minimumEniIpv6AddressQuantity] Optional.
  /// [minimumEniPrivateIpAddressQuantity] Optional.
  /// [networkType] Optional.
  /// [outputFile] Optional.
  /// [sortedBy] Optional.
  /// [spotStrategy] Optional.
  /// [systemDiskCategory] Optional.
  GetInstanceTypesResult({
    this.availabilityZone,
    this.cpuCoreCount,
    this.eniAmount,
    this.gpuAmount,
    this.gpuSpec,
    required this.id,
    required this.ids,
    this.imageId,
    this.instanceChargeType,
    this.instanceType,
    this.instanceTypeFamily,
    required this.instanceTypes,
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
      'id': id,
      'ids': ids,
      'imageId': ?imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceType': ?instanceType,
      'instanceTypeFamily': ?instanceTypeFamily,
      'instanceTypes': pulumi.Input.encodeList<GetInstanceTypesInstanceType, Map<String, dynamic>>(instanceTypes, (value) => value.toMap()),
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

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      cpuCoreCount: map['cpuCoreCount'] == null ? null : map['cpuCoreCount'] as int,
      eniAmount: map['eniAmount'] == null ? null : map['eniAmount'] as int,
      gpuAmount: map['gpuAmount'] == null ? null : map['gpuAmount'] as int,
      gpuSpec: map['gpuSpec'] == null ? null : map['gpuSpec'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      instanceTypeFamily: map['instanceTypeFamily'] == null ? null : map['instanceTypeFamily'] as String,
      instanceTypes: pulumi.Input.decodeList<GetInstanceTypesInstanceType>(map['instanceTypes'], (value) => GetInstanceTypesInstanceType.fromMap((value as Map).cast<String, dynamic>())),
      isOutdated: map['isOutdated'] == null ? null : map['isOutdated'] as bool,
      kubernetesNodeRole: map['kubernetesNodeRole'] == null ? null : map['kubernetesNodeRole'] as String,
      memorySize: map['memorySize'] == null ? null : map['memorySize'] as double,
      minimumEniIpv6AddressQuantity: map['minimumEniIpv6AddressQuantity'] == null ? null : map['minimumEniIpv6AddressQuantity'] as int,
      minimumEniPrivateIpAddressQuantity: map['minimumEniPrivateIpAddressQuantity'] == null ? null : map['minimumEniPrivateIpAddressQuantity'] as int,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      sortedBy: map['sortedBy'] == null ? null : map['sortedBy'] as String,
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy'] as String,
      systemDiskCategory: map['systemDiskCategory'] == null ? null : map['systemDiskCategory'] as String,
    );
  }
}

