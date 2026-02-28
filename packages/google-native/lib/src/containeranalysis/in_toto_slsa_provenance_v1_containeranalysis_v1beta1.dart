// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_containeranalysis_v1beta1.dart';
import 'subject_containeranalysis_v1beta1.dart';

class InTotoSlsaProvenanceV1ContaineranalysisV1beta1 {
  final SlsaProvenanceV1ContaineranalysisV1beta1? predicate;
  final String? predicateType;
  final List<SubjectContaineranalysisV1beta1>? subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String? type;

  /// Creates a new [InTotoSlsaProvenanceV1ContaineranalysisV1beta1].
  /// [predicate] Optional.
  /// [predicateType] Optional.
  /// [subject] Optional.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  InTotoSlsaProvenanceV1ContaineranalysisV1beta1({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final predicateValue = predicate;
    if (predicateValue != null) {
      map['predicate'] = predicateValue.toMap();
    }
    final predicateTypeValue = predicateType;
    if (predicateTypeValue != null) {
      map['predicateType'] = predicateTypeValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = pulumi.Input.encodeList<SubjectContaineranalysisV1beta1,
          Map<String, dynamic>>(subjectValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory InTotoSlsaProvenanceV1ContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1ContaineranalysisV1beta1(
      predicate: map['predicate'] == null
          ? null
          : SlsaProvenanceV1ContaineranalysisV1beta1.fromMap(
              (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType:
          map['predicateType'] == null ? null : map['predicateType'] as String,
      subject: map['subject'] == null
          ? null
          : pulumi.Input.decodeList<SubjectContaineranalysisV1beta1>(
              map['subject'],
              (value) => SubjectContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
