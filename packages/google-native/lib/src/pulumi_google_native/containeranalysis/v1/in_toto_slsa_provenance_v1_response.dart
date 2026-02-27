// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'slsa_provenance_v1_response.dart';
import 'subject_response.dart';

class InTotoSlsaProvenanceV1Response {
  final SlsaProvenanceV1Response predicate;
  final String predicateType;
  final List<SubjectResponse> subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String type;

  InTotoSlsaProvenanceV1Response({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predicate'] = predicate.toMap();
    map['predicateType'] = predicateType;
    map['subject'] = Input.encodeList<SubjectResponse, Map<String, dynamic>>(
        subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoSlsaProvenanceV1Response.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1Response(
      predicate: SlsaProvenanceV1Response.fromMap(
          (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType: map['predicateType'] as String,
      subject: Input.decodeList<SubjectResponse>(
          map['subject'],
          (value) =>
              SubjectResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
