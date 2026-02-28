// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_initialize_params_architecture_compute_beta.dart';
import 'attached_disk_initialize_params_on_update_action_compute_beta.dart';
import 'customer_encryption_key_compute_beta.dart';
import 'guest_os_feature_compute_beta.dart';

/// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This field is persisted and returned for instanceTemplate and not returned in the context of instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
class AttachedDiskInitializeParamsComputeBeta {
  /// The architecture of the attached disk. Valid values are arm64 or x86_64.
  final AttachedDiskInitializeParamsArchitectureComputeBeta? architecture;

  /// An optional description. Provide this property when creating the disk.
  final String? description;

  /// Specifies the disk name. If not specified, the default is to use the name of the instance. If a disk with the same name already exists in the given region, the existing disk is attached to the new instance and the new disk is not created.
  final String? diskName;

  /// Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  final String? diskSizeGb;

  /// Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/pd-standard For a full list of acceptable values, see Persistent disk types. If you specify this field when creating a VM, you can provide either the full or partial URL. For example, the following values are valid: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/diskType - projects/project/zones/zone/diskTypes/diskType - zones/zone/diskTypes/diskType If you specify this field when creating or updating an instance template or all-instances configuration, specify the type of the disk, not the URL. For example: pd-standard.
  final String? diskType;

  /// Whether this disk is using confidential compute mode.
  final bool? enableConfidentialCompute;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options. Guest OS features are applied by merging initializeParams.guestOsFeatures and disks.guestOsFeatures
  final List<GuestOsFeatureComputeBeta>? guestOsFeatures;

  /// Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  final Map<String, String>? labels;

  /// A list of publicly visible licenses. Reserved for Google's use.
  final List<String>? licenses;

  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final bool? multiWriter;

  /// Specifies which action to take on instance update with this disk. Default is to use the existing disk.
  final AttachedDiskInitializeParamsOnUpdateActionComputeBeta? onUpdateAction;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  final String? provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  final String? provisionedThroughput;

  /// Required for each regional disk associated with the instance. Specify the URLs of the zones where the disk should be replicated to. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  final List<String>? replicaZones;

  /// Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String>? resourceManagerTags;

  /// Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  final List<String>? resourcePolicies;

  /// The source image to create this disk. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family If the source image is deleted later, this field will not be set.
  final String? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. InstanceTemplate and InstancePropertiesPatch do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  final CustomerEncryptionKeyComputeBeta? sourceImageEncryptionKey;

  /// The source instant-snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceInstantSnapshot initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: us-central1-a/instantSnapshots/my-backup If the source instant-snapshot is deleted later, this field will not be set.
  final String? sourceInstantSnapshot;

  /// The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: global/snapshots/my-backup If the source snapshot is deleted later, this field will not be set.
  final String? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot.
  final CustomerEncryptionKeyComputeBeta? sourceSnapshotEncryptionKey;

  /// Creates a new [AttachedDiskInitializeParamsComputeBeta].
  /// [architecture] The architecture of the attached disk. Valid values are arm64 or x86_64.
  /// [description] An optional description. Provide this property when creating the disk.
  /// [diskName] Specifies the disk name. If not specified, the default is to use the name of the instance. If a disk with the same name already exists in the given region, the existing disk is attached to the new instance and the new disk is not created.
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  /// [diskType] Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/pd-standard For a full list of acceptable values, see Persistent disk types. If you specify this field when creating a VM, you can provide either the full or partial URL. For example, the following values are valid: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/diskType - projects/project/zones/zone/diskTypes/diskType - zones/zone/diskTypes/diskType If you specify this field when creating or updating an instance template or all-instances configuration, specify the type of the disk, not the URL. For example: pd-standard.
  /// [enableConfidentialCompute] Whether this disk is using confidential compute mode.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options. Guest OS features are applied by merging initializeParams.guestOsFeatures and disks.guestOsFeatures
  /// [labels] Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  /// [licenses] A list of publicly visible licenses. Reserved for Google's use.
  /// [multiWriter] Indicates whether or not the disk can be read/write attached to more than one instance.
  /// [onUpdateAction] Specifies which action to take on instance update with this disk. Default is to use the existing disk.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  /// [replicaZones] Required for each regional disk associated with the instance. Specify the URLs of the zones where the disk should be replicated to. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  /// [resourceManagerTags] Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  /// [sourceImage] The source image to create this disk. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family If the source image is deleted later, this field will not be set.
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. InstanceTemplate and InstancePropertiesPatch do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  /// [sourceInstantSnapshot] The source instant-snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceInstantSnapshot initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: us-central1-a/instantSnapshots/my-backup If the source instant-snapshot is deleted later, this field will not be set.
  /// [sourceSnapshot] The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required except for local SSD. To create a disk with a snapshot that you created, specify the snapshot name in the following format: global/snapshots/my-backup If the source snapshot is deleted later, this field will not be set.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot.
  AttachedDiskInitializeParamsComputeBeta({
    this.architecture,
    this.description,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.enableConfidentialCompute,
    this.guestOsFeatures,
    this.labels,
    this.licenses,
    this.multiWriter,
    this.onUpdateAction,
    this.provisionedIops,
    this.provisionedThroughput,
    this.replicaZones,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceInstantSnapshot,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue.value;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
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
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = pulumi.Input.encodeList<
          GuestOsFeatureComputeBeta,
          Map<String, dynamic>>(guestOsFeaturesValue, (value) => value.toMap());
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
    final onUpdateActionValue = onUpdateAction;
    if (onUpdateActionValue != null) {
      map['onUpdateAction'] = onUpdateActionValue.value;
    }
    final provisionedIopsValue = provisionedIops;
    if (provisionedIopsValue != null) {
      map['provisionedIops'] = provisionedIopsValue;
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = provisionedThroughputValue;
    }
    final replicaZonesValue = replicaZones;
    if (replicaZonesValue != null) {
      map['replicaZones'] = replicaZonesValue;
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = sourceImageEncryptionKeyValue.toMap();
    }
    final sourceInstantSnapshotValue = sourceInstantSnapshot;
    if (sourceInstantSnapshotValue != null) {
      map['sourceInstantSnapshot'] = sourceInstantSnapshotValue;
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
    return map;
  }

  factory AttachedDiskInitializeParamsComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AttachedDiskInitializeParamsComputeBeta(
      architecture: map['architecture'] == null
          ? null
          : AttachedDiskInitializeParamsArchitectureComputeBeta.fromValue(
              map['architecture'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
      guestOsFeatures: map['guestOsFeatures'] == null
          ? null
          : pulumi.Input.decodeList<GuestOsFeatureComputeBeta>(
              map['guestOsFeatures'],
              (value) => GuestOsFeatureComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      licenses: map['licenses'] == null
          ? null
          : (map['licenses'] as List).cast<String>(),
      multiWriter:
          map['multiWriter'] == null ? null : map['multiWriter'] as bool,
      onUpdateAction: map['onUpdateAction'] == null
          ? null
          : AttachedDiskInitializeParamsOnUpdateActionComputeBeta.fromValue(
              map['onUpdateAction'] as String),
      provisionedIops: map['provisionedIops'] == null
          ? null
          : map['provisionedIops'] as String,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as String,
      replicaZones: map['replicaZones'] == null
          ? null
          : (map['replicaZones'] as List).cast<String>(),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as List).cast<String>(),
      sourceImage:
          map['sourceImage'] == null ? null : map['sourceImage'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeBeta.fromMap(
              (map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] == null
          ? null
          : map['sourceInstantSnapshot'] as String,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeBeta.fromMap(
              (map['sourceSnapshotEncryptionKey'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
