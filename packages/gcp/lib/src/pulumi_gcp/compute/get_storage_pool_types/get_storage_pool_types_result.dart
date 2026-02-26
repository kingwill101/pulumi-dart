// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_storage_pool_types_deprecated/get_storage_pool_types_deprecated.dart';

/// Result data returned by getStoragePoolTypes.
class GetStoragePoolTypesResult {
  final String creationTimestamp;
  final List<GetStoragePoolTypesDeprecated> deprecateds;
  final String description;
  final int id;
  final String kind;
  final int maxPoolProvisionedCapacityGb;
  final int maxPoolProvisionedIops;
  final int maxPoolProvisionedThroughput;
  final int minPoolProvisionedCapacityGb;
  final int minPoolProvisionedIops;
  final int minPoolProvisionedThroughput;
  final String name;
  final String project;
  final String selfLink;
  final String selfLinkWithId;
  final String storagePoolType;
  final List<String> supportedDiskTypes;
  final String zone;

  GetStoragePoolTypesResult({
    required this.creationTimestamp,
    required this.deprecateds,
    required this.description,
    required this.id,
    required this.kind,
    required this.maxPoolProvisionedCapacityGb,
    required this.maxPoolProvisionedIops,
    required this.maxPoolProvisionedThroughput,
    required this.minPoolProvisionedCapacityGb,
    required this.minPoolProvisionedIops,
    required this.minPoolProvisionedThroughput,
    required this.name,
    required this.project,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.storagePoolType,
    required this.supportedDiskTypes,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['deprecateds'] =
        Input.encodeList<GetStoragePoolTypesDeprecated, Map<String, dynamic>>(
            deprecateds, (value) => value.toMap());
    map['description'] = description;
    map['id'] = id;
    map['kind'] = kind;
    map['maxPoolProvisionedCapacityGb'] = maxPoolProvisionedCapacityGb;
    map['maxPoolProvisionedIops'] = maxPoolProvisionedIops;
    map['maxPoolProvisionedThroughput'] = maxPoolProvisionedThroughput;
    map['minPoolProvisionedCapacityGb'] = minPoolProvisionedCapacityGb;
    map['minPoolProvisionedIops'] = minPoolProvisionedIops;
    map['minPoolProvisionedThroughput'] = minPoolProvisionedThroughput;
    map['name'] = name;
    map['project'] = project;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['storagePoolType'] = storagePoolType;
    map['supportedDiskTypes'] = supportedDiskTypes;
    map['zone'] = zone;
    return map;
  }

  factory GetStoragePoolTypesResult.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesResult(
      creationTimestamp: map['creationTimestamp'] as String,
      deprecateds: Input.decodeList<GetStoragePoolTypesDeprecated>(
          map['deprecateds'],
          (value) => GetStoragePoolTypesDeprecated.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as int,
      kind: map['kind'] as String,
      maxPoolProvisionedCapacityGb: map['maxPoolProvisionedCapacityGb'] as int,
      maxPoolProvisionedIops: map['maxPoolProvisionedIops'] as int,
      maxPoolProvisionedThroughput: map['maxPoolProvisionedThroughput'] as int,
      minPoolProvisionedCapacityGb: map['minPoolProvisionedCapacityGb'] as int,
      minPoolProvisionedIops: map['minPoolProvisionedIops'] as int,
      minPoolProvisionedThroughput: map['minPoolProvisionedThroughput'] as int,
      name: map['name'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      storagePoolType: map['storagePoolType'] as String,
      supportedDiskTypes: (map['supportedDiskTypes'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}
