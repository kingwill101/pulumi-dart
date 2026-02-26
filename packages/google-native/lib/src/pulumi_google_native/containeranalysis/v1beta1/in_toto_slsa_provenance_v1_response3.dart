// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'slsa_provenance_v1_response3.dart';
import 'subject_response3.dart';

class InTotoSlsaProvenanceV1Response3 {
  final SlsaProvenanceV1Response3 predicate;
  final String predicateType;
  final List<SubjectResponse3> subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String type;

  InTotoSlsaProvenanceV1Response3({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predicate'] = predicate.toMap();
    map['predicateType'] = predicateType;
    map['subject'] = Input.encodeList<SubjectResponse3, Map<String, dynamic>>(
        subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoSlsaProvenanceV1Response3.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1Response3(
      predicate: SlsaProvenanceV1Response3.fromMap(
          (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType: map['predicateType'] as String,
      subject: Input.decodeList<SubjectResponse3>(
          map['subject'],
          (value) =>
              SubjectResponse3.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
