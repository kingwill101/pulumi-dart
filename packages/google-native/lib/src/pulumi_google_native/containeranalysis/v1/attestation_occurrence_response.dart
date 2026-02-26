// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'jwt_response2.dart';
import 'signature_response.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.
class AttestationOccurrenceResponse {
  /// One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
  final List<JwtResponse2> jwts;

  /// The serialized payload that is verified by one or more `signatures`.
  final String serializedPayload;

  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final List<SignatureResponse> signatures;

  AttestationOccurrenceResponse({
    required this.jwts,
    required this.serializedPayload,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jwts'] = Input.encodeList<JwtResponse2, Map<String, dynamic>>(
        jwts, (value) => value.toMap());
    map['serializedPayload'] = serializedPayload;
    map['signatures'] =
        Input.encodeList<SignatureResponse, Map<String, dynamic>>(
            signatures, (value) => value.toMap());
    return map;
  }

  factory AttestationOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return AttestationOccurrenceResponse(
      jwts: Input.decodeList<JwtResponse2>(
          map['jwts'],
          (value) =>
              JwtResponse2.fromMap((value as Map).cast<String, dynamic>())),
      serializedPayload: map['serializedPayload'] as String,
      signatures: Input.decodeList<SignatureResponse>(
          map['signatures'],
          (value) => SignatureResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
