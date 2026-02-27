// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_guest_os_feature/image_guest_os_feature.dart';
import '../image_image_encryption_key/image_image_encryption_key.dart';
import '../image_raw_disk/image_raw_disk.dart';
import '../image_shielded_instance_initial_state/image_shielded_instance_initial_state.dart';
import '../image_source_disk_encryption_key/image_source_disk_encryption_key.dart';
import '../image_source_image_encryption_key/image_source_image_encryption_key.dart';
import '../image_source_snapshot_encryption_key/image_source_snapshot_encryption_key.dart';

/// The set of arguments for Image.
class ImageArgs {
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;

  /// Size of the image when restored onto a persistent disk (in GB).
  final pulumi.Input<int>? diskSizeGb;

  /// The name of the image family to which this image belongs. You can
  /// create disks by specifying an image family instead of a specific
  /// image name. The image family always returns its latest image that is
  /// not deprecated. The name of the image family must comply with
  /// RFC1035.
  final pulumi.Input<String>? family;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable images.
  /// Structure is documented below.
  final pulumi.Input<List<ImageGuestOsFeature>>? guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key.
  /// After you encrypt an image with a customer-supplied key, you must
  /// provide the same key if you use the image later (e.g. to create a
  /// disk from the image)
  /// Structure is documented below.
  final pulumi.Input<ImageImageEncryptionKey>? imageEncryptionKey;

  /// Labels to apply to this Image.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Any applicable license URI.
  final pulumi.Input<List<String>>? licenses;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The parameters of the raw disk image.
  /// Structure is documented below.
  final pulumi.Input<ImageRawDisk>? rawDisk;

  /// Set the secure boot keys of shielded instance.
  /// Structure is documented below.
  final pulumi.Input<ImageShieldedInstanceInitialState>?
      shieldedInstanceInitialState;

  /// The source disk to create this image based on.
  /// You must provide either this property or the
  /// rawDisk.source property but not both to create an image.
  final pulumi.Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if
  /// the source disk is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<ImageSourceDiskEncryptionKey>? sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  final pulumi.Input<String>? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<ImageSourceImageEncryptionKey>? sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image.
  /// In order to create an image, you must provide the full or partial URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The sourceImage URL
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  final pulumi.Input<String>? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if
  /// the source snapshot is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<ImageSourceSnapshotEncryptionKey>?
      sourceSnapshotEncryptionKey;

  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  final pulumi.Input<List<String>>? storageLocations;

  ImageArgs({
    this.description,
    this.diskSizeGb,
    this.family,
    this.guestOsFeatures,
    this.imageEncryptionKey,
    this.labels,
    this.licenses,
    this.name,
    this.project,
    this.rawDisk,
    this.shieldedInstanceInitialState,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = pulumi.Input.mapOptionalInputValue<
              List<ImageGuestOsFeature>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) => pulumi.Input.encodeList<ImageGuestOsFeature,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final imageEncryptionKeyValue = imageEncryptionKey;
    if (imageEncryptionKeyValue != null) {
      map['imageEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              ImageImageEncryptionKey, Map<String, dynamic>>(
          imageEncryptionKeyValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
      map['rawDisk'] = pulumi.Input.mapOptionalInputValue<ImageRawDisk,
          Map<String, dynamic>>(rawDiskValue, (value) => value.toMap());
    }
    final shieldedInstanceInitialStateValue = shieldedInstanceInitialState;
    if (shieldedInstanceInitialStateValue != null) {
      map['shieldedInstanceInitialState'] = pulumi.Input.mapOptionalInputValue<
              ImageShieldedInstanceInitialState, Map<String, dynamic>>(
          shieldedInstanceInitialStateValue, (value) => value.toMap());
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              ImageSourceDiskEncryptionKey, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              ImageSourceImageEncryptionKey, Map<String, dynamic>>(
          sourceImageEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              ImageSourceSnapshotEncryptionKey, Map<String, dynamic>>(
          sourceSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    return map;
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskSizeGb: pulumi.Input.asOptionalInput<int>(map['diskSizeGb']),
      family: pulumi.Input.asOptionalInput<String>(map['family']),
      guestOsFeatures: pulumi.Input.asOptionalInput<List<ImageGuestOsFeature>>(
          map['guestOsFeatures']),
      imageEncryptionKey: pulumi.Input.asOptionalInput<ImageImageEncryptionKey>(
          map['imageEncryptionKey']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenses: pulumi.Input.asOptionalInput<List<String>>(map['licenses']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rawDisk: pulumi.Input.asOptionalInput<ImageRawDisk>(map['rawDisk']),
      shieldedInstanceInitialState:
          pulumi.Input.asOptionalInput<ImageShieldedInstanceInitialState>(
              map['shieldedInstanceInitialState']),
      sourceDisk: pulumi.Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey:
          pulumi.Input.asOptionalInput<ImageSourceDiskEncryptionKey>(
              map['sourceDiskEncryptionKey']),
      sourceImage: pulumi.Input.asOptionalInput<String>(map['sourceImage']),
      sourceImageEncryptionKey:
          pulumi.Input.asOptionalInput<ImageSourceImageEncryptionKey>(
              map['sourceImageEncryptionKey']),
      sourceSnapshot:
          pulumi.Input.asOptionalInput<String>(map['sourceSnapshot']),
      sourceSnapshotEncryptionKey:
          pulumi.Input.asOptionalInput<ImageSourceSnapshotEncryptionKey>(
              map['sourceSnapshotEncryptionKey']),
      storageLocations:
          pulumi.Input.asOptionalInput<List<String>>(map['storageLocations']),
    );
  }
}
