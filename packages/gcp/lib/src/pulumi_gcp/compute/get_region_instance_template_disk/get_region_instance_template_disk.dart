// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_template_disk_disk_encryption_key/get_region_instance_template_disk_disk_encryption_key.dart';
import '../get_region_instance_template_disk_source_image_encryption_key/get_region_instance_template_disk_source_image_encryption_key.dart';
import '../get_region_instance_template_disk_source_snapshot_encryption_key/get_region_instance_template_disk_source_snapshot_encryption_key.dart';

class GetRegionInstanceTemplateDisk {
  /// The architecture of the image. Allowed values are ARM64 or X86_64.
  final String architecture;

  /// Whether or not the disk should be auto-deleted.
  /// This defaults to true.
  final bool autoDelete;

  /// Indicates that this is a boot disk.
  final bool boot;

  /// A unique device name that is reflected into the
  /// /dev/  tree of a Linux operating system running within the instance. If not
  /// specified, the server chooses a default device name to apply to this disk.
  final String deviceName;

  /// Encrypts or decrypts a disk using a customer-supplied encryption key.
  final List<GetRegionInstanceTemplateDiskDiskEncryptionKey> diskEncryptionKeys;

  /// Name of the disk. When not provided, this defaults
  /// to the name of the instance.
  final String diskName;

  /// The size of the image in gigabytes. If not
  /// specified, it will inherit the size of its base image. For SCRATCH disks,
  /// the size must be exactly 375GB.
  final int diskSizeGb;

  /// The GCE disk type. Such as `"pd-ssd"`, `"local-ssd"`,
  /// `"pd-balanced"` or `"pd-standard"`.
  final String diskType;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images.
  final List<String> guestOsFeatures;

  /// Specifies the disk interface to use for attaching this disk,
  /// which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI
  /// and the request will fail if you attempt to attach a persistent disk in any other format
  /// than SCSI. Local SSDs can use either NVME or SCSI.
  final String interface;

  /// (Optional) A set of ket/value label pairs to assign to disk created from
  /// this template
  final Map<String, String> labels;

  /// The mode in which to attach this disk, either READ_WRITE
  /// or READ_ONLY. If you are attaching or creating a boot disk, this must
  /// read-write mode.
  final String mode;

  /// Indicates how many IOPS to provision for the disk. This
  /// sets the number of I/O operations per second that the disk can handle.
  /// Values must be between 10,000 and 120,000. For more details, see the
  /// [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
  final int provisionedIops;

  /// Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  final int provisionedThroughput;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// (Optional) -- A list of short names of resource policies to attach to this disk for automatic snapshot creations. Currently a max of 1 resource policy is supported.
  final List<String> resourcePolicies;

  /// The name (**not self_link**)
  /// of the disk (such as those managed by <span pulumi-lang-nodejs="`gcp.compute.Disk`" pulumi-lang-dotnet="`gcp.compute.Disk`" pulumi-lang-go="`compute.Disk`" pulumi-lang-python="`compute.Disk`" pulumi-lang-yaml="`gcp.compute.Disk`" pulumi-lang-java="`gcp.compute.Disk`">`gcp.compute.Disk`</span>) to attach.
  /// > **Note:** Either <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> or <span pulumi-lang-nodejs="`sourceImage`" pulumi-lang-dotnet="`SourceImage`" pulumi-lang-go="`sourceImage`" pulumi-lang-python="`source_image`" pulumi-lang-yaml="`sourceImage`" pulumi-lang-java="`sourceImage`">`source_image`</span> is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String source;

  /// The image from which to
  /// initialize this disk. This can be one of: the image's <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>,
  /// `projects/{project}/global/images/{image}`,
  /// `projects/{project}/global/images/family/{family}`, `global/images/{image}`,
  /// `global/images/family/{family}`, `family/{family}`, `{project}/{family}`,
  /// `{project}/{image}`, `{family}`, or `{image}`.
  /// > **Note:** Either <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> or <span pulumi-lang-nodejs="`sourceImage`" pulumi-lang-dotnet="`SourceImage`" pulumi-lang-go="`sourceImage`" pulumi-lang-python="`source_image`" pulumi-lang-yaml="`sourceImage`" pulumi-lang-java="`sourceImage`">`source_image`</span> is **required** in a disk block unless the disk type is `local-ssd`. Check the API [docs](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/insert) for details.
  final String sourceImage;

  /// The customer-supplied encryption key of the source
  /// image. Required if the source image is protected by a
  /// customer-supplied encryption key.
  ///
  /// Instance templates do not store customer-supplied
  /// encryption keys, so you cannot create disks for
  /// instances in a managed instance group if the source
  /// images are encrypted with your own keys.
  final List<GetRegionInstanceTemplateDiskSourceImageEncryptionKey>
      sourceImageEncryptionKeys;

  /// The source snapshot to create this disk. When creating
  /// a new instance, one of initializeParams.sourceSnapshot,
  /// initializeParams.sourceImage, or disks.source is
  /// required except for local SSD.
  final String sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot.
  final List<GetRegionInstanceTemplateDiskSourceSnapshotEncryptionKey>
      sourceSnapshotEncryptionKeys;

  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final String type;

  GetRegionInstanceTemplateDisk({
    required this.architecture,
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.diskEncryptionKeys,
    required this.diskName,
    required this.diskSizeGb,
    required this.diskType,
    required this.guestOsFeatures,
    required this.interface,
    required this.labels,
    required this.mode,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.source,
    required this.sourceImage,
    required this.sourceImageEncryptionKeys,
    required this.sourceSnapshot,
    required this.sourceSnapshotEncryptionKeys,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['autoDelete'] = autoDelete;
    map['boot'] = boot;
    map['deviceName'] = deviceName;
    map['diskEncryptionKeys'] = Input.encodeList<
        GetRegionInstanceTemplateDiskDiskEncryptionKey,
        Map<String, dynamic>>(diskEncryptionKeys, (value) => value.toMap());
    map['diskName'] = diskName;
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['guestOsFeatures'] = guestOsFeatures;
    map['interface'] = interface;
    map['labels'] = labels;
    map['mode'] = mode;
    map['provisionedIops'] = provisionedIops;
    map['provisionedThroughput'] = provisionedThroughput;
    map['resourceManagerTags'] = resourceManagerTags;
    map['resourcePolicies'] = resourcePolicies;
    map['source'] = source;
    map['sourceImage'] = sourceImage;
    map['sourceImageEncryptionKeys'] = Input.encodeList<
            GetRegionInstanceTemplateDiskSourceImageEncryptionKey,
            Map<String, dynamic>>(
        sourceImageEncryptionKeys, (value) => value.toMap());
    map['sourceSnapshot'] = sourceSnapshot;
    map['sourceSnapshotEncryptionKeys'] = Input.encodeList<
            GetRegionInstanceTemplateDiskSourceSnapshotEncryptionKey,
            Map<String, dynamic>>(
        sourceSnapshotEncryptionKeys, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetRegionInstanceTemplateDisk.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateDisk(
      architecture: map['architecture'] as String,
      autoDelete: map['autoDelete'] as bool,
      boot: map['boot'] as bool,
      deviceName: map['deviceName'] as String,
      diskEncryptionKeys:
          Input.decodeList<GetRegionInstanceTemplateDiskDiskEncryptionKey>(
              map['diskEncryptionKeys'],
              (value) => GetRegionInstanceTemplateDiskDiskEncryptionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskName: map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      guestOsFeatures: (map['guestOsFeatures'] as List).cast<String>(),
      interface: map['interface'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mode: map['mode'] as String,
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      source: map['source'] as String,
      sourceImage: map['sourceImage'] as String,
      sourceImageEncryptionKeys: Input.decodeList<
              GetRegionInstanceTemplateDiskSourceImageEncryptionKey>(
          map['sourceImageEncryptionKeys'],
          (value) =>
              GetRegionInstanceTemplateDiskSourceImageEncryptionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceSnapshot: map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKeys: Input.decodeList<
              GetRegionInstanceTemplateDiskSourceSnapshotEncryptionKey>(
          map['sourceSnapshotEncryptionKeys'],
          (value) =>
              GetRegionInstanceTemplateDiskSourceSnapshotEncryptionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
