// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../disk_async_primary_disk/disk_async_primary_disk.dart';
import '../disk_disk_encryption_key/disk_disk_encryption_key.dart';
import '../disk_guest_os_feature/disk_guest_os_feature.dart';
import '../disk_params/disk_params.dart';
import '../disk_source_image_encryption_key/disk_source_image_encryption_key.dart';
import '../disk_source_snapshot_encryption_key/disk_source_snapshot_encryption_key.dart';

/// The set of arguments for Disk.
class DiskArgs {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  final Input<String>? accessMode;

  /// The architecture of the disk. Values include `X86_64`, `ARM64`.
  final Input<String>? architecture;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<DiskAsyncPrimaryDisk>? asyncPrimaryDisk;

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
  final Input<DiskDiskEncryptionKey>? diskEncryptionKey;

  /// Whether this disk is using confidential compute mode.
  /// Note: Only supported on hyperdisk skus, disk_encryption_key is required when setting to true
  final Input<bool>? enableConfidentialCompute;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  final Input<List<DiskGuestOsFeature>>? guestOsFeatures;

  /// The image from which to initialize this disk. This can be
  /// one of: the image's `self_link`, `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`. If referred by family, the
  /// images names must include the family name. If they don't, use the
  /// [gcp.compute.Image data source](https://www.terraform.io/docs/providers/google/d/compute_image.html).
  /// For instance, the image `centos-6-v20180104` includes its family name `centos-6`.
  /// These images can be referred by family name here.
  final Input<String>? image;

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

  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final Input<bool>? multiWriter;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final Input<DiskParams>? params;

  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  final Input<int>? physicalBlockSizeBytes;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Indicates how many IOPS must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  final Input<int>? provisionedIops;

  /// Indicates how much Throughput must be provisioned for the disk.
  /// Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
  /// allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it
  final Input<int>? provisionedThroughput;

  /// Resource policies applied to this disk for automatic snapshot creations.
  /// ~>**NOTE** This value does not support updating the
  /// resource policy, as resource policies can not be updated more than
  /// one at a time. Use
  /// `gcp.compute.DiskResourcePolicyAttachment`
  /// to allow for updating the resource policy attached to the disk.
  final Input<List<String>>? resourcePolicies;

  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the `image` or
  /// `snapshot` parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with `image` or `snapshot`,
  /// the value must not be less than the size of the image
  /// or the size of the snapshot.
  /// ~>**NOTE** If you change the size, the provider updates the disk size
  /// if upsizing is detected but recreates the disk if downsizing is requested.
  /// You can add `lifecycle.prevent_destroy` in the config to prevent destroying
  /// and recreating.
  final Input<int>? size;

  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. If the snapshot is in another
  /// project than this disk, you must supply a full URL. For example, the
  /// following are valid values:
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

  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final Input<DiskSourceImageEncryptionKey>? sourceImageEncryptionKey;

  /// The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `projects/project/zones/zone/instantSnapshots/instantSnapshot`
  /// * `zones/zone/instantSnapshots/instantSnapshot`
  final Input<String>? sourceInstantSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final Input<DiskSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;

  /// The full Google Cloud Storage URI where the disk image is stored.
  /// This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk.
  /// Valid URIs may start with gs:// or https://storage.googleapis.com/.
  /// This flag is not optimized for creating multiple disks from a source storage object.
  /// To create many disks from a source storage object, use gcloud compute images import instead.
  final Input<String>? sourceStorageObject;

  /// The URL or the name of the storage pool in which the new disk is created.
  /// For example:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /projects/{project}/zones/{zone}/storagePools/{storagePool}
  /// * /zones/{zone}/storagePools/{storagePool}
  /// * /{storagePool}
  final Input<String>? storagePool;

  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  final Input<String>? type;

  /// A reference to the zone where the disk resides.
  final Input<String>? zone;

  DiskArgs({
    this.accessMode,
    this.architecture,
    this.asyncPrimaryDisk,
    this.createSnapshotBeforeDestroy,
    this.createSnapshotBeforeDestroyPrefix,
    this.description,
    this.diskEncryptionKey,
    this.enableConfidentialCompute,
    this.guestOsFeatures,
    this.image,
    this.interface,
    this.labels,
    this.licenses,
    this.multiWriter,
    this.name,
    this.params,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourcePolicies,
    this.size,
    this.snapshot,
    this.sourceDisk,
    this.sourceImageEncryptionKey,
    this.sourceInstantSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceStorageObject,
    this.storagePool,
    this.type,
    this.zone,
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
    final asyncPrimaryDiskValue = asyncPrimaryDisk;
    if (asyncPrimaryDiskValue != null) {
      map['asyncPrimaryDisk'] = Input.mapOptionalInputValue<
              DiskAsyncPrimaryDisk, Map<String, dynamic>>(
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
              DiskDiskEncryptionKey, Map<String, dynamic>>(
          diskEncryptionKeyValue, (value) => value.toMap());
    }
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = Input.mapOptionalInputValue<
              List<DiskGuestOsFeature>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) => Input.encodeList<DiskGuestOsFeature, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
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
    final multiWriterValue = multiWriter;
    if (multiWriterValue != null) {
      map['multiWriter'] = multiWriterValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<DiskParams, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
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
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
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
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = Input.mapOptionalInputValue<
              DiskSourceImageEncryptionKey, Map<String, dynamic>>(
          sourceImageEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceInstantSnapshotValue = sourceInstantSnapshot;
    if (sourceInstantSnapshotValue != null) {
      map['sourceInstantSnapshot'] = sourceInstantSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = Input.mapOptionalInputValue<
              DiskSourceSnapshotEncryptionKey, Map<String, dynamic>>(
          sourceSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceStorageObjectValue = sourceStorageObject;
    if (sourceStorageObjectValue != null) {
      map['sourceStorageObject'] = sourceStorageObjectValue;
    }
    final storagePoolValue = storagePool;
    if (storagePoolValue != null) {
      map['storagePool'] = storagePoolValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory DiskArgs.fromMap(Map<String, dynamic> map) {
    return DiskArgs(
      accessMode: Input.asOptionalInput<String>(map['accessMode']),
      architecture: Input.asOptionalInput<String>(map['architecture']),
      asyncPrimaryDisk:
          Input.asOptionalInput<DiskAsyncPrimaryDisk>(map['asyncPrimaryDisk']),
      createSnapshotBeforeDestroy:
          Input.asOptionalInput<bool>(map['createSnapshotBeforeDestroy']),
      createSnapshotBeforeDestroyPrefix: Input.asOptionalInput<String>(
          map['createSnapshotBeforeDestroyPrefix']),
      description: Input.asOptionalInput<String>(map['description']),
      diskEncryptionKey: Input.asOptionalInput<DiskDiskEncryptionKey>(
          map['diskEncryptionKey']),
      enableConfidentialCompute:
          Input.asOptionalInput<bool>(map['enableConfidentialCompute']),
      guestOsFeatures: Input.asOptionalInput<List<DiskGuestOsFeature>>(
          map['guestOsFeatures']),
      image: Input.asOptionalInput<String>(map['image']),
      interface: Input.asOptionalInput<String>(map['interface']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenses: Input.asOptionalInput<List<String>>(map['licenses']),
      multiWriter: Input.asOptionalInput<bool>(map['multiWriter']),
      name: Input.asOptionalInput<String>(map['name']),
      params: Input.asOptionalInput<DiskParams>(map['params']),
      physicalBlockSizeBytes:
          Input.asOptionalInput<int>(map['physicalBlockSizeBytes']),
      project: Input.asOptionalInput<String>(map['project']),
      provisionedIops: Input.asOptionalInput<int>(map['provisionedIops']),
      provisionedThroughput:
          Input.asOptionalInput<int>(map['provisionedThroughput']),
      resourcePolicies:
          Input.asOptionalInput<List<String>>(map['resourcePolicies']),
      size: Input.asOptionalInput<int>(map['size']),
      snapshot: Input.asOptionalInput<String>(map['snapshot']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceImageEncryptionKey:
          Input.asOptionalInput<DiskSourceImageEncryptionKey>(
              map['sourceImageEncryptionKey']),
      sourceInstantSnapshot:
          Input.asOptionalInput<String>(map['sourceInstantSnapshot']),
      sourceSnapshotEncryptionKey:
          Input.asOptionalInput<DiskSourceSnapshotEncryptionKey>(
              map['sourceSnapshotEncryptionKey']),
      sourceStorageObject:
          Input.asOptionalInput<String>(map['sourceStorageObject']),
      storagePool: Input.asOptionalInput<String>(map['storagePool']),
      type: Input.asOptionalInput<String>(map['type']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
