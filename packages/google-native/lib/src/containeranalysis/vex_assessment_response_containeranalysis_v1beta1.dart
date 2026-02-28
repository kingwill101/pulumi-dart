// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_response_containeranalysis_v1beta1.dart';
import 'related_url_response_containeranalysis_v1beta1.dart';
import 'remediation_response_containeranalysis_v1beta1.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentResponseContaineranalysisV1beta1 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final String cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String> impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationResponseContaineranalysisV1beta1 justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final String noteName;

  /// Holds a list of references associated with this vulnerability item and assessment.
  final List<RelatedUrlResponseContaineranalysisV1beta1> relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationResponseContaineranalysisV1beta1> remediations;

  /// Provides the state of this Vulnerability assessment.
  final String state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String vulnerabilityId;

  /// Creates a new [VexAssessmentResponseContaineranalysisV1beta1].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [noteName] The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  VexAssessmentResponseContaineranalysisV1beta1({
    required this.cve,
    required this.impacts,
    required this.justification,
    required this.noteName,
    required this.relatedUris,
    required this.remediations,
    required this.state,
    required this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cve'] = cve;
    map['impacts'] = impacts;
    map['justification'] = justification.toMap();
    map['noteName'] = noteName;
    map['relatedUris'] = pulumi.Input.encodeList<
        RelatedUrlResponseContaineranalysisV1beta1,
        Map<String, dynamic>>(relatedUris, (value) => value.toMap());
    map['remediations'] = pulumi.Input.encodeList<
        RemediationResponseContaineranalysisV1beta1,
        Map<String, dynamic>>(remediations, (value) => value.toMap());
    map['state'] = state;
    map['vulnerabilityId'] = vulnerabilityId;
    return map;
  }

  factory VexAssessmentResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return VexAssessmentResponseContaineranalysisV1beta1(
      cve: map['cve'] as String,
      impacts: (map['impacts'] as List).cast<String>(),
      justification: JustificationResponseContaineranalysisV1beta1.fromMap(
          (map['justification'] as Map).cast<String, dynamic>()),
      noteName: map['noteName'] as String,
      relatedUris:
          pulumi.Input.decodeList<RelatedUrlResponseContaineranalysisV1beta1>(
              map['relatedUris'],
              (value) => RelatedUrlResponseContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      remediations:
          pulumi.Input.decodeList<RemediationResponseContaineranalysisV1beta1>(
              map['remediations'],
              (value) => RemediationResponseContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      vulnerabilityId: map['vulnerabilityId'] as String,
    );
  }
}
