// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'envelope_signature_response.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponse {
  final String payload;
  final String payloadType;
  final List<EnvelopeSignatureResponse> signatures;

  EnvelopeResponse({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    map['payloadType'] = payloadType;
    map['signatures'] =
        Input.encodeList<EnvelopeSignatureResponse, Map<String, dynamic>>(
            signatures, (value) => value.toMap());
    return map;
  }

  factory EnvelopeResponse.fromMap(Map<String, dynamic> map) {
    return EnvelopeResponse(
      payload: map['payload'] as String,
      payloadType: map['payloadType'] as String,
      signatures: Input.decodeList<EnvelopeSignatureResponse>(
          map['signatures'],
          (value) => EnvelopeSignatureResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
