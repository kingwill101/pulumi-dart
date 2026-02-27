// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_beta.dart';
import 'deprecation_status_compute_beta.dart';
import 'guest_os_feature_compute_beta.dart';
import 'image_architecture_compute_beta.dart';
import 'image_raw_disk_compute_beta.dart';
import 'image_source_type_compute_beta.dart';
import 'initial_state_config_compute_beta.dart';
import 'rollout_policy_compute_beta.dart';

/// The set of arguments for Image.
class ImageComputeBetaArgs {
  /// The architecture of the image. Valid values are ARM64 or X86_64.
  final pulumi.Input<ImageArchitectureComputeBeta>? architecture;

  /// Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  final pulumi.Input<String>? archiveSizeBytes;

  /// The deprecation status associated with this image.
  final pulumi.Input<DeprecationStatusComputeBeta>? deprecated;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Size of the image when restored onto a persistent disk (in GB).
  final pulumi.Input<String>? diskSizeGb;

  /// Whether this image is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// The name of the image family to which this image belongs. The image family name can be from a publicly managed image family provided by Compute Engine, or from a custom image family you create. For example, centos-stream-9 is a publicly available image family. For more information, see Image family best practices. When creating disks, you can specify an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
  final pulumi.Input<String>? family;

  /// Force image creation if true.
  final pulumi.Input<bool>? forceCreate;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. To see a list of available options, see the guestOSfeatures[].type parameter.
  final pulumi.Input<List<GuestOsFeatureComputeBeta>>? guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? imageEncryptionKey;

  /// Labels to apply to this image. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;

  /// Integer license codes indicating which licenses are attached to this image.
  final pulumi.Input<List<String>>? licenseCodes;

  /// Any applicable license URI.
  final pulumi.Input<List<String>>? licenses;

  /// A flag for marketplace VM disk created from the image, which is designed for marketplace VM disk to prevent the proprietary data on the disk from being accessed unwantedly. The flag will be inherited by the disk created from the image. The disk with locked flag set to true will be prohibited from performing the operations below: - R/W or R/O disk attach - Disk detach, if disk is created via create-on-create - Create images - Create snapshots - Create disk clone (create disk from the current disk) The image with the locked field set to true will be prohibited from performing the operations below: - Create images from the current image - Update the locked field for the current image The instance with at least one disk with locked flag set to true will be prohibited from performing the operations below: - Secondary disk attach - Create instant snapshot - Create machine images - Create instance template - Delete the instance with --keep-disk parameter set to true
  final pulumi.Input<bool>? locked;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The parameters of the raw disk image.
  final pulumi.Input<ImageRawDiskComputeBeta>? rawDisk;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// A rollout policy to apply to this image. When specified, the rollout policy overrides per-zone references to the image via the associated image family. The rollout policy restricts the zones where this image is accessible when using a zonal image family reference. When the rollout policy does not include the user specified zone, or if the zone is rolled out, this image is accessible. The rollout policy for this image is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  final pulumi.Input<RolloutPolicyComputeBeta>? rolloutOverride;

  /// Set the secure boot keys of shielded instance.
  final pulumi.Input<InitialStateConfigComputeBeta>?
      shieldedInstanceInitialState;

  /// URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>?
      sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final pulumi.Input<String>? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>?
      sourceSnapshotEncryptionKey;

  /// The type of the image used to create this disk. The default and only valid value is RAW.
  final pulumi.Input<ImageSourceTypeComputeBeta>? sourceType;

  /// Cloud Storage bucket storage location of the image (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  /// A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  final pulumi.Input<List<String>>? userLicenses;

  ImageComputeBetaArgs({
    this.architecture,
    this.archiveSizeBytes,
    this.deprecated,
    this.description,
    this.diskSizeGb,
    this.enableConfidentialCompute,
    this.family,
    this.forceCreate,
    this.guestOsFeatures,
    this.imageEncryptionKey,
    this.labels,
    this.licenseCodes,
    this.licenses,
    this.locked,
    this.name,
    this.project,
    this.rawDisk,
    this.requestId,
    this.rolloutOverride,
    this.shieldedInstanceInitialState,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceType,
    this.storageLocations,
    this.userLicenses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = pulumi.Input.mapOptionalInputValue<
          ImageArchitectureComputeBeta,
          String>(architectureValue, (value) => value.value);
    }
    final archiveSizeBytesValue = archiveSizeBytes;
    if (archiveSizeBytesValue != null) {
      map['archiveSizeBytes'] = archiveSizeBytesValue;
    }
    final deprecatedValue = deprecated;
    if (deprecatedValue != null) {
      map['deprecated'] = pulumi.Input.mapOptionalInputValue<
          DeprecationStatusComputeBeta,
          Map<String, dynamic>>(deprecatedValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    final familyValue = family;
    if (familyValue != null) {
      map['family'] = familyValue;
    }
    final forceCreateValue = forceCreate;
    if (forceCreateValue != null) {
      map['forceCreate'] = forceCreateValue;
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = pulumi.Input.mapOptionalInputValue<
              List<GuestOsFeatureComputeBeta>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) => pulumi.Input.encodeList<GuestOsFeatureComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final imageEncryptionKeyValue = imageEncryptionKey;
    if (imageEncryptionKeyValue != null) {
      map['imageEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(
          imageEncryptionKeyValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final licenseCodesValue = licenseCodes;
    if (licenseCodesValue != null) {
      map['licenseCodes'] = licenseCodesValue;
    }
    final licensesValue = licenses;
    if (licensesValue != null) {
      map['licenses'] = licensesValue;
    }
    final lockedValue = locked;
    if (lockedValue != null) {
      map['locked'] = lockedValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rawDiskValue = rawDisk;
    if (rawDiskValue != null) {
      map['rawDisk'] = pulumi.Input.mapOptionalInputValue<
          ImageRawDiskComputeBeta,
          Map<String, dynamic>>(rawDiskValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final rolloutOverrideValue = rolloutOverride;
    if (rolloutOverrideValue != null) {
      map['rolloutOverride'] = pulumi.Input.mapOptionalInputValue<
          RolloutPolicyComputeBeta,
          Map<String, dynamic>>(rolloutOverrideValue, (value) => value.toMap());
    }
    final shieldedInstanceInitialStateValue = shieldedInstanceInitialState;
    if (shieldedInstanceInitialStateValue != null) {
      map['shieldedInstanceInitialState'] = pulumi.Input.mapOptionalInputValue<
              InitialStateConfigComputeBeta, Map<String, dynamic>>(
          shieldedInstanceInitialStateValue, (value) => value.toMap());
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(
          sourceImageEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(
          sourceSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = pulumi.Input.mapOptionalInputValue<
          ImageSourceTypeComputeBeta,
          String>(sourceTypeValue, (value) => value.value);
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    final userLicensesValue = userLicenses;
    if (userLicensesValue != null) {
      map['userLicenses'] = userLicensesValue;
    }
    return map;
  }

  factory ImageComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return ImageComputeBetaArgs(
      architecture: pulumi.Input.asOptionalInput<ImageArchitectureComputeBeta>(
          map['architecture']),
      archiveSizeBytes:
          pulumi.Input.asOptionalInput<String>(map['archiveSizeBytes']),
      deprecated: pulumi.Input.asOptionalInput<DeprecationStatusComputeBeta>(
          map['deprecated']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskSizeGb: pulumi.Input.asOptionalInput<String>(map['diskSizeGb']),
      enableConfidentialCompute:
          pulumi.Input.asOptionalInput<bool>(map['enableConfidentialCompute']),
      family: pulumi.Input.asOptionalInput<String>(map['family']),
      forceCreate: pulumi.Input.asOptionalInput<bool>(map['forceCreate']),
      guestOsFeatures:
          pulumi.Input.asOptionalInput<List<GuestOsFeatureComputeBeta>>(
              map['guestOsFeatures']),
      imageEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
              map['imageEncryptionKey']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenseCodes:
          pulumi.Input.asOptionalInput<List<String>>(map['licenseCodes']),
      licenses: pulumi.Input.asOptionalInput<List<String>>(map['licenses']),
      locked: pulumi.Input.asOptionalInput<bool>(map['locked']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rawDisk:
          pulumi.Input.asOptionalInput<ImageRawDiskComputeBeta>(map['rawDisk']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      rolloutOverride: pulumi.Input.asOptionalInput<RolloutPolicyComputeBeta>(
          map['rolloutOverride']),
      shieldedInstanceInitialState:
          pulumi.Input.asOptionalInput<InitialStateConfigComputeBeta>(
              map['shieldedInstanceInitialState']),
      sourceDisk: pulumi.Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
              map['sourceDiskEncryptionKey']),
      sourceImage: pulumi.Input.asOptionalInput<String>(map['sourceImage']),
      sourceImageEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
              map['sourceImageEncryptionKey']),
      sourceSnapshot:
          pulumi.Input.asOptionalInput<String>(map['sourceSnapshot']),
      sourceSnapshotEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
              map['sourceSnapshotEncryptionKey']),
      sourceType: pulumi.Input.asOptionalInput<ImageSourceTypeComputeBeta>(
          map['sourceType']),
      storageLocations:
          pulumi.Input.asOptionalInput<List<String>>(map['storageLocations']),
      userLicenses:
          pulumi.Input.asOptionalInput<List<String>>(map['userLicenses']),
    );
  }
}
