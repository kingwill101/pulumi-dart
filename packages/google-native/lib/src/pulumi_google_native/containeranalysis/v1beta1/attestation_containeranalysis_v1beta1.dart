// ignore_for_file: unused_element, unnecessary_cast

import 'generic_signed_attestation.dart';
import 'pgp_signed_attestation_containeranalysis_v1beta1.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for look-up (how to find this attestation if you already know the authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationContaineranalysisV1beta1 {
  final GenericSignedAttestation? genericSignedAttestation;

  /// A PGP signed attestation.
  final PgpSignedAttestationContaineranalysisV1beta1? pgpSignedAttestation;

  AttestationContaineranalysisV1beta1({
    this.genericSignedAttestation,
    this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final genericSignedAttestationValue = genericSignedAttestation;
    if (genericSignedAttestationValue != null) {
      map['genericSignedAttestation'] = genericSignedAttestationValue.toMap();
    }
    final pgpSignedAttestationValue = pgpSignedAttestation;
    if (pgpSignedAttestationValue != null) {
      map['pgpSignedAttestation'] = pgpSignedAttestationValue.toMap();
    }
    return map;
  }

  factory AttestationContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AttestationContaineranalysisV1beta1(
      genericSignedAttestation: map['genericSignedAttestation'] == null
          ? null
          : GenericSignedAttestation.fromMap(
              (map['genericSignedAttestation'] as Map).cast<String, dynamic>()),
      pgpSignedAttestation: map['pgpSignedAttestation'] == null
          ? null
          : PgpSignedAttestationContaineranalysisV1beta1.fromMap(
              (map['pgpSignedAttestation'] as Map).cast<String, dynamic>()),
    );
  }
}
