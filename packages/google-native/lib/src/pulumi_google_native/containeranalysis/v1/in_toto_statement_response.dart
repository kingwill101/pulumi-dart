// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'in_toto_provenance_response.dart';
import 'slsa_provenance_response.dart';
import 'slsa_provenance_zero_two_response.dart';
import 'subject_response.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementResponse {
  /// `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  final String predicateType;
  final InTotoProvenanceResponse provenance;
  final SlsaProvenanceResponse slsaProvenance;
  final SlsaProvenanceZeroTwoResponse slsaProvenanceZeroTwo;
  final List<SubjectResponse> subject;

  /// Always `https://in-toto.io/Statement/v0.1`.
  final String type;

  InTotoStatementResponse({
    required this.predicateType,
    required this.provenance,
    required this.slsaProvenance,
    required this.slsaProvenanceZeroTwo,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predicateType'] = predicateType;
    map['provenance'] = provenance.toMap();
    map['slsaProvenance'] = slsaProvenance.toMap();
    map['slsaProvenanceZeroTwo'] = slsaProvenanceZeroTwo.toMap();
    map['subject'] = Input.encodeList<SubjectResponse, Map<String, dynamic>>(
        subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoStatementResponse.fromMap(Map<String, dynamic> map) {
    return InTotoStatementResponse(
      predicateType: map['predicateType'] as String,
      provenance: InTotoProvenanceResponse.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      slsaProvenance: SlsaProvenanceResponse.fromMap(
          (map['slsaProvenance'] as Map).cast<String, dynamic>()),
      slsaProvenanceZeroTwo: SlsaProvenanceZeroTwoResponse.fromMap(
          (map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>()),
      subject: Input.decodeList<SubjectResponse>(
          map['subject'],
          (value) =>
              SubjectResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
