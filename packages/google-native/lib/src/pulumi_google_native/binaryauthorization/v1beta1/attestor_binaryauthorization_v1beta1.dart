import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_binaryauthorization_v1beta1_args.dart';
import 'user_owned_drydock_note_response.dart';

/// Creates an attestor, and returns a copy of the new attestor. Returns NOT_FOUND if the project does not exist, INVALID_ARGUMENT if the request is malformed, ALREADY_EXISTS if the attestor already exists.
class AttestorBinaryauthorizationV1beta1 extends pulumi.CustomResource {
  /// Required. The attestors ID.
  late final pulumi.Output<String> attestorId;

  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  late final pulumi.Output<String> description;

  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  late final pulumi.Output<String> etag;

  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Time when the attestor was last updated.
  late final pulumi.Output<String> updateTime;

  /// A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  late final pulumi.Output<UserOwnedDrydockNoteResponse> userOwnedDrydockNote;

  AttestorBinaryauthorizationV1beta1(
    String name, {
    AttestorBinaryauthorizationV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:binaryauthorization/v1beta1:Attestor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attestorId = registerOutput<String>('attestorId');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.userOwnedDrydockNote =
        registerOutput<UserOwnedDrydockNoteResponse>('userOwnedDrydockNote');
  }
}
