// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'user_owned_drydock_note.dart';

/// The set of arguments for Attestor.
class AttestorArgs2 {
  /// Required. The attestors ID.
  final Input<String> attestorId;

  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  final Input<String>? description;

  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  final Input<String>? etag;

  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  final Input<String>? name;
  final Input<String>? project;

  /// A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  final Input<UserOwnedDrydockNote>? userOwnedDrydockNote;

  AttestorArgs2({
    required this.attestorId,
    this.description,
    this.etag,
    this.name,
    this.project,
    this.userOwnedDrydockNote,
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
    final userOwnedDrydockNoteValue = userOwnedDrydockNote;
    if (userOwnedDrydockNoteValue != null) {
      map['userOwnedDrydockNote'] = Input.mapOptionalInputValue<
              UserOwnedDrydockNote, Map<String, dynamic>>(
          userOwnedDrydockNoteValue, (value) => value.toMap());
    }
    return map;
  }

  factory AttestorArgs2.fromMap(Map<String, dynamic> map) {
    return AttestorArgs2(
      attestorId: Input.asInput<String>(map['attestorId']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      userOwnedDrydockNote: Input.asOptionalInput<UserOwnedDrydockNote>(
          map['userOwnedDrydockNote']),
    );
  }
}
