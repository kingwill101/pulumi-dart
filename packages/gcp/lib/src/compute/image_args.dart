// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_guest_os_feature.dart';
import 'image_image_encryption_key.dart';
import 'image_raw_disk.dart';
import 'image_shielded_instance_initial_state.dart';
import 'image_source_disk_encryption_key.dart';
import 'image_source_image_encryption_key.dart';
import 'image_source_snapshot_encryption_key.dart';

/// {@template pulumi_compute_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_compute_image_image_args_doc}
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
  final pulumi.Input<ImageShieldedInstanceInitialState>? shieldedInstanceInitialState;
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
  final pulumi.Input<ImageSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;
  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [ImageArgs].
  /// [description] An optional description of this resource. Provide this property when
  /// [diskSizeGb] Size of the image when restored onto a persistent disk (in GB).
  /// [family] The name of the image family to which this image belongs. You can
  /// [guestOsFeatures] A list of features to enable on the guest operating system.
  /// [imageEncryptionKey] Encrypts the image using a customer-supplied encryption key.
  /// [labels] Labels to apply to this Image.
  /// [licenses] Any applicable license URI.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [rawDisk] The parameters of the raw disk image.
  /// [shieldedInstanceInitialState] Set the secure boot keys of shielded instance.
  /// [sourceDisk] The source disk to create this image based on.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source disk. Required if
  /// [sourceImage] URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if
  /// [sourceSnapshot] URL of the source snapshot used to create this image.
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required if
  /// [storageLocations] Cloud Storage bucket storage location of the image
  ImageArgs({
    String? description,
    int? diskSizeGb,
    String? family,
    List<ImageGuestOsFeature>? guestOsFeatures,
    ImageImageEncryptionKey? imageEncryptionKey,
    Map<String, String>? labels,
    List<String>? licenses,
    String? name,
    String? project,
    ImageRawDisk? rawDisk,
    ImageShieldedInstanceInitialState? shieldedInstanceInitialState,
    String? sourceDisk,
    ImageSourceDiskEncryptionKey? sourceDiskEncryptionKey,
    String? sourceImage,
    ImageSourceImageEncryptionKey? sourceImageEncryptionKey,
    String? sourceSnapshot,
    ImageSourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey,
    List<String>? storageLocations,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diskSizeGb = pulumi.Input.asOptionalInput<int>(diskSizeGb),
      family = pulumi.Input.asOptionalInput<String>(family),
      guestOsFeatures = pulumi.Input.asOptionalInput<List<ImageGuestOsFeature>>(guestOsFeatures),
      imageEncryptionKey = pulumi.Input.asOptionalInput<ImageImageEncryptionKey>(imageEncryptionKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rawDisk = pulumi.Input.asOptionalInput<ImageRawDisk>(rawDisk),
      shieldedInstanceInitialState = pulumi.Input.asOptionalInput<ImageShieldedInstanceInitialState>(shieldedInstanceInitialState),
      sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
      sourceDiskEncryptionKey = pulumi.Input.asOptionalInput<ImageSourceDiskEncryptionKey>(sourceDiskEncryptionKey),
      sourceImage = pulumi.Input.asOptionalInput<String>(sourceImage),
      sourceImageEncryptionKey = pulumi.Input.asOptionalInput<ImageSourceImageEncryptionKey>(sourceImageEncryptionKey),
      sourceSnapshot = pulumi.Input.asOptionalInput<String>(sourceSnapshot),
      sourceSnapshotEncryptionKey = pulumi.Input.asOptionalInput<ImageSourceSnapshotEncryptionKey>(sourceSnapshotEncryptionKey),
      storageLocations = pulumi.Input.asOptionalInput<List<String>>(storageLocations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'family': ?family,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<ImageGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<ImageGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageImageEncryptionKey, Map<String, dynamic>>(imageEncryptionKey, (value) => value.toMap()),
      'labels': ?labels,
      'licenses': ?licenses,
      'name': ?name,
      'project': ?project,
      'rawDisk': ?pulumi.Input.mapOptionalInputValue<ImageRawDisk, Map<String, dynamic>>(rawDisk, (value) => value.toMap()),
      'shieldedInstanceInitialState': ?pulumi.Input.mapOptionalInputValue<ImageShieldedInstanceInitialState, Map<String, dynamic>>(shieldedInstanceInitialState, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageSourceDiskEncryptionKey, Map<String, dynamic>>(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<ImageSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'storageLocations': ?storageLocations,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      description: map['description'] == null ? null : map['description'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      guestOsFeatures: map['guestOsFeatures'] == null ? null : pulumi.Input.decodeList<ImageGuestOsFeature>(map['guestOsFeatures'], (value) => ImageGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())),
      imageEncryptionKey: map['imageEncryptionKey'] == null ? null : ImageImageEncryptionKey.fromMap((map['imageEncryptionKey'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      licenses: map['licenses'] == null ? null : (map['licenses'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rawDisk: map['rawDisk'] == null ? null : ImageRawDisk.fromMap((map['rawDisk'] as Map).cast<String, dynamic>()),
      shieldedInstanceInitialState: map['shieldedInstanceInitialState'] == null ? null : ImageShieldedInstanceInitialState.fromMap((map['shieldedInstanceInitialState'] as Map).cast<String, dynamic>()),
      sourceDisk: map['sourceDisk'] == null ? null : map['sourceDisk'] as String,
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null ? null : ImageSourceDiskEncryptionKey.fromMap((map['sourceDiskEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceImage: map['sourceImage'] == null ? null : map['sourceImage'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : ImageSourceImageEncryptionKey.fromMap((map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>()),
      sourceSnapshot: map['sourceSnapshot'] == null ? null : map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : ImageSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey'] as Map).cast<String, dynamic>()),
      storageLocations: map['storageLocations'] == null ? null : (map['storageLocations'] as List).cast<String>(),
    );
  }
}

