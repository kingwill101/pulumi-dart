// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate.dart';
import 'subject.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayload {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final SbomReferenceIntotoPredicate? predicate;

  /// URI identifying the type of the Predicate.
  final String? predicateType;

  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final List<Subject>? subject;

  /// Identifier for the schema of the Statement.
  final String? type;

  SbomReferenceIntotoPayload({
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
      map['subject'] = pulumi.Input.encodeList<Subject, Map<String, dynamic>>(
          subjectValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SbomReferenceIntotoPayload.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayload(
      predicate: map['predicate'] == null
          ? null
          : SbomReferenceIntotoPredicate.fromMap(
              (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType:
          map['predicateType'] == null ? null : map['predicateType'] as String,
      subject: map['subject'] == null
          ? null
          : pulumi.Input.decodeList<Subject>(
              map['subject'],
              (value) =>
                  Subject.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
