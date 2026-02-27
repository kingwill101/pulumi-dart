// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_workload_disk_restore_properties_disk_encryption_key/restore_workload_disk_restore_properties_disk_encryption_key.dart';
import '../restore_workload_disk_restore_properties_guest_os_feature/restore_workload_disk_restore_properties_guest_os_feature.dart';
import '../restore_workload_disk_restore_properties_label/restore_workload_disk_restore_properties_label.dart';
import '../restore_workload_disk_restore_properties_resource_manager_tag/restore_workload_disk_restore_properties_resource_manager_tag.dart';

class RestoreWorkloadDiskRestoreProperties {
  /// Optional. The access mode of the disk.
  /// Possible values are: `READ_WRITE_SINGLE`, `READ_WRITE_MANY`, `READ_ONLY_MANY`.
  final String? accessMode;

  /// Optional. The architecture of the source disk.
  /// Possible values are: `ARCHITECTURE_UNSPECIFIED`, `X86_64`, `ARM64`.
  final String? architecture;

  /// Optional. An optional description of this resource.
  final String? description;

  /// Optional. Encrypts the disk using a customer-supplied encryption key.
  /// Structure is documented below.
  final RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey?
      diskEncryptionKey;

  /// Optional. Indicates whether this disk is using confidential compute mode.
  final bool? enableConfidentialCompute;

  /// Optional. A list of features to enable in the guest operating system.
  /// Structure is documented below.
  final List<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>?
      guestOsFeatures;

  /// Optional. Labels to apply to this disk.
  /// Structure is documented below.
  final List<RestoreWorkloadDiskRestorePropertiesLabel>? labels;

  /// Optional. A list of publicly available licenses that are applicable to this backup.
  final List<String>? licenses;

  /// Required. Name of the disk.
  final String name;

  /// Optional. Physical block size of the persistent disk, in bytes.
  final int? physicalBlockSizeBytes;

  /// Optional. Indicates how many IOPS to provision for the disk.
  final int? provisionedIops;

  /// Optional. Indicates how much throughput to provision for the disk.
  final int? provisionedThroughput;

  /// Optional. Resource manager tags to be bound to the disk.
  /// Structure is documented below.
  final List<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>?
      resourceManagerTags;

  /// Optional. Resource policies applied to this disk.
  final List<String>? resourcePolicies;

  /// Required. The size of the disk in GB.
  final int sizeGb;

  /// Optional. The storage pool in which the new disk is created.
  final String? storagePool;

  /// Required. URL of the disk type resource describing which disk type to use.
  final String type;

  RestoreWorkloadDiskRestoreProperties({
    this.accessMode,
    this.architecture,
    this.description,
    this.diskEncryptionKey,
    this.enableConfidentialCompute,
    this.guestOsFeatures,
    this.labels,
    this.licenses,
    required this.name,
    this.physicalBlockSizeBytes,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourceManagerTags,
    this.resourcePolicies,
    required this.sizeGb,
    this.storagePool,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessModeValue = accessMode;
    if (accessModeValue != null) {
      map['accessMode'] = accessModeValue;
    }
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionKeyValue = diskEncryptionKey;
    if (diskEncryptionKeyValue != null) {
      map['diskEncryptionKey'] = diskEncryptionKeyValue.toMap();
    }
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = pulumi.Input.encodeList<
          RestoreWorkloadDiskRestorePropertiesGuestOsFeature,
          Map<String, dynamic>>(guestOsFeaturesValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = pulumi.Input.encodeList<
          RestoreWorkloadDiskRestorePropertiesLabel,
          Map<String, dynamic>>(labelsValue, (value) => value.toMap());
    }
    final licensesValue = licenses;
    if (licensesValue != null) {
      map['licenses'] = licensesValue;
    }
    map['name'] = name;
    final physicalBlockSizeBytesValue = physicalBlockSizeBytes;
    if (physicalBlockSizeBytesValue != null) {
      map['physicalBlockSizeBytes'] = physicalBlockSizeBytesValue;
    }
    final provisionedIopsValue = provisionedIops;
    if (provisionedIopsValue != null) {
      map['provisionedIops'] = provisionedIopsValue;
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = provisionedThroughputValue;
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = pulumi.Input.encodeList<
              RestoreWorkloadDiskRestorePropertiesResourceManagerTag,
              Map<String, dynamic>>(
          resourceManagerTagsValue, (value) => value.toMap());
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    map['sizeGb'] = sizeGb;
    final storagePoolValue = storagePool;
    if (storagePoolValue != null) {
      map['storagePool'] = storagePoolValue;
    }
    map['type'] = type;
    return map;
  }

  factory RestoreWorkloadDiskRestoreProperties.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestoreProperties(
      accessMode:
          map['accessMode'] == null ? null : map['accessMode'] as String,
      architecture:
          map['architecture'] == null ? null : map['architecture'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null
          ? null
          : RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey.fromMap(
              (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
      guestOsFeatures: map['guestOsFeatures'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadDiskRestorePropertiesGuestOsFeature>(
              map['guestOsFeatures'],
              (value) =>
                  RestoreWorkloadDiskRestorePropertiesGuestOsFeature.fromMap(
                      (value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesLabel>(
              map['labels'],
              (value) => RestoreWorkloadDiskRestorePropertiesLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      licenses: map['licenses'] == null
          ? null
          : (map['licenses'] as List).cast<String>(),
      name: map['name'] as String,
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null
          ? null
          : map['physicalBlockSizeBytes'] as int,
      provisionedIops:
          map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as int,
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestoreWorkloadDiskRestorePropertiesResourceManagerTag>(
              map['resourceManagerTags'],
              (value) => RestoreWorkloadDiskRestorePropertiesResourceManagerTag
                  .fromMap((value as Map).cast<String, dynamic>())),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as List).cast<String>(),
      sizeGb: map['sizeGb'] as int,
      storagePool:
          map['storagePool'] == null ? null : map['storagePool'] as String,
      type: map['type'] as String,
    );
  }
}
