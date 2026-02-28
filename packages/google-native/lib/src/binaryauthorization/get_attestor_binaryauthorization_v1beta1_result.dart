// ignore_for_file: unused_element, unnecessary_cast

import 'user_owned_drydock_note_response.dart';

/// Result data returned by getAttestor.
class GetAttestorBinaryauthorizationV1beta1Result {
  /// Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  final String description;

  /// Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  final String etag;

  /// The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  final String name;

  /// Time when the attestor was last updated.
  final String updateTime;

  /// A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  final UserOwnedDrydockNoteResponse userOwnedDrydockNote;

  /// Creates a new [GetAttestorBinaryauthorizationV1beta1Result].
  /// [description] Optional. A descriptive comment. This field may be updated. The field may be displayed in chooser dialogs.
  /// [etag] Optional. A checksum, returned by the server, that can be sent on update requests to ensure the attestor has an up-to-date value before attempting to update it. See https://google.aip.dev/154.
  /// [name] The resource name, in the format: `projects/*/attestors/*`. This field may not be updated.
  /// [updateTime] Time when the attestor was last updated.
  /// [userOwnedDrydockNote] A Drydock ATTESTATION_AUTHORITY Note, created by the user.
  GetAttestorBinaryauthorizationV1beta1Result({
    required this.description,
    required this.etag,
    required this.name,
    required this.updateTime,
    required this.userOwnedDrydockNote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['etag'] = etag;
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['userOwnedDrydockNote'] = userOwnedDrydockNote.toMap();
    return map;
  }

  factory GetAttestorBinaryauthorizationV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetAttestorBinaryauthorizationV1beta1Result(
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      userOwnedDrydockNote: UserOwnedDrydockNoteResponse.fromMap(
          (map['userOwnedDrydockNote'] as Map).cast<String, dynamic>()),
    );
  }
}
