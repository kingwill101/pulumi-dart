// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'generic_signed_attestation_content_type.dart';
import 'signature_containeranalysis_v1beta1.dart';

/// An attestation wrapper that uses the Grafeas `Signature` message. This attestation must define the `serialized_payload` that the `signatures` verify and any metadata necessary to interpret that plaintext. The signatures should always be over the `serialized_payload` bytestring.
class GenericSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  final GenericSignedAttestationContentType? contentType;

  /// The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  final String? serializedPayload;

  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final List<SignatureContaineranalysisV1beta1>? signatures;

  /// Creates a new [GenericSignedAttestation].
  /// [contentType] Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  /// [serializedPayload] The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  /// [signatures] One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  GenericSignedAttestation({
    this.contentType,
    this.serializedPayload,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType == null ? null : contentType!.value,
      'serializedPayload': ?serializedPayload,
      'signatures': ?signatures == null
          ? null
          : pulumi.Input.encodeList<
              SignatureContaineranalysisV1beta1,
              Map<String, dynamic>
            >(signatures!, (value) => value.toMap()),
    };
  }

  factory GenericSignedAttestation.fromMap(Map<String, dynamic> map) {
    return GenericSignedAttestation(
      contentType: map['contentType'] == null
          ? null
          : GenericSignedAttestationContentType.fromValue(
              map['contentType'] as String,
            ),
      serializedPayload: map['serializedPayload'] == null
          ? null
          : map['serializedPayload'] as String,
      signatures: map['signatures'] == null
          ? null
          : pulumi.Input.decodeList<SignatureContaineranalysisV1beta1>(
              map['signatures'],
              (value) => SignatureContaineranalysisV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
