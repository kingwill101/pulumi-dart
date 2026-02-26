// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'envelope_signature_response3.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponse3 {
  final String payload;
  final String payloadType;
  final List<EnvelopeSignatureResponse3> signatures;

  EnvelopeResponse3({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    map['payloadType'] = payloadType;
    map['signatures'] =
        Input.encodeList<EnvelopeSignatureResponse3, Map<String, dynamic>>(
            signatures, (value) => value.toMap());
    return map;
  }

  factory EnvelopeResponse3.fromMap(Map<String, dynamic> map) {
    return EnvelopeResponse3(
      payload: map['payload'] as String,
      payloadType: map['payloadType'] as String,
      signatures: Input.decodeList<EnvelopeSignatureResponse3>(
          map['signatures'],
          (value) => EnvelopeSignatureResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
