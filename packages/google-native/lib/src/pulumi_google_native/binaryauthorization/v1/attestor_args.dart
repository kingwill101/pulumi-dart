// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_owned_grafeas_note.dart';

/// The set of arguments for Attestor.
class AttestorArgs {
  /// Required. The attestors ID.
  final pulumi.Input<String> attestorId;

  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  final pulumi.Input<String>? description;

  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  final pulumi.Input<String>? etag;

  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// This specifies how an attestation will be read, and how it will be used during policy enforcement.
  final pulumi.Input<UserOwnedGrafeasNote>? userOwnedGrafeasNote;

  AttestorArgs({
    required this.attestorId,
    this.description,
    this.etag,
    this.name,
    this.project,
    this.userOwnedGrafeasNote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestorId'] = attestorId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final userOwnedGrafeasNoteValue = userOwnedGrafeasNote;
    if (userOwnedGrafeasNoteValue != null) {
      map['userOwnedGrafeasNote'] = pulumi.Input.mapOptionalInputValue<
              UserOwnedGrafeasNote, Map<String, dynamic>>(
          userOwnedGrafeasNoteValue, (value) => value.toMap());
    }
    return map;
  }

  factory AttestorArgs.fromMap(Map<String, dynamic> map) {
    return AttestorArgs(
      attestorId: pulumi.Input.asInput<String>(map['attestorId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      userOwnedGrafeasNote: pulumi.Input.asOptionalInput<UserOwnedGrafeasNote>(
          map['userOwnedGrafeasNote']),
    );
  }
}
