// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'customer_encryption_key3.dart';
import 'deprecation_status3.dart';
import 'guest_os_feature3.dart';
import 'image_architecture3.dart';
import 'image_raw_disk3.dart';
import 'image_source_type3.dart';
import 'initial_state_config3.dart';

/// The set of arguments for Image.
class ImageArgs3 {
  /// The architecture of the image. Valid values are ARM64 or X86_64.
  final Input<ImageArchitecture3>? architecture;

  /// Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
  final Input<String>? archiveSizeBytes;

  /// The deprecation status associated with this image.
  final Input<DeprecationStatus3>? deprecated;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Size of the image when restored onto a persistent disk (in GB).
  final Input<String>? diskSizeGb;

  /// The name of the image family to which this image belongs. The image family name can be from a publicly managed image family provided by Compute Engine, or from a custom image family you create. For example, centos-stream-9 is a publicly available image family. For more information, see Image family best practices. When creating disks, you can specify an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
  final Input<String>? family;

  /// Force image creation if true.
  final Input<bool>? forceCreate;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. To see a list of available options, see the guestOSfeatures[].type parameter.
  final Input<List<GuestOsFeature3>>? guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key. After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image). Customer-supplied encryption keys do not protect access to metadata of the disk. If you do not provide an encryption key when creating the image, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the image later.
  final Input<CustomerEncryptionKey3>? imageEncryptionKey;

  /// Labels to apply to this image. These can be later modified by the setLabels method.
  final Input<Map<String, String>>? labels;

  /// Integer license codes indicating which licenses are attached to this image.
  final Input<List<String>>? licenseCodes;

  /// Any applicable license URI.
  final Input<List<String>>? licenses;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// The parameters of the raw disk image.
  final Input<ImageRawDisk3>? rawDisk;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Set the secure boot keys of shielded instance.
  final Input<InitialStateConfig3>? shieldedInstanceInitialState;

  /// URL of the source disk used to create this image. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final Input<CustomerEncryptionKey3>? sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ images/image_name - projects/project_id/global/images/image_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final Input<String>? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final Input<CustomerEncryptionKey3>? sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image. The following are valid formats for the URL: - https://www.googleapis.com/compute/v1/projects/project_id/global/ snapshots/snapshot_name - projects/project_id/global/snapshots/snapshot_name In order to create an image, you must provide the full or partial URL of one of the following: - The rawDisk.source URL - The sourceDisk URL - The sourceImage URL - The sourceSnapshot URL
  final Input<String>? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final Input<CustomerEncryptionKey3>? sourceSnapshotEncryptionKey;

  /// The type of the image used to create this disk. The default and only valid value is RAW.
  final Input<ImageSourceType3>? sourceType;

  /// Cloud Storage bucket storage location of the image (regional or multi-regional).
  final Input<List<String>>? storageLocations;

  ImageArgs3({
    this.architecture,
    this.archiveSizeBytes,
    this.deprecated,
    this.description,
    this.diskSizeGb,
    this.family,
    this.forceCreate,
    this.guestOsFeatures,
    this.imageEncryptionKey,
    this.labels,
    this.licenseCodes,
    this.licenses,
    this.name,
    this.project,
    this.rawDisk,
    this.requestId,
    this.shieldedInstanceInitialState,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceType,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] =
          Input.mapOptionalInputValue<ImageArchitecture3, String>(
              architectureValue, (value) => value.value);
    }
    final archiveSizeBytesValue = archiveSizeBytes;
    if (archiveSizeBytesValue != null) {
      map['archiveSizeBytes'] = archiveSizeBytesValue;
    }
    final deprecatedValue = deprecated;
    if (deprecatedValue != null) {
      map['deprecated'] =
          Input.mapOptionalInputValue<DeprecationStatus3, Map<String, dynamic>>(
              deprecatedValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
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
      map['guestOsFeatures'] = Input.mapOptionalInputValue<
              List<GuestOsFeature3>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) => Input.encodeList<GuestOsFeature3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final imageEncryptionKeyValue = imageEncryptionKey;
    if (imageEncryptionKeyValue != null) {
      map['imageEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
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
      map['rawDisk'] =
          Input.mapOptionalInputValue<ImageRawDisk3, Map<String, dynamic>>(
              rawDiskValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final shieldedInstanceInitialStateValue = shieldedInstanceInitialState;
    if (shieldedInstanceInitialStateValue != null) {
      map['shieldedInstanceInitialState'] = Input.mapOptionalInputValue<
              InitialStateConfig3, Map<String, dynamic>>(
          shieldedInstanceInitialStateValue, (value) => value.toMap());
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          sourceImageEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          sourceSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = Input.mapOptionalInputValue<ImageSourceType3, String>(
          sourceTypeValue, (value) => value.value);
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    return map;
  }

  factory ImageArgs3.fromMap(Map<String, dynamic> map) {
    return ImageArgs3(
      architecture:
          Input.asOptionalInput<ImageArchitecture3>(map['architecture']),
      archiveSizeBytes: Input.asOptionalInput<String>(map['archiveSizeBytes']),
      deprecated: Input.asOptionalInput<DeprecationStatus3>(map['deprecated']),
      description: Input.asOptionalInput<String>(map['description']),
      diskSizeGb: Input.asOptionalInput<String>(map['diskSizeGb']),
      family: Input.asOptionalInput<String>(map['family']),
      forceCreate: Input.asOptionalInput<bool>(map['forceCreate']),
      guestOsFeatures:
          Input.asOptionalInput<List<GuestOsFeature3>>(map['guestOsFeatures']),
      imageEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey3>(
          map['imageEncryptionKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenseCodes: Input.asOptionalInput<List<String>>(map['licenseCodes']),
      licenses: Input.asOptionalInput<List<String>>(map['licenses']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rawDisk: Input.asOptionalInput<ImageRawDisk3>(map['rawDisk']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      shieldedInstanceInitialState: Input.asOptionalInput<InitialStateConfig3>(
          map['shieldedInstanceInitialState']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey3>(
          map['sourceDiskEncryptionKey']),
      sourceImage: Input.asOptionalInput<String>(map['sourceImage']),
      sourceImageEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey3>(
          map['sourceImageEncryptionKey']),
      sourceSnapshot: Input.asOptionalInput<String>(map['sourceSnapshot']),
      sourceSnapshotEncryptionKey:
          Input.asOptionalInput<CustomerEncryptionKey3>(
              map['sourceSnapshotEncryptionKey']),
      sourceType: Input.asOptionalInput<ImageSourceType3>(map['sourceType']),
      storageLocations:
          Input.asOptionalInput<List<String>>(map['storageLocations']),
    );
  }
}
