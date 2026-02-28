// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate_containeranalysis_v1alpha1.dart';
import 'subject_containeranalysis_v1alpha1.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayloadContaineranalysisV1alpha1 {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final SbomReferenceIntotoPredicateContaineranalysisV1alpha1? predicate;

  /// URI identifying the type of the Predicate.
  final String? predicateType;

  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final List<SubjectContaineranalysisV1alpha1>? subject;

  /// Identifier for the schema of the Statement.
  final String? type;

  /// Creates a new [SbomReferenceIntotoPayloadContaineranalysisV1alpha1].
  /// [predicate] Additional parameters of the Predicate. Includes the actual data about the SBOM.
  /// [predicateType] URI identifying the type of the Predicate.
  /// [subject] Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  /// [type] Identifier for the schema of the Statement.
  SbomReferenceIntotoPayloadContaineranalysisV1alpha1({
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
      map['subject'] = pulumi.Input.encodeList<SubjectContaineranalysisV1alpha1,
          Map<String, dynamic>>(subjectValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SbomReferenceIntotoPayloadContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SbomReferenceIntotoPayloadContaineranalysisV1alpha1(
      predicate: map['predicate'] == null
          ? null
          : SbomReferenceIntotoPredicateContaineranalysisV1alpha1.fromMap(
              (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType:
          map['predicateType'] == null ? null : map['predicateType'] as String,
      subject: map['subject'] == null
          ? null
          : pulumi.Input.decodeList<SubjectContaineranalysisV1alpha1>(
              map['subject'],
              (value) => SubjectContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
