// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'customer_encryption_key_response2.dart';
import 'guest_os_feature_response2.dart';

/// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This field is persisted and returned for instanceTemplate and not returned in the context of instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
class AttachedDiskInitializeParamsResponse2 {
  /// The architecture of the attached disk. Valid values are arm64 or x86_64.
  final String architecture;

  /// An optional description. Provide this property when creating the disk.
  final String description;

  /// Specifies the disk name. If not specified, the default is to use the name of the instance. If a disk with the same name already exists in the given region, the existing disk is attached to the new instance and the new disk is not created.
  final String diskName;

  /// Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  final String diskSizeGb;

  /// Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/pd-standard For a full list of acceptable values, see Persistent disk types. If you specify this field when creating a VM, you can provide either the full or partial URL. For example, the following values are valid: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/diskType - projects/project/zones/zone/diskTypes/diskType - zones/zone/diskTypes/diskType If you specify this field when creating or updating an instance template or all-instances configuration, specify the type of the disk, not the URL. For example: pd-standard.
  final String diskType;

  /// Whether this disk is using confidential compute mode.
  final bool enableConfidentialCompute;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options. Guest OS features are applied by merging initializeParams.guestOsFeatures and disks.guestOsFeatures
  final List<GuestOsFeatureResponse2> guestOsFeatures;

  /// Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  final Map<String, String> labels;

  /// A list of publicly visible licenses. Reserved for Google's use.
  final List<String> licenses;

  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final bool multiWriter;

  /// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
  final String onUpdateAction;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  final String provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  final String provisionedThroughput;

  /// Required for each regional disk associated with the instance. Specify the URLs of the zones where the disk should be replicated to. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  final List<String> replicaZones;

  /// Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  final List<String> resourcePolicies;

  /// The source image to create this disk. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family If the source image is deleted later, this field will not be set.
  final String sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. InstanceTemplate and InstancePropertiesPatch do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  final CustomerEncryptionKeyResponse2 sourceImageEncryptionKey;

  /// The source instant-snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceInstantSnapshot initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: us-central1-a/instantSnapshots/my-backup If the source instant-snapshot is deleted later, this field will not be set.
  final String sourceInstantSnapshot;

  /// The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: global/snapshots/my-backup If the source snapshot is deleted later, this field will not be set.
  final String sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot.
  final CustomerEncryptionKeyResponse2 sourceSnapshotEncryptionKey;

  AttachedDiskInitializeParamsResponse2({
    required this.architecture,
    required this.description,
    required this.diskName,
    required this.diskSizeGb,
    required this.diskType,
    required this.enableConfidentialCompute,
    required this.guestOsFeatures,
    required this.labels,
    required this.licenses,
    required this.multiWriter,
    required this.onUpdateAction,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.replicaZones,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.sourceImage,
    required this.sourceImageEncryptionKey,
    required this.sourceInstantSnapshot,
    required this.sourceSnapshot,
    required this.sourceSnapshotEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['description'] = description;
    map['diskName'] = diskName;
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    map['guestOsFeatures'] =
        Input.encodeList<GuestOsFeatureResponse2, Map<String, dynamic>>(
            guestOsFeatures, (value) => value.toMap());
    map['labels'] = labels;
    map['licenses'] = licenses;
    map['multiWriter'] = multiWriter;
    map['onUpdateAction'] = onUpdateAction;
    map['provisionedIops'] = provisionedIops;
    map['provisionedThroughput'] = provisionedThroughput;
    map['replicaZones'] = replicaZones;
    map['resourceManagerTags'] = resourceManagerTags;
    map['resourcePolicies'] = resourcePolicies;
    map['sourceImage'] = sourceImage;
    map['sourceImageEncryptionKey'] = sourceImageEncryptionKey.toMap();
    map['sourceInstantSnapshot'] = sourceInstantSnapshot;
    map['sourceSnapshot'] = sourceSnapshot;
    map['sourceSnapshotEncryptionKey'] = sourceSnapshotEncryptionKey.toMap();
    return map;
  }

  factory AttachedDiskInitializeParamsResponse2.fromMap(
      Map<String, dynamic> map) {
    return AttachedDiskInitializeParamsResponse2(
      architecture: map['architecture'] as String,
      description: map['description'] as String,
      diskName: map['diskName'] as String,
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
      guestOsFeatures: Input.decodeList<GuestOsFeatureResponse2>(
          map['guestOsFeatures'],
          (value) => GuestOsFeatureResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      licenses: (map['licenses'] as List).cast<String>(),
      multiWriter: map['multiWriter'] as bool,
      onUpdateAction: map['onUpdateAction'] as String,
      provisionedIops: map['provisionedIops'] as String,
      provisionedThroughput: map['provisionedThroughput'] as String,
      replicaZones: (map['replicaZones'] as List).cast<String>(),
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      sourceImage: map['sourceImage'] as String,
      sourceImageEncryptionKey: CustomerEncryptionKeyResponse2.fromMap(
          (map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] as String,
      sourceSnapshot: map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: CustomerEncryptionKeyResponse2.fromMap(
          (map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}
