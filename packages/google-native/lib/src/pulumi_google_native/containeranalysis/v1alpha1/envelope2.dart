// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'envelope_signature2.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class Envelope2 {
  /// The bytes being signed
  final String? payload;

  /// The type of payload being signed
  final String? payloadType;

  /// The signatures over the payload
  final List<EnvelopeSignature2>? signatures;

  Envelope2({
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
          Input.encodeList<EnvelopeSignature2, Map<String, dynamic>>(
              signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Envelope2.fromMap(Map<String, dynamic> map) {
    return Envelope2(
      payload: map['payload'] == null ? null : map['payload'] as String,
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
