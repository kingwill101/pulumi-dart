// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_boot_disk_initialize_param_source_image_encryption_key/get_instance_boot_disk_initialize_param_source_image_encryption_key.dart';
import '../get_instance_boot_disk_initialize_param_source_snapshot_encryption_key/get_instance_boot_disk_initialize_param_source_snapshot_encryption_key.dart';

class GetInstanceBootDiskInitializeParam {
  /// The architecture of the disk. One of "X86_64" or "ARM64".
  final String architecture;

  /// A flag to enable confidential compute mode on boot disk
  final bool enableConfidentialCompute;

  /// The image from which this disk was initialised.
  final String image;

  /// A set of key/value label pairs assigned to the disk.
  final Map<String, String> labels;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final int provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final int provisionedThroughput;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// A list of self_links to resource policies attached to the selected `boot_disk`
  final List<String> resourcePolicies;

  /// The size of the image in gigabytes.
  final int size;

  /// The snapshot from which this disk was initialised.
  final String snapshot;

  /// The encryption key used to decrypt the source image.
  final List<GetInstanceBootDiskInitializeParamSourceImageEncryptionKey>
      sourceImageEncryptionKeys;

  /// The encryption key used to decrypt the source snapshot.
  final List<GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey>
      sourceSnapshotEncryptionKeys;

  /// The URL of the storage pool in which the new disk is created
  final String storagePool;

  /// The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  GetInstanceBootDiskInitializeParam({
    required this.architecture,
    required this.enableConfidentialCompute,
    required this.image,
    required this.labels,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.size,
    required this.snapshot,
    required this.sourceImageEncryptionKeys,
    required this.sourceSnapshotEncryptionKeys,
    required this.storagePool,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    map['image'] = image;
    map['labels'] = labels;
    map['provisionedIops'] = provisionedIops;
    map['provisionedThroughput'] = provisionedThroughput;
    map['resourceManagerTags'] = resourceManagerTags;
    map['resourcePolicies'] = resourcePolicies;
    map['size'] = size;
    map['snapshot'] = snapshot;
    map['sourceImageEncryptionKeys'] = Input.encodeList<
            GetInstanceBootDiskInitializeParamSourceImageEncryptionKey,
            Map<String, dynamic>>(
        sourceImageEncryptionKeys, (value) => value.toMap());
    map['sourceSnapshotEncryptionKeys'] = Input.encodeList<
            GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey,
            Map<String, dynamic>>(
        sourceSnapshotEncryptionKeys, (value) => value.toMap());
    map['storagePool'] = storagePool;
    map['type'] = type;
    return map;
  }

  factory GetInstanceBootDiskInitializeParam.fromMap(Map<String, dynamic> map) {
    return GetInstanceBootDiskInitializeParam(
      architecture: map['architecture'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
      image: map['image'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      size: map['size'] as int,
      snapshot: map['snapshot'] as String,
      sourceImageEncryptionKeys: Input.decodeList<
              GetInstanceBootDiskInitializeParamSourceImageEncryptionKey>(
          map['sourceImageEncryptionKeys'],
          (value) => GetInstanceBootDiskInitializeParamSourceImageEncryptionKey
              .fromMap((value as Map).cast<String, dynamic>())),
      sourceSnapshotEncryptionKeys: Input.decodeList<
              GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey>(
          map['sourceSnapshotEncryptionKeys'],
          (value) =>
              GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey
                  .fromMap((value as Map).cast<String, dynamic>())),
      storagePool: map['storagePool'] as String,
      type: map['type'] as String,
    );
  }
}
