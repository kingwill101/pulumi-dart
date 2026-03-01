// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_response.dart';
import 'related_url_response.dart';
import 'remediation_response.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentResponse {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final String cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String> impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationResponse justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final String noteName;

  /// Holds a list of references associated with this vulnerability item and assessment.
  final List<RelatedUrlResponse> relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationResponse> remediations;

  /// Provides the state of this Vulnerability assessment.
  final String state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String vulnerabilityId;

  /// Creates a new [VexAssessmentResponse].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [noteName] The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  VexAssessmentResponse({
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
    return <String, dynamic>{
      'cve': cve,
      'impacts': impacts,
      'justification': justification.toMap(),
      'noteName': noteName,
      'relatedUris':
          pulumi.Input.encodeList<RelatedUrlResponse, Map<String, dynamic>>(
            relatedUris,
            (value) => value.toMap(),
          ),
      'remediations':
          pulumi.Input.encodeList<RemediationResponse, Map<String, dynamic>>(
            remediations,
            (value) => value.toMap(),
          ),
      'state': state,
      'vulnerabilityId': vulnerabilityId,
    };
  }

  factory VexAssessmentResponse.fromMap(Map<String, dynamic> map) {
    return VexAssessmentResponse(
      cve: map['cve'] as String,
      impacts: (map['impacts'] as List).cast<String>(),
      justification: JustificationResponse.fromMap(
        (map['justification'] as Map).cast<String, dynamic>(),
      ),
      noteName: map['noteName'] as String,
      relatedUris: pulumi.Input.decodeList<RelatedUrlResponse>(
        map['relatedUris'],
        (value) =>
            RelatedUrlResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      remediations: pulumi.Input.decodeList<RemediationResponse>(
        map['remediations'],
        (value) =>
            RemediationResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      state: map['state'] as String,
      vulnerabilityId: map['vulnerabilityId'] as String,
    );
  }
}
