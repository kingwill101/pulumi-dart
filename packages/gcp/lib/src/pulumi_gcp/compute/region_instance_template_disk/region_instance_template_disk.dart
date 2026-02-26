// ignore_for_file: unused_element, unnecessary_cast

import '../region_instance_template_disk_disk_encryption_key/region_instance_template_disk_disk_encryption_key.dart';
import '../region_instance_template_disk_source_image_encryption_key/region_instance_template_disk_source_image_encryption_key.dart';
import '../region_instance_template_disk_source_snapshot_encryption_key/region_instance_template_disk_source_snapshot_encryption_key.dart';

class RegionInstanceTemplateDisk {
  /// The architecture of the attached disk. Valid values are `ARM64` or <span pulumi-lang-nodejs="`x8664`" pulumi-lang-dotnet="`X8664`" pulumi-lang-go="`x8664`" pulumi-lang-python="`x86_64`" pulumi-lang-yaml="`x8664`" pulumi-lang-java="`x8664`">`x86_64`</span>.
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
  /// of the disk (such as those managed by <span pulumi-lang-nodejs="`gcp.compute.Disk`" pulumi-lang-dotnet="`gcp.compute.Disk`" pulumi-lang-go="`compute.Disk`" pulumi-lang-python="`compute.Disk`" pulumi-lang-yaml="`gcp.compute.Disk`" pulumi-lang-java="`gcp.compute.Disk`">`gcp.compute.Disk`</span>) to attach.
  /// > **Note:** Either <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`sourceImage`" pulumi-lang-dotnet="`SourceImage`" pulumi-lang-go="`sourceImage`" pulumi-lang-python="`source_image`" pulumi-lang-yaml="`sourceImage`" pulumi-lang-java="`sourceImage`">`source_image`</span>, or <span pulumi-lang-nodejs="`sourceSnapshot`" pulumi-lang-dotnet="`SourceSnapshot`" pulumi-lang-go="`sourceSnapshot`" pulumi-lang-python="`source_snapshot`" pulumi-lang-yaml="`sourceSnapshot`" pulumi-lang-java="`sourceSnapshot`">`source_snapshot`</span> is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String? source;

  /// The image from which to
  /// initialize this disk. This can be one of: the image's <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>,
  /// `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`.
  /// > **Note:** Either <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`sourceImage`" pulumi-lang-dotnet="`SourceImage`" pulumi-lang-go="`sourceImage`" pulumi-lang-python="`source_image`" pulumi-lang-yaml="`sourceImage`" pulumi-lang-java="`sourceImage`">`source_image`</span>, or <span pulumi-lang-nodejs="`sourceSnapshot`" pulumi-lang-dotnet="`SourceSnapshot`" pulumi-lang-go="`sourceSnapshot`" pulumi-lang-python="`source_snapshot`" pulumi-lang-yaml="`sourceSnapshot`" pulumi-lang-java="`sourceSnapshot`">`source_snapshot`</span> is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String? sourceImage;

  /// The customer-supplied encryption
  /// key of the source image. Required if the source image is protected by a
  /// customer-supplied encryption key.
  ///
  /// Instance templates do not store customer-supplied encryption keys, so you
  /// cannot create disks for instances in a managed instance group if the source
  /// images are encrypted with your own keys. Structure
  /// documented below.
  final RegionInstanceTemplateDiskSourceImageEncryptionKey?
      sourceImageEncryptionKey;

  /// The source snapshot to create this disk.
  /// > **Note:** Either <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`sourceImage`" pulumi-lang-dotnet="`SourceImage`" pulumi-lang-go="`sourceImage`" pulumi-lang-python="`source_image`" pulumi-lang-yaml="`sourceImage`" pulumi-lang-java="`sourceImage`">`source_image`</span>, or <span pulumi-lang-nodejs="`sourceSnapshot`" pulumi-lang-dotnet="`SourceSnapshot`" pulumi-lang-go="`sourceSnapshot`" pulumi-lang-python="`source_snapshot`" pulumi-lang-yaml="`sourceSnapshot`" pulumi-lang-java="`sourceSnapshot`">`source_snapshot`</span> is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String? sourceSnapshot;

  /// The customer-supplied encryption
  /// key of the source snapshot. Structure
  /// documented below.
  final RegionInstanceTemplateDiskSourceSnapshotEncryptionKey?
      sourceSnapshotEncryptionKey;

  /// The type of GCE disk, can be either `"SCRATCH"` or
  /// `"PERSISTENT"`.
  final String? type;

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
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue;
    }
    final autoDeleteValue = autoDelete;
    if (autoDeleteValue != null) {
      map['autoDelete'] = autoDeleteValue;
    }
    final bootValue = boot;
    if (bootValue != null) {
      map['boot'] = bootValue;
    }
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final diskEncryptionKeyValue = diskEncryptionKey;
    if (diskEncryptionKeyValue != null) {
      map['diskEncryptionKey'] = diskEncryptionKeyValue.toMap();
    }
    final diskNameValue = diskName;
    if (diskNameValue != null) {
      map['diskName'] = diskNameValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = guestOsFeaturesValue;
    }
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
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
      map['resourceManagerTags'] = resourceManagerTagsValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = sourceImageEncryptionKeyValue.toMap();
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] =
          sourceSnapshotEncryptionKeyValue.toMap();
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RegionInstanceTemplateDisk.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateDisk(
      architecture:
          map['architecture'] == null ? null : map['architecture'] as String,
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
      boot: map['boot'] == null ? null : map['boot'] as bool,
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null
          ? null
          : RegionInstanceTemplateDiskDiskEncryptionKey.fromMap(
              (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      guestOsFeatures: map['guestOsFeatures'] == null
          ? null
          : (map['guestOsFeatures'] as List).cast<String>(),
      interface: map['interface'] == null ? null : map['interface'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      mode: map['mode'] == null ? null : map['mode'] as String,
      provisionedIops:
          map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as int,
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : map['resourcePolicies'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceImage:
          map['sourceImage'] == null ? null : map['sourceImage'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null
          ? null
          : RegionInstanceTemplateDiskSourceImageEncryptionKey.fromMap(
              (map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null
          ? null
          : RegionInstanceTemplateDiskSourceSnapshotEncryptionKey.fromMap(
              (map['sourceSnapshotEncryptionKey'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
