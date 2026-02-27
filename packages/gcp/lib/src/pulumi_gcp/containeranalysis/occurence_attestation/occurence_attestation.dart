// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../occurence_attestation_signature/occurence_attestation_signature.dart';

class OccurenceAttestation {
  /// The serialized payload that is verified by one or
  /// more signatures. A base64-encoded string.
  final String serializedPayload;

  /// One or more signatures over serializedPayload.
  /// Verifier implementations should consider this attestation
  /// message verified if at least one signature verifies
  /// serializedPayload. See Signature in common.proto for more
  /// details on signature structure and verification.
  /// Structure is documented below.
  final List<OccurenceAttestationSignature> signatures;

  OccurenceAttestation({
    required this.serializedPayload,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serializedPayload'] = serializedPayload;
    map['signatures'] = pulumi.Input.encodeList<OccurenceAttestationSignature,
        Map<String, dynamic>>(signatures, (value) => value.toMap());
    return map;
  }

  factory OccurenceAttestation.fromMap(Map<String, dynamic> map) {
    return OccurenceAttestation(
      serializedPayload: map['serializedPayload'] as String,
      signatures: pulumi.Input.decodeList<OccurenceAttestationSignature>(
          map['signatures'],
          (value) => OccurenceAttestationSignature.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
