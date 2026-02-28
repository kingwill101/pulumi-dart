// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_disk_encryption_key.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_label.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_resource_manager_tag.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_image_encryption_key.dart';
import 'region_instance_group_manager_instance_flexibility_policy_instance_selection_disk_source_snapshot_encryption_key.dart';

class RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk {
  /// , The architecture of the image. Allowed values are ARM64 or X86_64.
  final String? architecture;
  /// , Whether or not the disk should be auto-deleted. This defaults to true.
  final bool? autoDelete;
  /// , Indicates that this is a boot disk. This defaults to false.
  final bool? boot;
  /// , A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk.
  final String? deviceName;
  /// , Encrypts or decrypts a disk using a customer-supplied encryption key.  Structure is documented below.
  final RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey? diskEncryptionKey;
  /// , Name of the disk. When not provided, this defaults to the name of the instance.
  final String? diskName;
  /// , The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB.
  final int? diskSizeGb;
  /// , The Google Compute Engine disk type. Such as "pd-ssd", "local-ssd", "pd-balanced" or "pd-standard".
  final String? diskType;
  /// , A list of features to enable on the guest operating system. Applicable only for bootable images.
  final List<String>? guestOsFeatures;
  /// , Specifies the disk interface to use for attaching this disk.
  final String? interface;
  /// , A set of key/value label pairs to assign to disks. Structure is documented below.
  final List<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>? labels;
  /// , The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode.
  final String? mode;
  /// , Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  final int? provisionedIops;
  /// , Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  final int? provisionedThroughput;
  /// , A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. Structure is documented below.
  final List<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>? resourceManagerTags;
  /// , A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported.
  final String? resourcePolicies;
  /// , The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. > Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  final String? source;
  /// , The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. > Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  final String? sourceImage;
  /// , The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. Instance templates do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys. Structure is documented below.
  final RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey? sourceImageEncryptionKey;
  /// , The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot, initializeParams.sourceImage, or disks.source is required except for local SSD.
  final String? sourceSnapshot;
  /// , The customer-supplied encryption key of the source snapshot. Structure is documented below.
  /// - - -
  final RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey;
  /// , The type of Google Compute Engine disk, can be either "SCRATCH" or "PERSISTENT".
  final String? type;

  /// Creates a new [RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk].
  /// [architecture] , The architecture of the image. Allowed values are ARM64 or X86_64.
  /// [autoDelete] , Whether or not the disk should be auto-deleted. This defaults to true.
  /// [boot] , Indicates that this is a boot disk. This defaults to false.
  /// [deviceName] , A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk.
  /// [diskEncryptionKey] , Encrypts or decrypts a disk using a customer-supplied encryption key.  Structure is documented below.
  /// [diskName] , Name of the disk. When not provided, this defaults to the name of the instance.
  /// [diskSizeGb] , The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB.
  /// [diskType] , The Google Compute Engine disk type. Such as "pd-ssd", "local-ssd", "pd-balanced" or "pd-standard".
  /// [guestOsFeatures] , A list of features to enable on the guest operating system. Applicable only for bootable images.
  /// [interface] , Specifies the disk interface to use for attaching this disk.
  /// [labels] , A set of key/value label pairs to assign to disks. Structure is documented below.
  /// [mode] , The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode.
  /// [provisionedIops] , Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk) or the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks) depending on the selected disk_type.
  /// [provisionedThroughput] , Indicates how much throughput to provision for the disk, in MB/s. This sets the amount of data that can be read or written from the disk per second. Values must greater than or equal to 1. For more details, see the [Hyperdisk documentation](https://cloud.google.com/compute/docs/disks/hyperdisks).
  /// [resourceManagerTags] , A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty. Structure is documented below.
  /// [resourcePolicies] , A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported.
  /// [source] , The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. > Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  /// [sourceImage] , The image from which to initialize this disk. This can be one of: the image's self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. > Note: Either source or source_image is required when creating a new instance except for when creating a local SSD.
  /// [sourceImageEncryptionKey] , The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. Instance templates do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys. Structure is documented below.
  /// [sourceSnapshot] , The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot, initializeParams.sourceImage, or disks.source is required except for local SSD.
  /// [sourceSnapshotEncryptionKey] , The customer-supplied encryption key of the source snapshot. Structure is documented below.
  /// [type] , The type of Google Compute Engine disk, can be either "SCRATCH" or "PERSISTENT".
  RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk({
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
      'labels': ?labels == null ? null : pulumi.Input.encodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'mode': ?mode,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourceManagerTags': ?resourceManagerTags == null ? null : pulumi.Input.encodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag, Map<String, dynamic>>(resourceManagerTags!, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'source': ?source,
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?sourceImageEncryptionKey == null ? null : sourceImageEncryptionKey!.toMap(),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?sourceSnapshotEncryptionKey == null ? null : sourceSnapshotEncryptionKey!.toMap(),
      'type': ?type,
    };
  }

  factory RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDisk(
      architecture: map['architecture'] == null ? null : map['architecture'] as String,
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
      boot: map['boot'] == null ? null : map['boot'] as bool,
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (map['guestOsFeatures'] as List).cast<String>(),
      interface: map['interface'] == null ? null : map['interface'] as String,
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel>(map['labels'], (value) => RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskLabel.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null ? null : map['provisionedThroughput'] as int,
      resourceManagerTags: map['resourceManagerTags'] == null ? null : pulumi.Input.decodeList<RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag>(map['resourceManagerTags'], (value) => RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskResourceManagerTag.fromMap((value as Map).cast<String, dynamic>())),
      resourcePolicies: map['resourcePolicies'] == null ? null : map['resourcePolicies'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceImage: map['sourceImage'] == null ? null : map['sourceImage'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceImageEncryptionKey.fromMap((map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : RegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

