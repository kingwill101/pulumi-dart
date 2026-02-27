// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response_containeranalysis_v1alpha1.dart';
import 'sbom_reference_intoto_payload_response_containeranalysis_v1alpha1.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1 {
  /// The actual payload that contains the SBOM reference data.
  final SbomReferenceIntotoPayloadResponseContaineranalysisV1alpha1 payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final String payloadType;

  /// The signatures over the payload.
  final List<EnvelopeSignatureResponseContaineranalysisV1alpha1> signatures;

  SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload.toMap();
    map['payloadType'] = payloadType;
    map['signatures'] = pulumi.Input.encodeList<
        EnvelopeSignatureResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(signatures, (value) => value.toMap());
    return map;
  }

  factory SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1(
      payload:
          SbomReferenceIntotoPayloadResponseContaineranalysisV1alpha1.fromMap(
              (map['payload'] as Map).cast<String, dynamic>()),
      payloadType: map['payloadType'] as String,
      signatures: pulumi.Input.decodeList<
              EnvelopeSignatureResponseContaineranalysisV1alpha1>(
          map['signatures'],
          (value) => EnvelopeSignatureResponseContaineranalysisV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
