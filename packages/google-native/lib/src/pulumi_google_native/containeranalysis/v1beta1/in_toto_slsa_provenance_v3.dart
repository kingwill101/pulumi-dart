// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'slsa_provenance_v3.dart';
import 'subject3.dart';

class InTotoSlsaProvenanceV3 {
  final SlsaProvenanceV3? predicate;
  final String? predicateType;
  final List<Subject3>? subject;

  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final String? type;

  InTotoSlsaProvenanceV3({
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

  factory InTotoSlsaProvenanceV3.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV3(
      predicate: map['predicate'] == null
          ? null
          : SlsaProvenanceV3.fromMap(
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
