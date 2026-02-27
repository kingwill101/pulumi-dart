import 'package:pulumi/pulumi.dart';
import '../machine_image_machine_image_encryption_key/machine_image_machine_image_encryption_key.dart';
import 'machine_image_args.dart';

/// Represents a Machine Image resource. Machine images store all the configuration,
/// metadata, permissions, and data from one or more disks required to create a
/// Virtual machine (VM) instance.
///
/// To get more information about MachineImage, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/machineImages)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/machine-images)
///
/// ## Example Usage
///
/// ### Machine Image Basic
///
///
///
/// ### Compute Machine Image Kms
///
///
///
///
/// ## Import
///
/// MachineImage can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/machineImages/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MachineImage can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default projects/{{project}}/global/machineImages/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/machineImage:MachineImage default {{name}}
/// ```
class MachineImage extends CustomResource {
  /// A text description of the resource.
  late final Output<String?> description;

  /// Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// Currently only supported on Windows instances using the Volume Shadow Copy Service (VSS).
  late final Output<bool?> guestFlush;

  /// Encrypts the machine image using a customer-supplied encryption key.
  /// After you encrypt a machine image with a customer-supplied key, you must
  /// provide the same key if you use the machine image later (e.g. to create a
  /// instance from the image)
  /// Structure is documented below.
  late final Output<MachineImageMachineImageEncryptionKey?>
      machineImageEncryptionKey;

  /// Name of the resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  late final Output<String> sourceInstance;

  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  late final Output<List<String>> storageLocations;

  MachineImage(
    String name, {
    MachineImageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/machineImage:MachineImage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.guestFlush = registerOutput<bool?>('guestFlush');
    this.machineImageEncryptionKey =
        registerOutput<MachineImageMachineImageEncryptionKey?>(
            'machineImageEncryptionKey');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sourceInstance = registerOutput<String>('sourceInstance');
    this.storageLocations = registerOutput<List<String>>('storageLocations');
  }
}
