// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_disk_async_primary_disk/region_disk_async_primary_disk.dart';
import '../region_disk_disk_encryption_key/region_disk_disk_encryption_key.dart';
import '../region_disk_guest_os_feature/region_disk_guest_os_feature.dart';
import '../region_disk_source_snapshot_encryption_key/region_disk_source_snapshot_encryption_key.dart';

/// The set of arguments for RegionDisk.
class RegionDiskArgs {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  final Input<String>? accessMode;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionDiskAsyncPrimaryDisk>? asyncPrimaryDisk;

  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  final Input<bool>? createSnapshotBeforeDestroy;

  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  final Input<String>? createSnapshotBeforeDestroyPrefix;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final Input<String>? description;

  /// Encrypts the disk using a customer-supplied encryption key.
  /// After you encrypt a disk with a customer-supplied key, you must
  /// provide the same key if you use the disk later (e.g. to create a disk
  /// snapshot or an image, or to attach the disk to a virtual machine).
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the disk.
  /// If you do not provide an encryption key when creating the disk, then
  /// the disk will be encrypted using an automatically generated key and
  /// you do not need to provide a key to use the disk later.
  /// Structure is documented below.
  final Input<RegionDiskDiskEncryptionKey>? diskEncryptionKey;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final Input<List<RegionDiskGuestOsFeature>>? guestOsFeatures;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// > **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  final Input<String>? interface;

  /// Labels to apply to this disk.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Any applicable license URI.
  final Input<List<String>>? licenses;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  final Input<int>? physicalBlockSizeBytes;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// that the disk can handle. Values must be between 10,000 and 120,000.
  /// For more details, see the Extreme persistent disk [documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
  final Input<int>? provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// mb per second that the disk can handle. Values must be greater than or equal to 1.
  final Input<int>? provisionedThroughput;

  /// A reference to the region where the disk resides.
  final Input<String>? region;

  /// URLs of the zones where the disk should be replicated to.
  final Input<List<String>> replicaZones;

  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the sourceImage or
  /// sourceSnapshot parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with sourceImage or sourceSnapshot,
  /// the value of sizeGb must not be less than the size of the sourceImage
  /// or the size of the snapshot.
  final Input<int>? size;

  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. For example, the following are
  /// valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`
  /// * `projects/project/global/snapshots/snapshot`
  /// * `global/snapshots/snapshot`
  final Input<String>? snapshot;

  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
  /// * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
  /// * projects/{project}/zones/{zone}/disks/{disk}
  /// * projects/{project}/regions/{region}/disks/{disk}
  /// * zones/{zone}/disks/{disk}
  /// * regions/{region}/disks/{disk}
  final Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final Input<RegionDiskSourceSnapshotEncryptionKey>?
      sourceSnapshotEncryptionKey;

  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final Input<String>? type;

  RegionDiskArgs({
    this.accessMode,
    this.asyncPrimaryDisk,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.description,
    this.diskEncryptionKey,
    this.guestOsFeatures,
    this.interface,
    this.labels,
    this.licenses,
    this.name,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.region,
    required this.replicaZones,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceSnapshotEncryptionKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessModeValue = accessMode;
    if (accessModeValue != null) {
      map['accessMode'] = accessModeValue;
    }
    final asyncPrimaryDiskValue = asyncPrimaryDisk;
    if (asyncPrimaryDiskValue != null) {
      map['asyncPrimaryDisk'] = Input.mapOptionalInputValue<
              RegionDiskAsyncPrimaryDisk, Map<String, dynamic>>(
          asyncPrimaryDiskValue, (value) => value.toMap());
    }
    final createSnapshotBeforeDestroyValue = createSnapshotBeforeDestroy;
    if (createSnapshotBeforeDestroyValue != null) {
      map['createSnapshotBeforeDestroy'] = createSnapshotBeforeDestroyValue;
    }
    final createSnapshotBeforeDestroyPrefixValue =
        createSnapshotBeforeDestroyPrefix;
    if (createSnapshotBeforeDestroyPrefixValue != null) {
      map['createSnapshotBeforeDestroyPrefix'] =
          createSnapshotBeforeDestroyPrefixValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionKeyValue = diskEncryptionKey;
    if (diskEncryptionKeyValue != null) {
      map['diskEncryptionKey'] = Input.mapOptionalInputValue<
              RegionDiskDiskEncryptionKey, Map<String, dynamic>>(
          diskEncryptionKeyValue, (value) => value.toMap());
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = Input.mapOptionalInputValue<
              List<RegionDiskGuestOsFeature>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) =>
              Input.encodeList<RegionDiskGuestOsFeature, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final licensesValue = licenses;
    if (licensesValue != null) {
      map['licenses'] = licensesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final physicalBlockSizeBytesValue = physicalBlockSizeBytes;
    if (physicalBlockSizeBytesValue != null) {
      map['physicalBlockSizeBytes'] = physicalBlockSizeBytesValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final provisionedIopsValue = provisionedIops;
    if (provisionedIopsValue != null) {
      map['provisionedIops'] = provisionedIopsValue;
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = provisionedThroughputValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicaZones'] = replicaZones;
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final snapshotValue = snapshot;
    if (snapshotValue != null) {
      map['snapshot'] = snapshotValue;
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = Input.mapOptionalInputValue<
              RegionDiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(
          sourceSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RegionDiskArgs.fromMap(Map<String, dynamic> map) {
    return RegionDiskArgs(
      accessMode: Input.asOptionalInput<String>(map['accessMode']),
      asyncPrimaryDisk: Input.asOptionalInput<RegionDiskAsyncPrimaryDisk>(
          map['asyncPrimaryDisk']),
      createSnapshotBeforeDestroy:
          Input.asOptionalInput<bool>(map['createSnapshotBeforeDestroy']),
      createSnapshotBeforeDestroyPrefix: Input.asOptionalInput<String>(
          map['createSnapshotBeforeDestroyPrefix']),
      description: Input.asOptionalInput<String>(map['description']),
      diskEncryptionKey: Input.asOptionalInput<RegionDiskDiskEncryptionKey>(
          map['diskEncryptionKey']),
      guestOsFeatures: Input.asOptionalInput<List<RegionDiskGuestOsFeature>>(
          map['guestOsFeatures']),
      interface: Input.asOptionalInput<String>(map['interface']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenses: Input.asOptionalInput<List<String>>(map['licenses']),
      name: Input.asOptionalInput<String>(map['name']),
      physicalBlockSizeBytes:
          Input.asOptionalInput<int>(map['physicalBlockSizeBytes']),
      project: Input.asOptionalInput<String>(map['project']),
      provisionedIops: Input.asOptionalInput<int>(map['provisionedIops']),
      provisionedThroughput:
          Input.asOptionalInput<int>(map['provisionedThroughput']),
      region: Input.asOptionalInput<String>(map['region']),
      replicaZones: Input.asInput<List<String>>(map['replicaZones']),
      size: Input.asOptionalInput<int>(map['size']),
      snapshot: Input.asOptionalInput<String>(map['snapshot']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceSnapshotEncryptionKey:
          Input.asOptionalInput<RegionDiskSourceSnapshotEncryptionKey>(
              map['sourceSnapshotEncryptionKey']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
