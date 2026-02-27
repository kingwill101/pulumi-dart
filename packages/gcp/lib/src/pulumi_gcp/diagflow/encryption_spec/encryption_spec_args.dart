// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../encryption_spec_encryption_spec/encryption_spec_encryption_spec.dart';

/// The set of arguments for EncryptionSpec.
class EncryptionSpecArgs {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EncryptionSpecEncryptionSpec> encryptionSpec;

  /// The location in which the encryptionSpec is to be initialized.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  EncryptionSpecArgs({
    required this.encryptionSpec,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionSpec'] = pulumi.Input.mapInputValue<
        EncryptionSpecEncryptionSpec,
        Map<String, dynamic>>(encryptionSpec, (value) => value.toMap());
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EncryptionSpecArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionSpecArgs(
      encryptionSpec: pulumi.Input.asInput<EncryptionSpecEncryptionSpec>(
          map['encryptionSpec']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
