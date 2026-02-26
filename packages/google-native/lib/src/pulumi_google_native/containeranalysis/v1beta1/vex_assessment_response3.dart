// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'justification_response3.dart';
import 'related_url_response3.dart';
import 'remediation_response3.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentResponse3 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final String cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String> impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationResponse3 justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final String noteName;

  /// Holds a list of references associated with this vulnerability item and assessment.
  final List<RelatedUrlResponse3> relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationResponse3> remediations;

  /// Provides the state of this Vulnerability assessment.
  final String state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String vulnerabilityId;

  VexAssessmentResponse3({
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
    map['relatedUris'] =
        Input.encodeList<RelatedUrlResponse3, Map<String, dynamic>>(
            relatedUris, (value) => value.toMap());
    map['remediations'] =
        Input.encodeList<RemediationResponse3, Map<String, dynamic>>(
            remediations, (value) => value.toMap());
    map['state'] = state;
    map['vulnerabilityId'] = vulnerabilityId;
    return map;
  }

  factory VexAssessmentResponse3.fromMap(Map<String, dynamic> map) {
    return VexAssessmentResponse3(
      cve: map['cve'] as String,
      impacts: (map['impacts'] as List).cast<String>(),
      justification: JustificationResponse3.fromMap(
          (map['justification'] as Map).cast<String, dynamic>()),
      noteName: map['noteName'] as String,
      relatedUris: Input.decodeList<RelatedUrlResponse3>(
          map['relatedUris'],
          (value) => RelatedUrlResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      remediations: Input.decodeList<RemediationResponse3>(
          map['remediations'],
          (value) => RemediationResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      vulnerabilityId: map['vulnerabilityId'] as String,
    );
  }
}
