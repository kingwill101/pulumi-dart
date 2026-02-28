// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate_response_containeranalysis_v1beta1.dart';
import 'subject_response_containeranalysis_v1beta1.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayloadResponseContaineranalysisV1beta1 {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1 predicate;
  /// URI identifying the type of the Predicate.
  final String predicateType;
  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final List<SubjectResponseContaineranalysisV1beta1> subject;
  /// Identifier for the schema of the Statement.
  final String type;

  /// Creates a new [SbomReferenceIntotoPayloadResponseContaineranalysisV1beta1].
  /// [predicate] Additional parameters of the Predicate. Includes the actual data about the SBOM.
  /// [predicateType] URI identifying the type of the Predicate.
  /// [subject] Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  /// [type] Identifier for the schema of the Statement.
  SbomReferenceIntotoPayloadResponseContaineranalysisV1beta1({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': predicate.toMap(),
      'predicateType': predicateType,
      'subject': pulumi.Input.encodeList<SubjectResponseContaineranalysisV1beta1, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SbomReferenceIntotoPayloadResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayloadResponseContaineranalysisV1beta1(
      predicate: SbomReferenceIntotoPredicateResponseContaineranalysisV1beta1.fromMap((map['predicate'] as Map).cast<String, dynamic>()),
      predicateType: map['predicateType'] as String,
      subject: pulumi.Input.decodeList<SubjectResponseContaineranalysisV1beta1>(map['subject'], (value) => SubjectResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

