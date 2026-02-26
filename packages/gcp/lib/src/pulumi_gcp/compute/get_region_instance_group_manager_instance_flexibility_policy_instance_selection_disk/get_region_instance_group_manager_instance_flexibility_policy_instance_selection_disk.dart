// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_disk_encryption_key/get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_disk_encryption_key.dart';
import '../get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_label/get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_label.dart';
import '../get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_resource_manager_tag/get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_resource_manager_tag.dart';
import '../get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_image_encryption_key/get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_image_encryption_key.dart';
import '../get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_snapshot_encryption_key/get_region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_snapshot_encryption_key.dart';

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk {
  /// The architecture of the image. Allowed values are ARM64 or X86_64.
  final String architecture;

  /// Whether or not the disk should be auto-deleted. This defaults to true.
  final bool autoDelete;

  /// Indicates that this is a boot disk. This defaults to false.
  final bool boot;

  /// A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk.
  final String deviceName;

  /// Encrypts or decrypts a disk using a customer-supplied encryption key.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey>
      diskEncryptionKeys;

  /// Name of the disk. When not provided, this defaults to the name of the instance.
  final String diskName;

  /// The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB.
  final int diskSizeGb;

  /// The Google Compute Engine disk type. Such as "pd-ssd", "local-ssd", "pd-balanced" or "pd-standard".
  final String diskType;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images.
  final List<String> guestOsFeatures;

  /// Specifies the disk interface to use for attaching this disk.
  final String interface;

  /// A set of key/value label pairs to assign to disks.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>
      labels;

  /// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode.
  final String mode;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  final int provisionedIops;

  /// Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  final int provisionedThroughput;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>
      resourceManagerTags;

  /// A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported.
  final List<String> resourcePolicies;

  /// The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. > Note: Either source or<span pulumi-lang-nodejs=" sourceImage " pulumi-lang-dotnet=" SourceImage " pulumi-lang-go=" sourceImage " pulumi-lang-python=" source_image " pulumi-lang-yaml=" sourceImage " pulumi-lang-java=" sourceImage "> source_image </span>is required when creating a new instance except for when creating a local SSD.
  final String source;

  /// The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. > Note: Either source or<span pulumi-lang-nodejs=" sourceImage " pulumi-lang-dotnet=" SourceImage " pulumi-lang-go=" sourceImage " pulumi-lang-python=" source_image " pulumi-lang-yaml=" sourceImage " pulumi-lang-java=" sourceImage "> source_image </span>is required when creating a new instance except for when creating a local SSD.
  final String sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. Instance templates do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey>
      sourceImageEncryptionKeys;

  /// The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot, initializeParams.sourceImage, or disks.source is required except for local SSD.
  final String sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot.
  final List<
          GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey>
      sourceSnapshotEncryptionKeys;

  /// The type of Google Compute Engine disk, can be either "SCRATCH" or "PERSISTENT".
  final String type;

  GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk({
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
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey,
        Map<String, dynamic>>(diskEncryptionKeys, (value) => value.toMap());
    map['diskName'] = diskName;
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['guestOsFeatures'] = guestOsFeatures;
    map['interface'] = interface;
    map['labels'] = Input.encodeList<
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel,
        Map<String, dynamic>>(labels, (value) => value.toMap());
    map['mode'] = mode;
    map['provisionedIops'] = provisionedIops;
    map['provisionedThroughput'] = provisionedThroughput;
    map['resourceManagerTags'] = Input.encodeList<
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag,
        Map<String, dynamic>>(resourceManagerTags, (value) => value.toMap());
    map['resourcePolicies'] = resourcePolicies;
    map['source'] = source;
    map['sourceImage'] = sourceImage;
    map['sourceImageEncryptionKeys'] = Input.encodeList<
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey,
        Map<String,
            dynamic>>(sourceImageEncryptionKeys, (value) => value.toMap());
    map['sourceSnapshot'] = sourceSnapshot;
    map['sourceSnapshotEncryptionKeys'] = Input.encodeList<
        GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey,
        Map<String,
            dynamic>>(sourceSnapshotEncryptionKeys, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk(
      architecture: map['architecture'] as String,
      autoDelete: map['autoDelete'] as bool,
      boot: map['boot'] as bool,
      deviceName: map['deviceName'] as String,
      diskEncryptionKeys: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey>(
          map['diskEncryptionKeys'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey
                  .fromMap((value as Map).cast<String, dynamic>())),
      diskName: map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      guestOsFeatures: (map['guestOsFeatures'] as List).cast<String>(),
      interface: map['interface'] as String,
      labels: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>(
          map['labels'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel
                  .fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      resourceManagerTags: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>(
          map['resourceManagerTags'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag
                  .fromMap((value as Map).cast<String, dynamic>())),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      source: map['source'] as String,
      sourceImage: map['sourceImage'] as String,
      sourceImageEncryptionKeys: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey>(
          map['sourceImageEncryptionKeys'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey
                  .fromMap((value as Map).cast<String, dynamic>())),
      sourceSnapshot: map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKeys: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey>(
          map['sourceSnapshotEncryptionKeys'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey
                  .fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
