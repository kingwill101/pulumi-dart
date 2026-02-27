// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'attestor_public_key_response.dart';

/// An user owned Grafeas note references a Grafeas Attestation.Authority Note created by the user.
class UserOwnedGrafeasNoteResponse {
  /// This field will contain the service account email address that this attestor will use as the principal when querying Container Analysis. Attestor administrators must grant this service account the IAM role needed to read attestations from the note_reference in Container Analysis (`containeranalysis.notes.occurrences.viewer`). This email address is fixed for the lifetime of the attestor, but callers should not make any other assumptions about the service account email; future versions may use an email based on a different naming pattern.
  final String delegationServiceAccountEmail;

  /// The Grafeas resource name of a Attestation.Authority Note, created by the user, in the format: `projects/*/notes/*`. This field may not be updated. An attestation by this attestor is stored as a Grafeas Attestation.Authority Occurrence that names a container image and that links to this Note. Grafeas is an external dependency.
  final String noteReference;

  /// Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
  final List<AttestorPublicKeyResponse> publicKeys;

  UserOwnedGrafeasNoteResponse({
    required this.delegationServiceAccountEmail,
    required this.noteReference,
    required this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delegationServiceAccountEmail'] = delegationServiceAccountEmail;
    map['noteReference'] = noteReference;
    map['publicKeys'] =
        Input.encodeList<AttestorPublicKeyResponse, Map<String, dynamic>>(
            publicKeys, (value) => value.toMap());
    return map;
  }

  factory UserOwnedGrafeasNoteResponse.fromMap(Map<String, dynamic> map) {
    return UserOwnedGrafeasNoteResponse(
      delegationServiceAccountEmail:
          map['delegationServiceAccountEmail'] as String,
      noteReference: map['noteReference'] as String,
      publicKeys: Input.decodeList<AttestorPublicKeyResponse>(
          map['publicKeys'],
          (value) => AttestorPublicKeyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
