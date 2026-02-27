// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'envelope_signature_response3.dart';
import 'sbom_reference_intoto_payload_response3.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrenceResponse3 {
  /// The actual payload that contains the SBOM reference data.
  final SbomReferenceIntotoPayloadResponse3 payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final String payloadType;

  /// The signatures over the payload.
  final List<EnvelopeSignatureResponse3> signatures;

  SBOMReferenceOccurrenceResponse3({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload.toMap();
    map['payloadType'] = payloadType;
    map['signatures'] =
        Input.encodeList<EnvelopeSignatureResponse3, Map<String, dynamic>>(
            signatures, (value) => value.toMap());
    return map;
  }

  factory SBOMReferenceOccurrenceResponse3.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrenceResponse3(
      payload: SbomReferenceIntotoPayloadResponse3.fromMap(
          (map['payload'] as Map).cast<String, dynamic>()),
      payloadType: map['payloadType'] as String,
      signatures: Input.decodeList<EnvelopeSignatureResponse3>(
          map['signatures'],
          (value) => EnvelopeSignatureResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
