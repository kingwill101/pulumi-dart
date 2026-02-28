// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_zero_two_containeranalysis_v1alpha1.dart';
import 'subject_containeranalysis_v1alpha1.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementContaineranalysisV1alpha1 {
  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  final String? predicateType;

  /// Generic Grafeas provenance.
  final InTotoProvenanceContaineranalysisV1alpha1? provenance;

  /// SLSA 0.1 provenance.
  final SlsaProvenanceContaineranalysisV1alpha1? slsaProvenance;

  /// SLSA 0.2 provenance.
  final SlsaProvenanceZeroTwoContaineranalysisV1alpha1? slsaProvenanceZeroTwo;

  /// subject is the subjects of the intoto statement
  final List<SubjectContaineranalysisV1alpha1>? subject;

  /// Always "https://in-toto.io/Statement/v0.1".
  final String? type;

  /// Creates a new [InTotoStatementContaineranalysisV1alpha1].
  /// [predicateType] "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  /// [provenance] Generic Grafeas provenance.
  /// [slsaProvenance] SLSA 0.1 provenance.
  /// [slsaProvenanceZeroTwo] SLSA 0.2 provenance.
  /// [subject] subject is the subjects of the intoto statement
  /// [type] Always "https://in-toto.io/Statement/v0.1".
  InTotoStatementContaineranalysisV1alpha1({
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
      map['subject'] = pulumi.Input.encodeList<SubjectContaineranalysisV1alpha1,
          Map<String, dynamic>>(subjectValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory InTotoStatementContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return InTotoStatementContaineranalysisV1alpha1(
      predicateType:
          map['predicateType'] == null ? null : map['predicateType'] as String,
      provenance: map['provenance'] == null
          ? null
          : InTotoProvenanceContaineranalysisV1alpha1.fromMap(
              (map['provenance'] as Map).cast<String, dynamic>()),
      slsaProvenance: map['slsaProvenance'] == null
          ? null
          : SlsaProvenanceContaineranalysisV1alpha1.fromMap(
              (map['slsaProvenance'] as Map).cast<String, dynamic>()),
      slsaProvenanceZeroTwo: map['slsaProvenanceZeroTwo'] == null
          ? null
          : SlsaProvenanceZeroTwoContaineranalysisV1alpha1.fromMap(
              (map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>()),
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
