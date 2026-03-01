// ignore_for_file: unused_element, unnecessary_cast

import 'instance_from_template_boot_disk_initialize_params_source_image_encryption_key.dart';
import 'instance_from_template_boot_disk_initialize_params_source_snapshot_encryption_key.dart';

class InstanceFromTemplateBootDiskInitializeParams {
  /// The architecture of the disk. One of "X86_64" or "ARM64".
  final String? architecture;

  /// A flag to enable confidential compute mode on boot disk
  final bool? enableConfidentialCompute;

  /// The image from which this disk was initialised.
  final String? image;

  /// A set of key/value label pairs assigned to the disk.
  final Map<String, String>? labels;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final int? provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final int? provisionedThroughput;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String>? resourceManagerTags;

  /// A list of self_links of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final String? resourcePolicies;

  /// The size of the image in gigabytes.
  final int? size;

  /// The snapshot from which this disk was initialised.
  final String? snapshot;

  /// The encryption key used to decrypt the source image.
  final InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey?
  sourceImageEncryptionKey;

  /// The encryption key used to decrypt the source snapshot.
  final InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey?
  sourceSnapshotEncryptionKey;

  /// The URL of the storage pool in which the new disk is created
  final String? storagePool;

  /// The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.
  final String? type;

  /// Creates a new [InstanceFromTemplateBootDiskInitializeParams].
  /// [architecture] The architecture of the disk. One of "X86_64" or "ARM64".
  /// [enableConfidentialCompute] A flag to enable confidential compute mode on boot disk
  /// [image] The image from which this disk was initialised.
  /// [labels] A set of key/value label pairs assigned to the disk.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] A list of self_links of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [size] The size of the image in gigabytes.
  /// [snapshot] The snapshot from which this disk was initialised.
  /// [sourceImageEncryptionKey] The encryption key used to decrypt the source image.
  /// [sourceSnapshotEncryptionKey] The encryption key used to decrypt the source snapshot.
  /// [storagePool] The URL of the storage pool in which the new disk is created
  /// [type] The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.
  InstanceFromTemplateBootDiskInitializeParams({
    this.architecture,
    this.enableConfidentialCompute,
    this.image,
    this.labels,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.size,
    this.snapshot,
    this.sourceImageEncryptionKey,
    this.sourceSnapshotEncryptionKey,
    this.storagePool,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'image': ?image,
      'labels': ?labels,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceImageEncryptionKey': ?sourceImageEncryptionKey == null
          ? null
          : sourceImageEncryptionKey!.toMap(),
      'sourceSnapshotEncryptionKey': ?sourceSnapshotEncryptionKey == null
          ? null
          : sourceSnapshotEncryptionKey!.toMap(),
      'storagePool': ?storagePool,
      'type': ?type,
    };
  }

  factory InstanceFromTemplateBootDiskInitializeParams.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromTemplateBootDiskInitializeParams(
      architecture: map['architecture'] == null
          ? null
          : map['architecture'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
      image: map['image'] == null ? null : map['image'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      provisionedIops: map['provisionedIops'] == null
          ? null
          : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as int,
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : map['resourcePolicies'] as String,
      size: map['size'] == null ? null : map['size'] as int,
      snapshot: map['snapshot'] == null ? null : map['snapshot'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null
          ? null
          : InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey.fromMap(
              (map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null
          ? null
          : InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey.fromMap(
              (map['sourceSnapshotEncryptionKey'] as Map)
                  .cast<String, dynamic>(),
            ),
      storagePool: map['storagePool'] == null
          ? null
          : map['storagePool'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
