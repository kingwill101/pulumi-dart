// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signature_response_containeranalysis_v1beta1.dart';

/// An attestation wrapper that uses the Grafeas `Signature` message. This attestation must define the `serialized_payload` that the `signatures` verify and any metadata necessary to interpret that plaintext. The signatures should always be over the `serialized_payload` bytestring.
class GenericSignedAttestationResponse {
  /// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  final String contentType;

  /// The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  final String serializedPayload;

  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final List<SignatureResponseContaineranalysisV1beta1> signatures;

  /// Creates a new [GenericSignedAttestationResponse].
  /// [contentType] Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  /// [serializedPayload] The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  /// [signatures] One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  GenericSignedAttestationResponse({
    required this.contentType,
    required this.serializedPayload,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    map['serializedPayload'] = serializedPayload;
    map['signatures'] = pulumi.Input.encodeList<
        SignatureResponseContaineranalysisV1beta1,
        Map<String, dynamic>>(signatures, (value) => value.toMap());
    return map;
  }

  factory GenericSignedAttestationResponse.fromMap(Map<String, dynamic> map) {
    return GenericSignedAttestationResponse(
      contentType: map['contentType'] as String,
      serializedPayload: map['serializedPayload'] as String,
      signatures:
          pulumi.Input.decodeList<SignatureResponseContaineranalysisV1beta1>(
              map['signatures'],
              (value) => SignatureResponseContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
