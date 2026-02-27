// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'in_toto_provenance2.dart';
import 'slsa_provenance2.dart';
import 'slsa_provenance_zero_two2.dart';
import 'subject2.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatement2 {
  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  final String? predicateType;

  /// Generic Grafeas provenance.
  final InTotoProvenance2? provenance;

  /// SLSA 0.1 provenance.
  final SlsaProvenance2? slsaProvenance;

  /// SLSA 0.2 provenance.
  final SlsaProvenanceZeroTwo2? slsaProvenanceZeroTwo;

  /// subject is the subjects of the intoto statement
  final List<Subject2>? subject;

  /// Always "https://in-toto.io/Statement/v0.1".
  final String? type;

  InTotoStatement2({
    this.predicateType,
    this.provenance,
    this.slsaProvenance,
    this.slsaProvenanceZeroTwo,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final predicateTypeValue = predicateType;
    if (predicateTypeValue != null) {
      map['predicateType'] = predicateTypeValue;
    }
    final provenanceValue = provenance;
    if (provenanceValue != null) {
      map['provenance'] = provenanceValue.toMap();
    }
    final slsaProvenanceValue = slsaProvenance;
    if (slsaProvenanceValue != null) {
      map['slsaProvenance'] = slsaProvenanceValue.toMap();
    }
    final slsaProvenanceZeroTwoValue = slsaProvenanceZeroTwo;
    if (slsaProvenanceZeroTwoValue != null) {
      map['slsaProvenanceZeroTwo'] = slsaProvenanceZeroTwoValue.toMap();
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = Input.encodeList<Subject2, Map<String, dynamic>>(
          subjectValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory InTotoStatement2.fromMap(Map<String, dynamic> map) {
    return InTotoStatement2(
      predicateType:
          map['predicateType'] == null ? null : map['predicateType'] as String,
      provenance: map['provenance'] == null
          ? null
          : InTotoProvenance2.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
      slsaProvenance: map['slsaProvenance'] == null
          ? null
          : SlsaProvenance2.fromMap(
              (map['slsaProvenance'] as Map).cast<String, dynamic>()),
      slsaProvenanceZeroTwo: map['slsaProvenanceZeroTwo'] == null
          ? null
          : SlsaProvenanceZeroTwo2.fromMap(
              (map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>()),
      subject: map['subject'] == null
          ? null
          : Input.decodeList<Subject2>(
              map['subject'],
              (value) =>
                  Subject2.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
