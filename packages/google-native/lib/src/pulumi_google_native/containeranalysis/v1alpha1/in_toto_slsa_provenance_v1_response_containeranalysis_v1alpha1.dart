// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_response_containeranalysis_v1alpha1.dart';
import 'subject_response_containeranalysis_v1alpha1.dart';

class InTotoSlsaProvenanceV1ResponseContaineranalysisV1alpha1 {
  final SlsaProvenanceV1ResponseContaineranalysisV1alpha1 predicate;
  final String predicateType;
  final List<SubjectResponseContaineranalysisV1alpha1> subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String type;

  InTotoSlsaProvenanceV1ResponseContaineranalysisV1alpha1({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predicate'] = predicate.toMap();
    map['predicateType'] = predicateType;
    map['subject'] = pulumi.Input.encodeList<
        SubjectResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoSlsaProvenanceV1ResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1ResponseContaineranalysisV1alpha1(
      predicate: SlsaProvenanceV1ResponseContaineranalysisV1alpha1.fromMap(
          (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType: map['predicateType'] as String,
      subject:
          pulumi.Input.decodeList<SubjectResponseContaineranalysisV1alpha1>(
              map['subject'],
              (value) => SubjectResponseContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
