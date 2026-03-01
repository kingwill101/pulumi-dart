// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_signature_containeranalysis_v1alpha1.dart';

/// MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.proto. An authenticated message of arbitrary type.
class EnvelopeContaineranalysisV1alpha1 {
  /// The bytes being signed
  final String? payload;

  /// The type of payload being signed
  final String? payloadType;

  /// The signatures over the payload
  final List<EnvelopeSignatureContaineranalysisV1alpha1>? signatures;

  /// Creates a new [EnvelopeContaineranalysisV1alpha1].
  /// [payload] The bytes being signed
  /// [payloadType] The type of payload being signed
  /// [signatures] The signatures over the payload
  EnvelopeContaineranalysisV1alpha1({
    this.payload,
    this.payloadType,
    this.signatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload,
      'payloadType': ?payloadType,
      'signatures': ?signatures == null
          ? null
          : pulumi.Input.encodeList<
              EnvelopeSignatureContaineranalysisV1alpha1,
              Map<String, dynamic>
            >(signatures!, (value) => value.toMap()),
    };
  }

  factory EnvelopeContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return EnvelopeContaineranalysisV1alpha1(
      payload: map['payload'] == null ? null : map['payload'] as String,
      payloadType: map['payloadType'] == null
          ? null
          : map['payloadType'] as String,
      signatures: map['signatures'] == null
          ? null
          : pulumi.Input.decodeList<EnvelopeSignatureContaineranalysisV1alpha1>(
              map['signatures'],
              (value) => EnvelopeSignatureContaineranalysisV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
