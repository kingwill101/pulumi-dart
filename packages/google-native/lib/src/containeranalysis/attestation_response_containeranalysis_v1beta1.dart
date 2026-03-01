// ignore_for_file: unused_element, unnecessary_cast

import 'generic_signed_attestation_response.dart';
import 'pgp_signed_attestation_response_containeranalysis_v1beta1.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for look-up (how to find this attestation if you already know the authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationResponseContaineranalysisV1beta1 {
  final GenericSignedAttestationResponse genericSignedAttestation;

  /// A PGP signed attestation.
  final PgpSignedAttestationResponseContaineranalysisV1beta1
  pgpSignedAttestation;

  /// Creates a new [AttestationResponseContaineranalysisV1beta1].
  /// [genericSignedAttestation] Required.
  /// [pgpSignedAttestation] A PGP signed attestation.
  AttestationResponseContaineranalysisV1beta1({
    required this.genericSignedAttestation,
    required this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericSignedAttestation': genericSignedAttestation.toMap(),
      'pgpSignedAttestation': pgpSignedAttestation.toMap(),
    };
  }

  factory AttestationResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttestationResponseContaineranalysisV1beta1(
      genericSignedAttestation: GenericSignedAttestationResponse.fromMap(
        (map['genericSignedAttestation'] as Map).cast<String, dynamic>(),
      ),
      pgpSignedAttestation:
          PgpSignedAttestationResponseContaineranalysisV1beta1.fromMap(
            (map['pgpSignedAttestation'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
