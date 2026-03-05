// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_type.dart';

/// Result data returned by getInstanceTypes.
class GetInstanceTypesResult {
  final String clusterType;
  final String destinationResource;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of emr instance types IDs.
  final List<String> ids;
  final String instanceChargeType;
  final String? instanceType;
  final String? outputFile;
  final bool? supportLocalStorage;
  final List<String>? supportNodeTypes;
  /// A list of emr instance types. Each element contains the following attributes:
  final List<GetInstanceTypesType> types;
  /// The available zone id in Alibaba Cloud account
  final String? zoneId;

  /// Creates a new [GetInstanceTypesResult].
  /// [clusterType] Required.
  /// [destinationResource] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of emr instance types IDs.
  /// [instanceChargeType] Required.
  /// [instanceType] Optional.
  /// [outputFile] Optional.
  /// [supportLocalStorage] Optional.
  /// [supportNodeTypes] Optional.
  /// [types] A list of emr instance types. Each element contains the following attributes:
  /// [zoneId] The available zone id in Alibaba Cloud account
  GetInstanceTypesResult({
    required this.clusterType,
    required this.destinationResource,
    required this.id,
    required this.ids,
    required this.instanceChargeType,
    this.instanceType,
    this.outputFile,
    this.supportLocalStorage,
    this.supportNodeTypes,
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
      'instanceType': ?instanceType,
      'outputFile': ?outputFile,
      'supportLocalStorage': ?supportLocalStorage,
      'supportNodeTypes': ?supportNodeTypes,
      'types': pulumi.Input.encodeList<GetInstanceTypesType, Map<String, dynamic>>(types, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesResult(
      clusterType: map['clusterType'] as String,
      destinationResource: map['destinationResource'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] as String,
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportLocalStorage: (() { final guardedValue = map['supportLocalStorage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportNodeTypes: (() { final guardedValue = map['supportNodeTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      types: pulumi.Input.decodeList<GetInstanceTypesType>(map['types']!, (value) => GetInstanceTypesType.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

