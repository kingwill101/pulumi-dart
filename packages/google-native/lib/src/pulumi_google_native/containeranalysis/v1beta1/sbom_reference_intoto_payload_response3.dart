// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'sbom_reference_intoto_predicate_response3.dart';
import 'subject_response3.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayloadResponse3 {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final SbomReferenceIntotoPredicateResponse3 predicate;

  /// URI identifying the type of the Predicate.
  final String predicateType;

  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final List<SubjectResponse3> subject;

  /// Identifier for the schema of the Statement.
  final String type;

  SbomReferenceIntotoPayloadResponse3({
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

  factory SbomReferenceIntotoPayloadResponse3.fromMap(
      Map<String, dynamic> map) {
    return SbomReferenceIntotoPayloadResponse3(
      predicate: SbomReferenceIntotoPredicateResponse3.fromMap(
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
