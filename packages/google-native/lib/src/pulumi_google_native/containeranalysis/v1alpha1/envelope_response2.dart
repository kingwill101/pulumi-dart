// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'envelope_signature_response2.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponse2 {
  /// The bytes being signed
  final String payload;

  /// The type of payload being signed
  final String payloadType;

  /// The signatures over the payload
  final List<EnvelopeSignatureResponse2> signatures;

  EnvelopeResponse2({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    map['payloadType'] = payloadType;
    map['signatures'] =
        Input.encodeList<EnvelopeSignatureResponse2, Map<String, dynamic>>(
            signatures, (value) => value.toMap());
    return map;
  }

  factory EnvelopeResponse2.fromMap(Map<String, dynamic> map) {
    return EnvelopeResponse2(
      payload: map['payload'] as String,
      payloadType: map['payloadType'] as String,
      signatures: Input.decodeList<EnvelopeSignatureResponse2>(
          map['signatures'],
          (value) => EnvelopeSignatureResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
