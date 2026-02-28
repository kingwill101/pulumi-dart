// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_public_key_response_binaryauthorization_v1beta1.dart';

/// An user owned drydock note references a Drydock ATTESTATION_AUTHORITY Note created by the user.
class UserOwnedDrydockNoteResponse {
  /// This field will contain the service account email address that this Attestor will use as the principal when querying Container Analysis. Attestor administrators must grant this service account the IAM role needed to read attestations from the note_reference in Container Analysis (`containeranalysis.notes.occurrences.viewer`). This email address is fixed for the lifetime of the Attestor, but callers should not make any other assumptions about the service account email; future versions may use an email based on a different naming pattern.
  final String delegationServiceAccountEmail;

  /// The Drydock resource name of a ATTESTATION_AUTHORITY Note, created by the user, in the format: `projects/*/notes/*` (or the legacy `providers/*/notes/*`). This field may not be updated. An attestation by this attestor is stored as a Drydock ATTESTATION_AUTHORITY Occurrence that names a container image and that links to this Note. Drydock is an external dependency.
  final String noteReference;

  /// Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
  final List<AttestorPublicKeyResponseBinaryauthorizationV1beta1> publicKeys;

  /// Creates a new [UserOwnedDrydockNoteResponse].
  /// [delegationServiceAccountEmail] This field will contain the service account email address that this Attestor will use as the principal when querying Container Analysis. Attestor administrators must grant this service account the IAM role needed to read attestations from the note_reference in Container Analysis (`containeranalysis.notes.occurrences.viewer`). This email address is fixed for the lifetime of the Attestor, but callers should not make any other assumptions about the service account email; future versions may use an email based on a different naming pattern.
  /// [noteReference] The Drydock resource name of a ATTESTATION_AUTHORITY Note, created by the user, in the format: `projects/*/notes/*` (or the legacy `providers/*/notes/*`). This field may not be updated. An attestation by this attestor is stored as a Drydock ATTESTATION_AUTHORITY Occurrence that names a container image and that links to this Note. Drydock is an external dependency.
  /// [publicKeys] Optional. Public keys that verify attestations signed by this attestor. This field may be updated. If this field is non-empty, one of the specified public keys must verify that an attestation was signed by this attestor for the image specified in the admission request. If this field is empty, this attestor always returns that no valid attestations exist.
  UserOwnedDrydockNoteResponse({
    required this.delegationServiceAccountEmail,
    required this.noteReference,
    required this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['delegationServiceAccountEmail'] = delegationServiceAccountEmail;
    map['noteReference'] = noteReference;
    map['publicKeys'] = pulumi.Input.encodeList<
        AttestorPublicKeyResponseBinaryauthorizationV1beta1,
        Map<String, dynamic>>(publicKeys, (value) => value.toMap());
    return map;
  }

  factory UserOwnedDrydockNoteResponse.fromMap(Map<String, dynamic> map) {
    return UserOwnedDrydockNoteResponse(
      delegationServiceAccountEmail:
          map['delegationServiceAccountEmail'] as String,
      noteReference: map['noteReference'] as String,
      publicKeys: pulumi.Input.decodeList<
              AttestorPublicKeyResponseBinaryauthorizationV1beta1>(
          map['publicKeys'],
          (value) =>
              AttestorPublicKeyResponseBinaryauthorizationV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
