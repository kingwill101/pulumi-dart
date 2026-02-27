// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../attestor_attestation_authority_note/attestor_attestation_authority_note.dart';

/// The set of arguments for Attestor.
class AttestorArgs {
  /// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// Structure is documented below.
  final pulumi.Input<AttestorAttestationAuthorityNote> attestationAuthorityNote;

  /// A descriptive comment. This field may be updated. The field may be
  /// displayed in chooser dialogs.
  final pulumi.Input<String>? description;

  /// The resource name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AttestorArgs({
    required this.attestationAuthorityNote,
    this.description,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestationAuthorityNote'] = pulumi.Input.mapInputValue<
            AttestorAttestationAuthorityNote, Map<String, dynamic>>(
        attestationAuthorityNote, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AttestorArgs.fromMap(Map<String, dynamic> map) {
    return AttestorArgs(
      attestationAuthorityNote:
          pulumi.Input.asInput<AttestorAttestationAuthorityNote>(
              map['attestationAuthorityNote']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
