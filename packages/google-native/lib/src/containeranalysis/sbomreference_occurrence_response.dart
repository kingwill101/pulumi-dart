// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response.dart';
import 'sbom_reference_intoto_payload_response.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrenceResponse {
  /// The actual payload that contains the SBOM reference data.
  final SbomReferenceIntotoPayloadResponse payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final String payloadType;

  /// The signatures over the payload.
  final List<EnvelopeSignatureResponse> signatures;

  /// Creates a new [SBOMReferenceOccurrenceResponse].
  /// [payload] The actual payload that contains the SBOM reference data.
  /// [payloadType] The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  /// [signatures] The signatures over the payload.
  SBOMReferenceOccurrenceResponse({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload.toMap(),
      'payloadType': payloadType,
      'signatures':
          pulumi.Input.encodeList<
            EnvelopeSignatureResponse,
            Map<String, dynamic>
          >(signatures, (value) => value.toMap()),
    };
  }

  factory SBOMReferenceOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrenceResponse(
      payload: SbomReferenceIntotoPayloadResponse.fromMap(
        (map['payload'] as Map).cast<String, dynamic>(),
      ),
      payloadType: map['payloadType'] as String,
      signatures: pulumi.Input.decodeList<EnvelopeSignatureResponse>(
        map['signatures'],
        (value) => EnvelopeSignatureResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
