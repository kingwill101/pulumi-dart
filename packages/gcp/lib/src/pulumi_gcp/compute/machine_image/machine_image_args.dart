// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../machine_image_machine_image_encryption_key/machine_image_machine_image_encryption_key.dart';

/// The set of arguments for MachineImage.
class MachineImageArgs {
  /// A text description of the resource.
  final Input<String>? description;

  /// Specify this to create an application consistent machine image by informing the OS to prepare for the snapshot process.
  /// Currently only supported on Windows instances using the Volume Shadow Copy Service (VSS).
  final Input<bool>? guestFlush;

  /// Encrypts the machine image using a customer-supplied encryption key.
  /// After you encrypt a machine image with a customer-supplied key, you must
  /// provide the same key if you use the machine image later (e.g. to create a
  /// instance from the image)
  /// Structure is documented below.
  final Input<MachineImageMachineImageEncryptionKey>? machineImageEncryptionKey;

  /// Name of the resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource.
  final Input<String> sourceInstance;

  MachineImageArgs({
    this.description,
    this.guestFlush,
    this.machineImageEncryptionKey,
    this.name,
    this.project,
    required this.sourceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final guestFlushValue = guestFlush;
    if (guestFlushValue != null) {
      map['guestFlush'] = guestFlushValue;
    }
    final machineImageEncryptionKeyValue = machineImageEncryptionKey;
    if (machineImageEncryptionKeyValue != null) {
      map['machineImageEncryptionKey'] = Input.mapOptionalInputValue<
              MachineImageMachineImageEncryptionKey, Map<String, dynamic>>(
          machineImageEncryptionKeyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceInstance'] = sourceInstance;
    return map;
  }

  factory MachineImageArgs.fromMap(Map<String, dynamic> map) {
    return MachineImageArgs(
      description: Input.asOptionalInput<String>(map['description']),
      guestFlush: Input.asOptionalInput<bool>(map['guestFlush']),
      machineImageEncryptionKey:
          Input.asOptionalInput<MachineImageMachineImageEncryptionKey>(
              map['machineImageEncryptionKey']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceInstance: Input.asInput<String>(map['sourceInstance']),
    );
  }
}
