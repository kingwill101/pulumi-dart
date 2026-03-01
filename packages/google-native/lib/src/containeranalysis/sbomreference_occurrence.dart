// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature.dart';
import 'sbom_reference_intoto_payload.dart';

/// The occurrence representing an SBOM reference as applied to a specific resource. The occurrence follows the DSSE specification. See https://github.com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
class SBOMReferenceOccurrence {
  /// The actual payload that contains the SBOM reference data.
  final SbomReferenceIntotoPayload? payload;

  /// The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  final String? payloadType;

  /// The signatures over the payload.
  final List<EnvelopeSignature>? signatures;

  /// Creates a new [SBOMReferenceOccurrence].
  /// [payload] The actual payload that contains the SBOM reference data.
  /// [payloadType] The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the intoto format, this value is expected to be 'application/vnd.in-toto+json'.
  /// [signatures] The signatures over the payload.
  SBOMReferenceOccurrence({this.payload, this.payloadType, this.signatures});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload == null ? null : payload!.toMap(),
      'payloadType': ?payloadType,
      'signatures': ?signatures == null
          ? null
          : pulumi.Input.encodeList<EnvelopeSignature, Map<String, dynamic>>(
              signatures!,
              (value) => value.toMap(),
            ),
    };
  }

  factory SBOMReferenceOccurrence.fromMap(Map<String, dynamic> map) {
    return SBOMReferenceOccurrence(
      payload: map['payload'] == null
          ? null
          : SbomReferenceIntotoPayload.fromMap(
              (map['payload'] as Map).cast<String, dynamic>(),
            ),
      payloadType: map['payloadType'] == null
          ? null
          : map['payloadType'] as String,
      signatures: map['signatures'] == null
          ? null
          : pulumi.Input.decodeList<EnvelopeSignature>(
              map['signatures'],
              (value) => EnvelopeSignature.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
