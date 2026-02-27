// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'in_toto_provenance_response2.dart';
import 'slsa_provenance_response2.dart';
import 'slsa_provenance_zero_two_response2.dart';
import 'subject_response2.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementResponse2 {
  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  final String predicateType;

  /// Generic Grafeas provenance.
  final InTotoProvenanceResponse2 provenance;

  /// SLSA 0.1 provenance.
  final SlsaProvenanceResponse2 slsaProvenance;

  /// SLSA 0.2 provenance.
  final SlsaProvenanceZeroTwoResponse2 slsaProvenanceZeroTwo;

  /// subject is the subjects of the intoto statement
  final List<SubjectResponse2> subject;

  /// Always "https://in-toto.io/Statement/v0.1".
  final String type;

  InTotoStatementResponse2({
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
    map['subject'] = Input.encodeList<SubjectResponse2, Map<String, dynamic>>(
        subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoStatementResponse2.fromMap(Map<String, dynamic> map) {
    return InTotoStatementResponse2(
      predicateType: map['predicateType'] as String,
      provenance: InTotoProvenanceResponse2.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      slsaProvenance: SlsaProvenanceResponse2.fromMap(
          (map['slsaProvenance'] as Map).cast<String, dynamic>()),
      slsaProvenanceZeroTwo: SlsaProvenanceZeroTwoResponse2.fromMap(
          (map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>()),
      subject: Input.decodeList<SubjectResponse2>(
          map['subject'],
          (value) =>
              SubjectResponse2.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
