// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'assessment_state3.dart';
import 'justification3.dart';
import 'related_url3.dart';
import 'remediation3.dart';

/// Assessment provides all information that is related to a single vulnerability for this product.
class Assessment3 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final String? cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String>? impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final Justification3? justification;

  /// A detailed description of this Vex.
  final String? longDescription;

  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final List<RelatedUrl3>? relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<Remediation3>? remediations;

  /// A one sentence description of this Vex.
  final String? shortDescription;

  /// Provides the state of this Vulnerability assessment.
  final AssessmentState3? state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String? vulnerabilityId;

  Assessment3({
    this.cve,
    this.impacts,
    this.justification,
    this.longDescription,
    this.relatedUris,
    this.remediations,
    this.shortDescription,
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
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    final relatedUrisValue = relatedUris;
    if (relatedUrisValue != null) {
      map['relatedUris'] = Input.encodeList<RelatedUrl3, Map<String, dynamic>>(
          relatedUrisValue, (value) => value.toMap());
    }
    final remediationsValue = remediations;
    if (remediationsValue != null) {
      map['remediations'] =
          Input.encodeList<Remediation3, Map<String, dynamic>>(
              remediationsValue, (value) => value.toMap());
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
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

  factory Assessment3.fromMap(Map<String, dynamic> map) {
    return Assessment3(
      cve: map['cve'] == null ? null : map['cve'] as String,
      impacts: map['impacts'] == null
          ? null
          : (map['impacts'] as List).cast<String>(),
      justification: map['justification'] == null
          ? null
          : Justification3.fromMap(
              (map['justification'] as Map).cast<String, dynamic>()),
      longDescription: map['longDescription'] == null
          ? null
          : map['longDescription'] as String,
      relatedUris: map['relatedUris'] == null
          ? null
          : Input.decodeList<RelatedUrl3>(
              map['relatedUris'],
              (value) =>
                  RelatedUrl3.fromMap((value as Map).cast<String, dynamic>())),
      remediations: map['remediations'] == null
          ? null
          : Input.decodeList<Remediation3>(
              map['remediations'],
              (value) =>
                  Remediation3.fromMap((value as Map).cast<String, dynamic>())),
      shortDescription: map['shortDescription'] == null
          ? null
          : map['shortDescription'] as String,
      state: map['state'] == null
          ? null
          : AssessmentState3.fromValue(map['state'] as String),
      vulnerabilityId: map['vulnerabilityId'] == null
          ? null
          : map['vulnerabilityId'] as String,
    );
  }
}
