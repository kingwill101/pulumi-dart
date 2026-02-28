// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class Envelope {
  final String? payload;
  final String? payloadType;
  final List<EnvelopeSignature>? signatures;

  /// Creates a new [Envelope].
  /// [payload] Optional.
  /// [payloadType] Optional.
  /// [signatures] Optional.
  Envelope({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final payloadValue = payload;
    if (payloadValue != null) {
      map['payload'] = payloadValue;
    }
    final payloadTypeValue = payloadType;
    if (payloadTypeValue != null) {
      map['payloadType'] = payloadTypeValue;
    }
    final signaturesValue = signatures;
    if (signaturesValue != null) {
      map['signatures'] =
          pulumi.Input.encodeList<EnvelopeSignature, Map<String, dynamic>>(
              signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Envelope.fromMap(Map<String, dynamic> map) {
    return Envelope(
      payload: map['payload'] == null ? null : map['payload'] as String,
      payloadType:
          map['payloadType'] == null ? null : map['payloadType'] as String,
      signatures: map['signatures'] == null
          ? null
          : pulumi.Input.decodeList<EnvelopeSignature>(
              map['signatures'],
              (value) => EnvelopeSignature.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
