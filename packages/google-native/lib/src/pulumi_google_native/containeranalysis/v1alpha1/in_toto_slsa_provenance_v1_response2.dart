// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'slsa_provenance_v1_response2.dart';
import 'subject_response2.dart';

class InTotoSlsaProvenanceV1Response2 {
  final SlsaProvenanceV1Response2 predicate;
  final String predicateType;
  final List<SubjectResponse2> subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String type;

  InTotoSlsaProvenanceV1Response2({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predicate'] = predicate.toMap();
    map['predicateType'] = predicateType;
    map['subject'] = Input.encodeList<SubjectResponse2, Map<String, dynamic>>(
        subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoSlsaProvenanceV1Response2.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1Response2(
      predicate: SlsaProvenanceV1Response2.fromMap(
          (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType: map['predicateType'] as String,
      subject: Input.decodeList<SubjectResponse2>(
          map['subject'],
          (value) =>
              SubjectResponse2.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
