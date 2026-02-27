// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'attestor_public_key.dart';

/// An user owned Grafeas note references a Grafeas Attestation.Authority Note created by the user.
class UserOwnedGrafeasNote {
  /// The Grafeas resource name of a Attestation.Authority Note, created by the user, in the format: `projects/*/notes/*`. This field may not be updated. An attestation by this attestor is stored as a Grafeas Attestation.Authority Occurrence that names a container image and that links to this Note. Grafeas is an external dependency.
  final String noteReference;

  /// Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
  final List<AttestorPublicKey>? publicKeys;

  UserOwnedGrafeasNote({
    required this.noteReference,
    this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noteReference'] = noteReference;
    final publicKeysValue = publicKeys;
    if (publicKeysValue != null) {
      map['publicKeys'] =
          Input.encodeList<AttestorPublicKey, Map<String, dynamic>>(
              publicKeysValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserOwnedGrafeasNote.fromMap(Map<String, dynamic> map) {
    return UserOwnedGrafeasNote(
      noteReference: map['noteReference'] as String,
      publicKeys: map['publicKeys'] == null
          ? null
          : Input.decodeList<AttestorPublicKey>(
              map['publicKeys'],
              (value) => AttestorPublicKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
