import 'package:pulumi/pulumi.dart' as pulumi;
import '../encryption_spec_encryption_spec/encryption_spec_encryption_spec.dart';
import 'encryption_spec_args.dart';

/// Initializes a location-level encryption key specification.
///
///
/// To get more information about EncryptionSpec, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.locations.encryptionSpec)
/// * How-to Guides
/// * [Official CX Documentation](https://cloud.google.com/dialogflow/cx/docs)
/// * [Official ES Documentation](https://cloud.google.com/dialogflow/es/docs)
///
/// ## Example Usage
///
/// ### Dialogflow Encryption Spec Basic
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class EncryptionSpec extends pulumi.CustomResource {
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<EncryptionSpecEncryptionSpec> encryptionSpec;

  /// The location in which the encryptionSpec is to be initialized.
  late final pulumi.Output<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  EncryptionSpec(
    String name, {
    EncryptionSpecArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/encryptionSpec:EncryptionSpec',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptionSpec =
        registerOutput<EncryptionSpecEncryptionSpec>('encryptionSpec');
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
  }
}
