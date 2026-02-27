// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'justification_response2.dart';
import 'remediation_response2.dart';
import 'uriresponse.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessmentResponse2 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  final String cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String> impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationResponse2 justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final String noteName;

  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final List<URIResponse> relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationResponse2> remediations;

  /// Provides the state of this Vulnerability assessment.
  final String state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String vulnerabilityId;

  VexAssessmentResponse2({
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
    map['relatedUris'] = Input.encodeList<URIResponse, Map<String, dynamic>>(
        relatedUris, (value) => value.toMap());
    map['remediations'] =
        Input.encodeList<RemediationResponse2, Map<String, dynamic>>(
            remediations, (value) => value.toMap());
    map['state'] = state;
    map['vulnerabilityId'] = vulnerabilityId;
    return map;
  }

  factory VexAssessmentResponse2.fromMap(Map<String, dynamic> map) {
    return VexAssessmentResponse2(
      cve: map['cve'] as String,
      impacts: (map['impacts'] as List).cast<String>(),
      justification: JustificationResponse2.fromMap(
          (map['justification'] as Map).cast<String, dynamic>()),
      noteName: map['noteName'] as String,
      relatedUris: Input.decodeList<URIResponse>(
          map['relatedUris'],
          (value) =>
              URIResponse.fromMap((value as Map).cast<String, dynamic>())),
      remediations: Input.decodeList<RemediationResponse2>(
          map['remediations'],
          (value) => RemediationResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      vulnerabilityId: map['vulnerabilityId'] as String,
    );
  }
}
