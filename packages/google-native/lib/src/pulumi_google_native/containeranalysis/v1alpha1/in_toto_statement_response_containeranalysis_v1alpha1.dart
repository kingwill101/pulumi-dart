// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance_response_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_response_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_zero_two_response_containeranalysis_v1alpha1.dart';
import 'subject_response_containeranalysis_v1alpha1.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementResponseContaineranalysisV1alpha1 {
  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  final String predicateType;

  /// Generic Grafeas provenance.
  final InTotoProvenanceResponseContaineranalysisV1alpha1 provenance;

  /// SLSA 0.1 provenance.
  final SlsaProvenanceResponseContaineranalysisV1alpha1 slsaProvenance;

  /// SLSA 0.2 provenance.
  final SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1
      slsaProvenanceZeroTwo;

  /// subject is the subjects of the intoto statement
  final List<SubjectResponseContaineranalysisV1alpha1> subject;

  /// Always "https://in-toto.io/Statement/v0.1".
  final String type;

  InTotoStatementResponseContaineranalysisV1alpha1({
    required this.predicateType,
    required this.provenance,
    required this.slsaProvenance,
    required this.slsaProvenanceZeroTwo,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predicateType'] = predicateType;
    map['provenance'] = provenance.toMap();
    map['slsaProvenance'] = slsaProvenance.toMap();
    map['slsaProvenanceZeroTwo'] = slsaProvenanceZeroTwo.toMap();
    map['subject'] = pulumi.Input.encodeList<
        SubjectResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(subject, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory InTotoStatementResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return InTotoStatementResponseContaineranalysisV1alpha1(
      predicateType: map['predicateType'] as String,
      provenance: InTotoProvenanceResponseContaineranalysisV1alpha1.fromMap(
          (map['provenance'] as Map).cast<String, dynamic>()),
      slsaProvenance: SlsaProvenanceResponseContaineranalysisV1alpha1.fromMap(
          (map['slsaProvenance'] as Map).cast<String, dynamic>()),
      slsaProvenanceZeroTwo:
          SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1.fromMap(
              (map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>()),
      subject:
          pulumi.Input.decodeList<SubjectResponseContaineranalysisV1alpha1>(
              map['subject'],
              (value) => SubjectResponseContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
