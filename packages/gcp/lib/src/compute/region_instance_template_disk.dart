// ignore_for_file: unused_element, unnecessary_cast

import 'region_instance_template_disk_disk_encryption_key.dart';
import 'region_instance_template_disk_source_image_encryption_key.dart';
import 'region_instance_template_disk_source_snapshot_encryption_key.dart';

class RegionInstanceTemplateDisk {
  /// The architecture of the attached disk. Valid values are `ARM64` or `x86_64`.
  final String? architecture;
  /// Whether or not the disk should be auto-deleted.
  /// This defaults to true.
  final bool? autoDelete;
  /// Indicates that this is a boot disk.
  final bool? boot;
  /// A unique device name that is reflected into the
  /// /dev/  tree of a Linux operating system running within the instance. If not
  /// specified, the server chooses a default device name to apply to this disk.
  final String? deviceName;
  /// Encrypts or decrypts a disk using a customer-supplied encryption key.
  ///
  /// If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key.
  ///
  /// If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance.
  ///
  /// If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.
  ///
  /// Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group. Structure documented below.
  final RegionInstanceTemplateDiskDiskEncryptionKey? diskEncryptionKey;
  /// Name of the disk. When not provided, this defaults
  /// to the name of the instance.
  final String? diskName;
  /// The size of the image in gigabytes. If not
  /// specified, it will inherit the size of its base image. For SCRATCH disks,
  /// the size must be exactly 375GB.
  final int? diskSizeGb;
  /// The GCE disk type. Such as `"pd-ssd"`, `"local-ssd"`,
  /// `"pd-balanced"` or `"pd-standard"`.
  final String? diskType;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  final List<String>? guestOsFeatures;
  /// Specifies the disk interface to use for attaching this disk,
  /// which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI
  /// and the request will fail if you attempt to attach a persistent disk in any other format
  /// than SCSI. Local SSDs can use either NVME or SCSI.
  final String? interface;
  /// A set of ket/value label pairs to assign to disk created from
  /// this template
  final Map<String, String>? labels;
  /// The mode in which to attach this disk, either READ_WRITE
  /// or READ_ONLY. If you are attaching or creating a boot disk, this must
  /// read-write mode.
  final String? mode;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  final int? provisionedIops;
  /// Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  final int? provisionedThroughput;
  /// A set of key/value resource manager tag pairs to bind to this disk. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final Map<String, String>? resourceManagerTags;
  /// - A list (short name or id) of resource policies to attach to this disk for automatic snapshot creations. Currently a max of 1 resource policy is supported.
  final String? resourcePolicies;
  /// The name (**not self_link**)
  /// of the disk (such as those managed by `gcp.compute.Disk`) to attach.
  /// > **Note:** Either `source`, `source_image`, or `source_snapshot` is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String? source;
  /// The image from which to
  /// initialize this disk. This can be one of: the image's `self_link`,
  /// `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`.
  /// > **Note:** Either `source`, `source_image`, or `source_snapshot` is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String? sourceImage;
  /// The customer-supplied encryption
  /// key of the source image. Required if the source image is protected by a
  /// customer-supplied encryption key.
  ///
  /// Instance templates do not store customer-supplied encryption keys, so you
  /// cannot create disks for instances in a managed instance group if the source
  /// images are encrypted with your own keys. Structure
  /// documented below.
  final RegionInstanceTemplateDiskSourceImageEncryptionKey? sourceImageEncryptionKey;
  /// The source snapshot to create this disk.
  /// > **Note:** Either `source`, `source_image`, or `source_snapshot` is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String? sourceSnapshot;
  /// The customer-supplied encryption
  /// key of the source snapshot. Structure
  /// documented below.
  final RegionInstanceTemplateDiskSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey;
  /// The type of GCE disk, can be either `"SCRATCH"` or
  /// `"PERSISTENT"`.
  final String? type;

  /// Creates a new [RegionInstanceTemplateDisk].
  /// [architecture] The architecture of the attached disk. Valid values are `ARM64` or `x86_64`.
  /// [autoDelete] Whether or not the disk should be auto-deleted.
  /// [boot] Indicates that this is a boot disk.
  /// [deviceName] A unique device name that is reflected into the
  /// [diskEncryptionKey] Encrypts or decrypts a disk using a customer-supplied encryption key.
  /// [diskName] Name of the disk. When not provided, this defaults
  /// [diskSizeGb] The size of the image in gigabytes. If not
  /// [diskType] The GCE disk type. Such as `"pd-ssd"`, `"local-ssd"`,
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  /// [interface] Specifies the disk interface to use for attaching this disk,
  /// [labels] A set of ket/value label pairs to assign to disk created from
  /// [mode] The mode in which to attach this disk, either READ_WRITE
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  /// [resourceManagerTags] A set of key/value resource manager tag pairs to bind to this disk. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// [resourcePolicies] - A list (short name or id) of resource policies to attach to this disk for automatic snapshot creations. Currently a max of 1 resource policy is supported.
  /// [source] The name (**not self_link**)
  /// [sourceImage] The image from which to
  /// [sourceImageEncryptionKey] The customer-supplied encryption
  /// [sourceSnapshot] The source snapshot to create this disk.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption
  /// [type] The type of GCE disk, can be either `"SCRATCH"` or
  RegionInstanceTemplateDisk({
    this.architecture,
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskEncryptionKey,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.guestOsFeatures,
    this.interface,
    this.labels,
    this.mode,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.source,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'autoDelete': ?autoDelete,
      'boot': ?boot,
      'deviceName': ?deviceName,
      'diskEncryptionKey': ?diskEncryptionKey == null ? null : diskEncryptionKey!.toMap(),
      'diskName': ?diskName,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'guestOsFeatures': ?guestOsFeatures,
      'interface': ?interface,
      'labels': ?labels,
      'mode': ?mode,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'source': ?source,
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?sourceImageEncryptionKey == null ? null : sourceImageEncryptionKey!.toMap(),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?sourceSnapshotEncryptionKey == null ? null : sourceSnapshotEncryptionKey!.toMap(),
      'type': ?type,
    };
  }

  factory RegionInstanceTemplateDisk.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateDisk(
      architecture: map['architecture'] == null ? null : map['architecture'] as String,
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
      boot: map['boot'] == null ? null : map['boot'] as bool,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : RegionInstanceTemplateDiskDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (map['guestOsFeatures'] as List).cast<String>(),
      interface: map['interface'] == null ? null : map['interface'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null ? null : map['provisionedThroughput'] as int,
      resourceManagerTags: map['resourceManagerTags'] == null ? null : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null ? null : map['resourcePolicies'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceImage: map['sourceImage'] == null ? null : map['sourceImage'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : RegionInstanceTemplateDiskSourceImageEncryptionKey.fromMap((map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : RegionInstanceTemplateDiskSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

