// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_types_type.dart';

/// Result data returned by getDiskTypes.
class GetDiskTypesResult {
  final String clusterType;
  final String destinationResource;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of data disk and system disk type IDs.
  final List<String> ids;
  final String instanceChargeType;
  final String instanceType;
  final String? outputFile;
  /// A list of emr instance types. Each element contains the following attributes:
  final List<GetDiskTypesType> types;
  final String? zoneId;

  /// Creates a new [GetDiskTypesResult].
  /// [clusterType] Required.
  /// [destinationResource] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of data disk and system disk type IDs.
  /// [instanceChargeType] Required.
  /// [instanceType] Required.
  /// [outputFile] Optional.
  /// [types] A list of emr instance types. Each element contains the following attributes:
  /// [zoneId] Optional.
  const GetDiskTypesResult({
    required this.clusterType,
    required this.destinationResource,
    required this.id,
    required this.ids,
    required this.instanceChargeType,
    required this.instanceType,
    this.outputFile,
    required this.types,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'destinationResource': destinationResource,
      'id': id,
      'ids': ids,
      'instanceChargeType': instanceChargeType,
      'instanceType': instanceType,
      'outputFile': ?outputFile,
      'types': pulumi.Input.encodeList<GetDiskTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetDiskTypesResult.fromMap(Map<String, dynamic> map) {
    return GetDiskTypesResult(
      clusterType: map['clusterType'] as String,
      destinationResource: map['destinationResource'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] as String,
      instanceType: map['instanceType'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: pulumi.Input.decodeList<GetDiskTypesType>(map['types']!, (value) => GetDiskTypesType.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

