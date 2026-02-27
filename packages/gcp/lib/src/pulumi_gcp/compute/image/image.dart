import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_guest_os_feature/image_guest_os_feature.dart';
import '../image_image_encryption_key/image_image_encryption_key.dart';
import '../image_raw_disk/image_raw_disk.dart';
import '../image_shielded_instance_initial_state/image_shielded_instance_initial_state.dart';
import '../image_source_disk_encryption_key/image_source_disk_encryption_key.dart';
import '../image_source_image_encryption_key/image_source_image_encryption_key.dart';
import '../image_source_snapshot_encryption_key/image_source_snapshot_encryption_key.dart';
import 'image_args.dart';

/// Represents an Image resource.
///
/// Google Compute Engine uses operating system images to create the root
/// persistent disks for your instances. You specify an image when you create
/// an instance. Images contain a boot loader, an operating system, and a
/// root file system. Linux operating system images are also capable of
/// running containers on Compute Engine.
///
/// Images can be either public or custom.
///
/// Public images are provided and maintained by Google, open-source
/// communities, and third-party vendors. By default, all projects have
/// access to these images and can use them to create instances.  Custom
/// images are available only to your project. You can create a custom image
/// from root persistent disks and other images. Then, use the custom image
/// to create an instance.
///
///
/// To get more information about Image, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/images)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/images)
///
///
///
/// ## Example Usage
///
/// ### Image Basic
///
///
///
/// ### Image Guest Os
///
///
///
/// ### Image Basic Storage Location
///
///
///
///
/// ## Import
///
/// Image can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/images/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Image can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default projects/{{project}}/global/images/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/image:Image default {{name}}
/// ```
class Image extends pulumi.CustomResource {
  /// Size of the image tar.gz archive stored in Google Cloud Storage (in
  /// bytes).
  late final pulumi.Output<int> archiveSizeBytes;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// Size of the image when restored onto a persistent disk (in GB).
  late final pulumi.Output<int> diskSizeGb;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The name of the image family to which this image belongs. You can
  /// create disks by specifying an image family instead of a specific
  /// image name. The image family always returns its latest image that is
  /// not deprecated. The name of the image family must comply with
  /// RFC1035.
  late final pulumi.Output<String?> family;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable images.
  /// Structure is documented below.
  late final pulumi.Output<List<ImageGuestOsFeature>> guestOsFeatures;

  /// Encrypts the image using a customer-supplied encryption key.
  /// After you encrypt an image with a customer-supplied key, you must
  /// provide the same key if you use the image later (e.g. to create a
  /// disk from the image)
  /// Structure is documented below.
  late final pulumi.Output<ImageImageEncryptionKey?> imageEncryptionKey;

  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this Image.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Any applicable license URI.
  late final pulumi.Output<List<String>> licenses;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The parameters of the raw disk image.
  /// Structure is documented below.
  late final pulumi.Output<ImageRawDisk?> rawDisk;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Set the secure boot keys of shielded instance.
  /// Structure is documented below.
  late final pulumi.Output<ImageShieldedInstanceInitialState>
      shieldedInstanceInitialState;

  /// The source disk to create this image based on.
  /// You must provide either this property or the
  /// rawDisk.source property but not both to create an image.
  late final pulumi.Output<String?> sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if
  /// the source disk is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<ImageSourceDiskEncryptionKey?>
      sourceDiskEncryptionKey;

  /// URL of the source image used to create this image. In order to create an image, you must provide the full or partial
  /// URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  late final pulumi.Output<String?> sourceImage;

  /// The customer-supplied encryption key of the source image. Required if
  /// the source image is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<ImageSourceImageEncryptionKey?>
      sourceImageEncryptionKey;

  /// URL of the source snapshot used to create this image.
  /// In order to create an image, you must provide the full or partial URL of one of the following:
  /// * The selfLink URL
  /// * This property
  /// * The sourceImage URL
  /// * The rawDisk.source URL
  /// * The sourceDisk URL
  late final pulumi.Output<String?> sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if
  /// the source snapshot is protected by a customer-supplied encryption key.
  /// Structure is documented below.
  late final pulumi.Output<ImageSourceSnapshotEncryptionKey?>
      sourceSnapshotEncryptionKey;

  /// Cloud Storage bucket storage location of the image
  /// (regional or multi-regional).
  /// Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images
  late final pulumi.Output<List<String>> storageLocations;

  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/image:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.archiveSizeBytes = registerOutput<int>('archiveSizeBytes');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.diskSizeGb = registerOutput<int>('diskSizeGb');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.family = registerOutput<String?>('family');
    this.guestOsFeatures =
        registerOutput<List<ImageGuestOsFeature>>('guestOsFeatures');
    this.imageEncryptionKey =
        registerOutput<ImageImageEncryptionKey?>('imageEncryptionKey');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rawDisk = registerOutput<ImageRawDisk?>('rawDisk');
    this.selfLink = registerOutput<String>('selfLink');
    this.shieldedInstanceInitialState =
        registerOutput<ImageShieldedInstanceInitialState>(
            'shieldedInstanceInitialState');
    this.sourceDisk = registerOutput<String?>('sourceDisk');
    this.sourceDiskEncryptionKey =
        registerOutput<ImageSourceDiskEncryptionKey?>(
            'sourceDiskEncryptionKey');
    this.sourceImage = registerOutput<String?>('sourceImage');
    this.sourceImageEncryptionKey =
        registerOutput<ImageSourceImageEncryptionKey?>(
            'sourceImageEncryptionKey');
    this.sourceSnapshot = registerOutput<String?>('sourceSnapshot');
    this.sourceSnapshotEncryptionKey =
        registerOutput<ImageSourceSnapshotEncryptionKey?>(
            'sourceSnapshotEncryptionKey');
    this.storageLocations = registerOutput<List<String>>('storageLocations');
  }
}
