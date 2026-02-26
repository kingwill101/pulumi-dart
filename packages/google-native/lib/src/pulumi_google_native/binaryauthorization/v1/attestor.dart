import 'package:pulumi/pulumi.dart';
import 'attestor_args.dart';
import 'user_owned_grafeas_note_response.dart';

/// Creates an attestor, and returns a copy of the new attestor. Returns `NOT_FOUND` if the project does not exist, `INVALID_ARGUMENT` if the request is malformed, `ALREADY_EXISTS` if the attestor already exists.
class Attestor extends CustomResource {
  /// Required. The attestors ID.
  late final Output<String> attestorId;

  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  late final Output<String> description;

  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  late final Output<String> etag;

  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  late final Output<String> name;
  late final Output<String> project;

  /// Time when the attestor was last updated.
  late final Output<String> updateTime;

  /// This specifies how an attestation will be read, and how it will be used during policy enforcement.
  late final Output<UserOwnedGrafeasNoteResponse> userOwnedGrafeasNote;

  Attestor(
    String name, {
    AttestorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:binaryauthorization/v1:Attestor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestorId = registerOutput<String>('attestorId');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.userOwnedGrafeasNote =
        registerOutput<UserOwnedGrafeasNoteResponse>('userOwnedGrafeasNote');
  }
}
