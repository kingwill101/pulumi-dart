// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'attestor_public_key2.dart';

/// An user owned drydock note references a Drydock ATTESTATION_AUTHORITY Note created by the user.
class UserOwnedDrydockNote {
  /// The Drydock resource name of a ATTESTATION_AUTHORITY Note, created by the user, in the format: `projects/*/notes/*` (or the legacy `providers/*/notes/*`). This field may not be updated. An attestation by this attestor is stored as a Drydock ATTESTATION_AUTHORITY Occurrence that names a container image and that links to this Note. Drydock is an external dependency.
  final String noteReference;

  /// Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
  final List<AttestorPublicKey2>? publicKeys;

  UserOwnedDrydockNote({
    required this.noteReference,
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noteReference'] = noteReference;
    final publicKeysValue = publicKeys;
    if (publicKeysValue != null) {
      map['publicKeys'] =
          Input.encodeList<AttestorPublicKey2, Map<String, dynamic>>(
              publicKeysValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserOwnedDrydockNote.fromMap(Map<String, dynamic> map) {
    return UserOwnedDrydockNote(
      noteReference: map['noteReference'] as String,
      publicKeys: map['publicKeys'] == null
          ? null
          : Input.decodeList<AttestorPublicKey2>(
              map['publicKeys'],
              (value) => AttestorPublicKey2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
