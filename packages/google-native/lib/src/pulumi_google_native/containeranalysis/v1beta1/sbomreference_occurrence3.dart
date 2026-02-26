// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'envelope_signature3.dart';
import 'sbom_reference_intoto_payload3.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrence3 {
  /// The actual payload that contains the SBOM reference data.
  final SbomReferenceIntotoPayload3? payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final String? payloadType;

  /// The signatures over the payload.
  final List<EnvelopeSignature3>? signatures;

  SBOMReferenceOccurrence3({
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
          Input.encodeList<EnvelopeSignature3, Map<String, dynamic>>(
              signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SBOMReferenceOccurrence3.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrence3(
      payload: map['payload'] == null
          ? null
          : SbomReferenceIntotoPayload3.fromMap(
              (map['payload'] as Map).cast<String, dynamic>()),
      payloadType:
          map['payloadType'] == null ? null : map['payloadType'] as String,
      signatures: map['signatures'] == null
          ? null
          : Input.decodeList<EnvelopeSignature3>(
              map['signatures'],
              (value) => EnvelopeSignature3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
