// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_response_containeranalysis_v1beta1.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeResponseContaineranalysisV1beta1 {
  final String payload;
  final String payloadType;
  final List<EnvelopeSignatureResponseContaineranalysisV1beta1> signatures;

  EnvelopeResponseContaineranalysisV1beta1({
    required this.payload,
    required this.payloadType,
    required this.signatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    map['payloadType'] = payloadType;
    map['signatures'] = pulumi.Input.encodeList<
        EnvelopeSignatureResponseContaineranalysisV1beta1,
        Map<String, dynamic>>(signatures, (value) => value.toMap());
    return map;
  }

  factory EnvelopeResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EnvelopeResponseContaineranalysisV1beta1(
      payload: map['payload'] as String,
      payloadType: map['payloadType'] as String,
      signatures: pulumi.Input.decodeList<
              EnvelopeSignatureResponseContaineranalysisV1beta1>(
          map['signatures'],
          (value) => EnvelopeSignatureResponseContaineranalysisV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
