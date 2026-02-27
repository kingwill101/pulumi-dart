// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwt_containeranalysis_v1.dart';
import 'signature.dart';

/// Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.
class AttestationOccurrence {
  /// One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
  final List<JwtContaineranalysisV1>? jwts;

  /// The serialized payload that is verified by one or more `signatures`.
  final String serializedPayload;

  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final List<Signature>? signatures;

  AttestationOccurrence({
    this.jwts,
    required this.serializedPayload,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jwtsValue = jwts;
    if (jwtsValue != null) {
      map['jwts'] =
          pulumi.Input.encodeList<JwtContaineranalysisV1, Map<String, dynamic>>(
              jwtsValue, (value) => value.toMap());
    }
    map['serializedPayload'] = serializedPayload;
    final signaturesValue = signatures;
    if (signaturesValue != null) {
      map['signatures'] =
          pulumi.Input.encodeList<Signature, Map<String, dynamic>>(
              signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AttestationOccurrence.fromMap(Map<String, dynamic> map) {
    return AttestationOccurrence(
      jwts: map['jwts'] == null
          ? null
          : pulumi.Input.decodeList<JwtContaineranalysisV1>(
              map['jwts'],
              (value) => JwtContaineranalysisV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serializedPayload: map['serializedPayload'] as String,
      signatures: map['signatures'] == null
          ? null
          : pulumi.Input.decodeList<Signature>(
              map['signatures'],
              (value) =>
                  Signature.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
