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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      eniAmount: (() { final guardedValue = map['eniAmount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      gpuAmount: (() { final guardedValue = map['gpuAmount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      gpuSpec: (() { final guardedValue = map['gpuSpec']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypeFamily: (() { final guardedValue = map['instanceTypeFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypes: pulumi.Input.decodeList<GetInstanceTypesInstanceType>(map['instanceTypes']!, (value) => GetInstanceTypesInstanceType.fromMap((value as Map).cast<String, dynamic>())),
      isOutdated: (() { final guardedValue = map['isOutdated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kubernetesNodeRole: (() { final guardedValue = map['kubernetesNodeRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memorySize: (() { final guardedValue = map['memorySize']; if (guardedValue == null) return null; return guardedValue as double; })(),
      minimumEniIpv6AddressQuantity: (() { final guardedValue = map['minimumEniIpv6AddressQuantity']; if (guardedValue == null) return null; return guardedValue as int; })(),
      minimumEniPrivateIpAddressQuantity: (() { final guardedValue = map['minimumEniPrivateIpAddressQuantity']; if (guardedValue == null) return null; return guardedValue as int; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortedBy: (() { final guardedValue = map['sortedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemDiskCategory: (() { final guardedValue = map['systemDiskCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

