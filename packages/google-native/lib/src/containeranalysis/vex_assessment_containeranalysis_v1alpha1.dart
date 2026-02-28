// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_containeranalysis_v1alpha1.dart';
import 'remediation_containeranalysis_v1alpha1.dart';
import 'uri.dart';
import 'vex_assessment_state_containeranalysis_v1alpha1.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentContaineranalysisV1alpha1 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  final String? cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String>? impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationContaineranalysisV1alpha1? justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final String? noteName;

  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final List<URI>? relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationContaineranalysisV1alpha1>? remediations;

  /// Provides the state of this Vulnerability assessment.
  final VexAssessmentStateContaineranalysisV1alpha1? state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String? vulnerabilityId;

  /// Creates a new [VexAssessmentContaineranalysisV1alpha1].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [noteName] The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  VexAssessmentContaineranalysisV1alpha1({
    this.cve,
    this.impacts,
    this.justification,
    this.noteName,
    this.relatedUris,
    this.remediations,
    this.state,
    this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cveValue = cve;
    if (cveValue != null) {
      map['cve'] = cveValue;
    }
    final impactsValue = impacts;
    if (impactsValue != null) {
      map['impacts'] = impactsValue;
    }
    final justificationValue = justification;
    if (justificationValue != null) {
      map['justification'] = justificationValue.toMap();
    }
    final noteNameValue = noteName;
    if (noteNameValue != null) {
      map['noteName'] = noteNameValue;
    }
    final relatedUrisValue = relatedUris;
    if (relatedUrisValue != null) {
      map['relatedUris'] = pulumi.Input.encodeList<URI, Map<String, dynamic>>(
          relatedUrisValue, (value) => value.toMap());
    }
    final remediationsValue = remediations;
    if (remediationsValue != null) {
      map['remediations'] = pulumi.Input.encodeList<
          RemediationContaineranalysisV1alpha1,
          Map<String, dynamic>>(remediationsValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    final vulnerabilityIdValue = vulnerabilityId;
    if (vulnerabilityIdValue != null) {
      map['vulnerabilityId'] = vulnerabilityIdValue;
    }
    return map;
  }

  factory VexAssessmentContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return VexAssessmentContaineranalysisV1alpha1(
      cve: map['cve'] == null ? null : map['cve'] as String,
      impacts: map['impacts'] == null
          ? null
          : (map['impacts'] as List).cast<String>(),
      justification: map['justification'] == null
          ? null
          : JustificationContaineranalysisV1alpha1.fromMap(
              (map['justification'] as Map).cast<String, dynamic>()),
      noteName: map['noteName'] == null ? null : map['noteName'] as String,
      relatedUris: map['relatedUris'] == null
          ? null
          : pulumi.Input.decodeList<URI>(map['relatedUris'],
              (value) => URI.fromMap((value as Map).cast<String, dynamic>())),
      remediations: map['remediations'] == null
          ? null
          : pulumi.Input.decodeList<RemediationContaineranalysisV1alpha1>(
              map['remediations'],
              (value) => RemediationContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] == null
          ? null
          : VexAssessmentStateContaineranalysisV1alpha1.fromValue(
              map['state'] as String),
      vulnerabilityId: map['vulnerabilityId'] == null
          ? null
          : map['vulnerabilityId'] as String,
    );
  }
}
