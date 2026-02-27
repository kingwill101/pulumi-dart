// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'justification2.dart';
import 'remediation2.dart';
import 'uri.dart';
import 'vex_assessment_state2.dart';

/// VexAssessment provides all publisher provided Vex information that is related to this vulnerability.
class VexAssessment2 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability.
  final String? cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String>? impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final Justification2? justification;

  /// The VulnerabilityAssessment note from which this VexAssessment was generated. This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
  final String? noteName;

  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final List<URI>? relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<Remediation2>? remediations;

  /// Provides the state of this Vulnerability assessment.
  final VexAssessmentState2? state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String? vulnerabilityId;

  VexAssessment2({
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
      map['relatedUris'] = Input.encodeList<URI, Map<String, dynamic>>(
          relatedUrisValue, (value) => value.toMap());
    }
    final remediationsValue = remediations;
    if (remediationsValue != null) {
      map['remediations'] =
          Input.encodeList<Remediation2, Map<String, dynamic>>(
              remediationsValue, (value) => value.toMap());
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

  factory VexAssessment2.fromMap(Map<String, dynamic> map) {
    return VexAssessment2(
      cve: map['cve'] == null ? null : map['cve'] as String,
      impacts: map['impacts'] == null
          ? null
          : (map['impacts'] as List).cast<String>(),
      justification: map['justification'] == null
          ? null
          : Justification2.fromMap(
              (map['justification'] as Map).cast<String, dynamic>()),
      noteName: map['noteName'] == null ? null : map['noteName'] as String,
      relatedUris: map['relatedUris'] == null
          ? null
          : Input.decodeList<URI>(map['relatedUris'],
              (value) => URI.fromMap((value as Map).cast<String, dynamic>())),
      remediations: map['remediations'] == null
          ? null
          : Input.decodeList<Remediation2>(
              map['remediations'],
              (value) =>
                  Remediation2.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] == null
          ? null
          : VexAssessmentState2.fromValue(map['state'] as String),
      vulnerabilityId: map['vulnerabilityId'] == null
          ? null
          : map['vulnerabilityId'] as String,
    );
  }
}
