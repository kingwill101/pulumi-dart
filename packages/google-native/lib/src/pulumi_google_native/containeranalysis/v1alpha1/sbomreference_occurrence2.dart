// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'envelope_signature2.dart';
import 'sbom_reference_intoto_payload2.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrence2 {
  /// The actual payload that contains the SBOM reference data.
  final SbomReferenceIntotoPayload2? payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final String? payloadType;

  /// The signatures over the payload.
  final List<EnvelopeSignature2>? signatures;

  SBOMReferenceOccurrence2({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final payloadValue = payload;
    if (payloadValue != null) {
      map['payload'] = payloadValue.toMap();
    }
    final payloadTypeValue = payloadType;
    if (payloadTypeValue != null) {
      map['payloadType'] = payloadTypeValue;
    }
    final signaturesValue = signatures;
    if (signaturesValue != null) {
      map['signatures'] =
          Input.encodeList<EnvelopeSignature2, Map<String, dynamic>>(
              signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SBOMReferenceOccurrence2.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrence2(
      payload: map['payload'] == null
          ? null
          : SbomReferenceIntotoPayload2.fromMap(
              (map['payload'] as Map).cast<String, dynamic>()),
      payloadType:
          map['payloadType'] == null ? null : map['payloadType'] as String,
      signatures: map['signatures'] == null
          ? null
          : Input.decodeList<EnvelopeSignature2>(
              map['signatures'],
              (value) => EnvelopeSignature2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
