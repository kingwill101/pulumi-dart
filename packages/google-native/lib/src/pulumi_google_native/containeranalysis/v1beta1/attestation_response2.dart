// ignore_for_file: unused_element, unnecessary_cast

import 'generic_signed_attestation_response.dart';
import 'pgp_signed_attestation_response2.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for look-up (how to find this attestation if you already know the authority and artifact to be verified) and intent (which authority was this attestation intended to sign for).
class AttestationResponse2 {
  final GenericSignedAttestationResponse genericSignedAttestation;

  /// A PGP signed attestation.
  final PgpSignedAttestationResponse2 pgpSignedAttestation;

  AttestationResponse2({
    required this.genericSignedAttestation,
    required this.pgpSignedAttestation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['genericSignedAttestation'] = genericSignedAttestation.toMap();
    map['pgpSignedAttestation'] = pgpSignedAttestation.toMap();
    return map;
  }

  factory AttestationResponse2.fromMap(Map<String, dynamic> map) {
    return AttestationResponse2(
      genericSignedAttestation: GenericSignedAttestationResponse.fromMap(
          (map['genericSignedAttestation'] as Map).cast<String, dynamic>()),
      pgpSignedAttestation: PgpSignedAttestationResponse2.fromMap(
          (map['pgpSignedAttestation'] as Map).cast<String, dynamic>()),
    );
  }
}
