// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_storage_pool_resource_status/get_storage_pool_resource_status.dart';
import '../get_storage_pool_status/get_storage_pool_status.dart';

/// Result data returned by getStoragePool.
class GetStoragePoolResult {
  final String capacityProvisioningType;
  final String creationTimestamp;
  final bool deletionProtection;
  final String description;
  final Map<String, String> effectiveLabels;
  final String id;
  final String kind;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String name;
  final String performanceProvisioningType;
  final String poolProvisionedCapacityGb;
  final String poolProvisionedIops;
  final String poolProvisionedThroughput;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetStoragePoolResourceStatus> resourceStatuses;
  final List<GetStoragePoolStatus> statuses;
  final String storagePoolType;
  final String zone;

  GetStoragePoolResult({
    required this.capacityProvisioningType,
    required this.creationTimestamp,
    required this.deletionProtection,
    required this.description,
    required this.effectiveLabels,
    required this.id,
    required this.kind,
    required this.labelFingerprint,
    required this.labels,
    required this.name,
    required this.performanceProvisioningType,
    required this.poolProvisionedCapacityGb,
    required this.poolProvisionedIops,
    required this.poolProvisionedThroughput,
    this.project,
    required this.pulumiLabels,
    required this.resourceStatuses,
    required this.statuses,
    required this.storagePoolType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityProvisioningType'] = capacityProvisioningType;
    map['creationTimestamp'] = creationTimestamp;
    map['deletionProtection'] = deletionProtection;
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['id'] = id;
    map['kind'] = kind;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    map['name'] = name;
    map['performanceProvisioningType'] = performanceProvisioningType;
    map['poolProvisionedCapacityGb'] = poolProvisionedCapacityGb;
    map['poolProvisionedIops'] = poolProvisionedIops;
    map['poolProvisionedThroughput'] = poolProvisionedThroughput;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['resourceStatuses'] = pulumi.Input.encodeList<
        GetStoragePoolResourceStatus,
        Map<String, dynamic>>(resourceStatuses, (value) => value.toMap());
    map['statuses'] =
        pulumi.Input.encodeList<GetStoragePoolStatus, Map<String, dynamic>>(
            statuses, (value) => value.toMap());
    map['storagePoolType'] = storagePoolType;
    map['zone'] = zone;
    return map;
  }

  factory GetStoragePoolResult.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolResult(
      capacityProvisioningType: map['capacityProvisioningType'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      performanceProvisioningType: map['performanceProvisioningType'] as String,
      poolProvisionedCapacityGb: map['poolProvisionedCapacityGb'] as String,
      poolProvisionedIops: map['poolProvisionedIops'] as String,
      poolProvisionedThroughput: map['poolProvisionedThroughput'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      resourceStatuses: pulumi.Input.decodeList<GetStoragePoolResourceStatus>(
          map['resourceStatuses'],
          (value) => GetStoragePoolResourceStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      statuses: pulumi.Input.decodeList<GetStoragePoolStatus>(
          map['statuses'],
          (value) => GetStoragePoolStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      storagePoolType: map['storagePoolType'] as String,
      zone: map['zone'] as String,
    );
  }
}
