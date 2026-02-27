// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'sbom_reference_intoto_predicate3.dart';
import 'subject3.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayload3 {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final SbomReferenceIntotoPredicate3? predicate;

  /// URI identifying the type of the Predicate.
  final String? predicateType;

  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final List<Subject3>? subject;

  /// Identifier for the schema of the Statement.
  final String? type;

  SbomReferenceIntotoPayload3({
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
      map['subject'] = Input.encodeList<Subject3, Map<String, dynamic>>(
          subjectValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SbomReferenceIntotoPayload3.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayload3(
      predicate: map['predicate'] == null
          ? null
          : SbomReferenceIntotoPredicate3.fromMap(
              (map['predicate'] as Map).cast<String, dynamic>()),
      predicateType:
          map['predicateType'] == null ? null : map['predicateType'] as String,
      subject: map['subject'] == null
          ? null
          : Input.decodeList<Subject3>(
              map['subject'],
              (value) =>
                  Subject3.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
