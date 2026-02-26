// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<String>? description;

  /// Size of the image when restored onto a persistent disk (in GB).
  final Input<int>? diskSizeGb;

  /// The name of the image family to which this image belongs. You can
  /// create disks by specifying an image family instead of a specific
  /// image name. The image family always returns its latest image that is
  /// not deprecated. The name of the image family must comply with
  /// RFC1035.
  final Input<String>? family;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable images.
  /// Structure is documented below.
  final Input<List<ImageGuestOsFeature>>? guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key.
  /// After you encrypt an image with a customer-supplied key, you must
  /// provide the same key if you use the image later (e.g. to create a
  /// disk from the image)
  /// Structure is documented below.
  final Input<ImageImageEncryptionKey>? imageEncryptionKey;

  /// Labels to apply to this Image.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Any applicable license URI.
  final Input<List<String>>? licenses;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The parameters of the raw disk image.
  /// Structure is documented below.
  final Input<ImageRawDisk>? rawDisk;

  /// Set the secure boot keys of shielded instance.
  /// Structure is documented below.
  final Input<ImageShieldedInstanceInitialState>? shieldedInstanceInitialState;

  /// The source disk to create this image based on.
  /// You must provide either this property or the
  /// rawDisk.source property but not both to create an image.
  final Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if
  /// the source disk is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final Input<ImageSourceDiskEncryptionKey>? sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  final Input<String>? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final Input<ImageSourceImageEncryptionKey>? sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image.
  /// In order to create an image, you must provide the full or partial URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The sourceImage URL
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  final Input<String>? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if
  /// the source snapshot is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  final Input<ImageSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;

  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  final Input<List<String>>? storageLocations;

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
      map['guestOsFeatures'] = Input.mapOptionalInputValue<
              List<ImageGuestOsFeature>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) =>
              Input.encodeList<ImageGuestOsFeature, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final imageEncryptionKeyValue = imageEncryptionKey;
    if (imageEncryptionKeyValue != null) {
      map['imageEncryptionKey'] = Input.mapOptionalInputValue<
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
      map['rawDisk'] =
          Input.mapOptionalInputValue<ImageRawDisk, Map<String, dynamic>>(
              rawDiskValue, (value) => value.toMap());
    }
    final shieldedInstanceInitialStateValue = shieldedInstanceInitialState;
    if (shieldedInstanceInitialStateValue != null) {
      map['shieldedInstanceInitialState'] = Input.mapOptionalInputValue<
              ImageShieldedInstanceInitialState, Map<String, dynamic>>(
          shieldedInstanceInitialStateValue, (value) => value.toMap());
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = Input.mapOptionalInputValue<
              ImageSourceDiskEncryptionKey, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = Input.mapOptionalInputValue<
              ImageSourceImageEncryptionKey, Map<String, dynamic>>(
          sourceImageEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = Input.mapOptionalInputValue<
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
      description: Input.asOptionalInput<String>(map['description']),
      diskSizeGb: Input.asOptionalInput<int>(map['diskSizeGb']),
      family: Input.asOptionalInput<String>(map['family']),
      guestOsFeatures: Input.asOptionalInput<List<ImageGuestOsFeature>>(
          map['guestOsFeatures']),
      imageEncryptionKey: Input.asOptionalInput<ImageImageEncryptionKey>(
          map['imageEncryptionKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenses: Input.asOptionalInput<List<String>>(map['licenses']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rawDisk: Input.asOptionalInput<ImageRawDisk>(map['rawDisk']),
      shieldedInstanceInitialState:
          Input.asOptionalInput<ImageShieldedInstanceInitialState>(
              map['shieldedInstanceInitialState']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey:
          Input.asOptionalInput<ImageSourceDiskEncryptionKey>(
              map['sourceDiskEncryptionKey']),
      sourceImage: Input.asOptionalInput<String>(map['sourceImage']),
      sourceImageEncryptionKey:
          Input.asOptionalInput<ImageSourceImageEncryptionKey>(
              map['sourceImageEncryptionKey']),
      sourceSnapshot: Input.asOptionalInput<String>(map['sourceSnapshot']),
      sourceSnapshotEncryptionKey:
          Input.asOptionalInput<ImageSourceSnapshotEncryptionKey>(
              map['sourceSnapshotEncryptionKey']),
      storageLocations:
          Input.asOptionalInput<List<String>>(map['storageLocations']),
    );
  }
}
