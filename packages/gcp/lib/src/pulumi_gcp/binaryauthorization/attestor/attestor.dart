import 'package:pulumi/pulumi.dart' as pulumi;
import '../attestor_attestation_authority_note/attestor_attestation_authority_note.dart';
import 'attestor_args.dart';

/// An attestor that attests to container image artifacts.
///
///
/// To get more information about Attestor, see:
///
/// * [API documentation](https://cloud.google.com/binary-authorization/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/binary-authorization/)
///
/// ## Example Usage
///
/// ### Binary Authorization Attestor Basic
///
///
///
/// ### Binary Authorization Attestor Kms
///
///
///
///
/// ## Import
///
/// Attestor can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/attestors/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Attestor can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/attestor:Attestor default projects/{{project}}/attestors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/attestor:Attestor default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/attestor:Attestor default {{name}}
/// ```
class Attestor extends pulumi.CustomResource {
  /// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// Structure is documented below.
  late final pulumi.Output<AttestorAttestationAuthorityNote>
      attestationAuthorityNote;

  /// A descriptive comment. This field may be updated. The field may be
  /// displayed in chooser dialogs.
  late final pulumi.Output<String?> description;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  Attestor(
    String name, {
    AttestorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:binaryauthorization/attestor:Attestor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attestationAuthorityNote =
        registerOutput<AttestorAttestationAuthorityNote>(
            'attestationAuthorityNote');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
