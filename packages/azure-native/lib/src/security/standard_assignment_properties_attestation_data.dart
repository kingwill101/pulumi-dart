// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_assessment_item.dart';
import 'attestation_evidence.dart';

/// Additional data about assignment that has Attest effect
class StandardAssignmentPropertiesAttestationData {
  /// Component item with key as applied to this standard assignment over the given scope
  final AssignedAssessmentItem? assignedAssessment;
  /// Attest category of this assignment
  final String? complianceState;
  /// Array of links to attestation evidence
  final List<AttestationEvidence>? evidence;

  /// Creates a new [StandardAssignmentPropertiesAttestationData].
  /// [assignedAssessment] Component item with key as applied to this standard assignment over the given scope
  /// [complianceState] Attest category of this assignment
  /// [evidence] Array of links to attestation evidence
  StandardAssignmentPropertiesAttestationData({
    this.assignedAssessment,
    this.complianceState,
    this.evidence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedAssessment': ?assignedAssessment == null ? null : assignedAssessment!.toMap(),
      'complianceState': ?complianceState,
      'evidence': ?evidence == null ? null : pulumi.Input.encodeList<AttestationEvidence, Map<String, dynamic>>(evidence!, (value) => value.toMap()),
    };
  }

  factory StandardAssignmentPropertiesAttestationData.fromMap(Map<String, dynamic> map) {
    return StandardAssignmentPropertiesAttestationData(
      assignedAssessment: map['assignedAssessment'] == null ? null : AssignedAssessmentItem.fromMap((map['assignedAssessment'] as Map).cast<String, dynamic>()),
      complianceState: map['complianceState'] == null ? null : map['complianceState'] as String,
      evidence: map['evidence'] == null ? null : pulumi.Input.decodeList<AttestationEvidence>(map['evidence'], (value) => AttestationEvidence.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

