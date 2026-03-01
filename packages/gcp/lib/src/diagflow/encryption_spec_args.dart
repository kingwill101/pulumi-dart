// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_spec_encryption_spec.dart';

/// {@template pulumi_diagflow_encryption_spec_encryption_spec_args_doc}
/// The set of arguments for EncryptionSpec.
/// {@endtemplate}
/// {@macro pulumi_diagflow_encryption_spec_encryption_spec_args_doc}
class EncryptionSpecArgs {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EncryptionSpecEncryptionSpec> encryptionSpec;
  /// The location in which the encryptionSpec is to be initialized.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EncryptionSpecArgs].
  /// [encryptionSpec] A nested object resource.
  /// [location] The location in which the encryptionSpec is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  EncryptionSpecArgs({
    required EncryptionSpecEncryptionSpec encryptionSpec,
    required String location,
    String? project,
  }) :
      encryptionSpec = pulumi.Input.asInput<EncryptionSpecEncryptionSpec>(encryptionSpec),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': pulumi.Input.mapInputValue<EncryptionSpecEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'location': location,
      'project': ?project,
    };
  }

  factory EncryptionSpecArgs.fromMap(Map<String, dynamic> map) {
    return EncryptionSpecArgs(
      encryptionSpec: EncryptionSpecEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

