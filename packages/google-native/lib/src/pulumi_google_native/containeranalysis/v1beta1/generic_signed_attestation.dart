// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'generic_signed_attestation_content_type.dart';
import 'signature2.dart';

/// An attestation wrapper that uses the Grafeas `Signature` message. This attestation must define the `serialized_payload` that the `signatures` verify and any metadata necessary to interpret that plaintext. The signatures should always be over the `serialized_payload` bytestring.
class GenericSignedAttestation {
  /// Type (for example schema) of the attestation payload that was signed. The verifier must ensure that the provided type is one that the verifier supports, and that the attestation payload is a valid instantiation of that type (for example by validating a JSON schema).
  final GenericSignedAttestationContentType? contentType;

  /// The serialized payload that is verified by one or more `signatures`. The encoding and semantic meaning of this payload must match what is set in `content_type`.
  final String? serializedPayload;

  /// One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  final List<Signature2>? signatures;

  GenericSignedAttestation({
    this.contentType,
    this.serializedPayload,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue.value;
    }
    final serializedPayloadValue = serializedPayload;
    if (serializedPayloadValue != null) {
      map['serializedPayload'] = serializedPayloadValue;
    }
    final signaturesValue = signatures;
    if (signaturesValue != null) {
      map['signatures'] = Input.encodeList<Signature2, Map<String, dynamic>>(
          signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GenericSignedAttestation.fromMap(Map<String, dynamic> map) {
    return GenericSignedAttestation(
      contentType: map['contentType'] == null
          ? null
          : GenericSignedAttestationContentType.fromValue(
              map['contentType'] as String),
      serializedPayload: map['serializedPayload'] == null
          ? null
          : map['serializedPayload'] as String,
      signatures: map['signatures'] == null
          ? null
          : Input.decodeList<Signature2>(
              map['signatures'],
              (value) =>
                  Signature2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
