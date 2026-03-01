// ignore_for_file: unused_element, unnecessary_cast

import 'generic_signed_attestation.dart';
import 'pgp_signed_attestation_containeranalysis_v1beta1.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for look-up (how to find this attestation if you already know the authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationContaineranalysisV1beta1 {
  final GenericSignedAttestation? genericSignedAttestation;

  /// A PGP signed attestation.
  final PgpSignedAttestationContaineranalysisV1beta1? pgpSignedAttestation;

  /// Creates a new [AttestationContaineranalysisV1beta1].
  /// [genericSignedAttestation] Optional.
  /// [pgpSignedAttestation] A PGP signed attestation.
  AttestationContaineranalysisV1beta1({
    this.genericSignedAttestation,
    this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericSignedAttestation': ?genericSignedAttestation == null
          ? null
          : genericSignedAttestation!.toMap(),
      'pgpSignedAttestation': ?pgpSignedAttestation == null
          ? null
          : pgpSignedAttestation!.toMap(),
    };
  }

  factory AttestationContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttestationContaineranalysisV1beta1(
      genericSignedAttestation: map['genericSignedAttestation'] == null
          ? null
          : GenericSignedAttestation.fromMap(
              (map['genericSignedAttestation'] as Map).cast<String, dynamic>(),
            ),
      pgpSignedAttestation: map['pgpSignedAttestation'] == null
          ? null
          : PgpSignedAttestationContaineranalysisV1beta1.fromMap(
              (map['pgpSignedAttestation'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
