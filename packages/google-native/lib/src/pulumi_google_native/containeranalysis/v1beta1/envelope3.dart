// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'envelope_signature3.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class Envelope3 {
  final String? payload;
  final String? payloadType;
  final List<EnvelopeSignature3>? signatures;

  Envelope3({
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
          Input.encodeList<EnvelopeSignature3, Map<String, dynamic>>(
              signaturesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Envelope3.fromMap(Map<String, dynamic> map) {
    return Envelope3(
      payload: map['payload'] == null ? null : map['payload'] as String,
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
