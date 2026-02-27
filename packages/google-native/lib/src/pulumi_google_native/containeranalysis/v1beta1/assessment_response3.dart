// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'justification_response3.dart';
import 'related_url_response3.dart';
import 'remediation_response3.dart';

/// Assessment provides all information that is related to a single vulnerability for this product.
class AssessmentResponse3 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final String cve;

  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String> impacts;

  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationResponse3 justification;

  /// A detailed description of this Vex.
  final String longDescription;

  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final List<RelatedUrlResponse3> relatedUris;

  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationResponse3> remediations;

  /// A one sentence description of this Vex.
  final String shortDescription;

  /// Provides the state of this Vulnerability assessment.
  final String state;

  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String vulnerabilityId;

  AssessmentResponse3({
    required this.cve,
    required this.impacts,
    required this.justification,
    required this.longDescription,
    required this.relatedUris,
    required this.remediations,
    required this.shortDescription,
    required this.state,
    required this.vulnerabilityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cve'] = cve;
    map['impacts'] = impacts;
    map['justification'] = justification.toMap();
    map['longDescription'] = longDescription;
    map['relatedUris'] =
        Input.encodeList<RelatedUrlResponse3, Map<String, dynamic>>(
            relatedUris, (value) => value.toMap());
    map['remediations'] =
        Input.encodeList<RemediationResponse3, Map<String, dynamic>>(
            remediations, (value) => value.toMap());
    map['shortDescription'] = shortDescription;
    map['state'] = state;
    map['vulnerabilityId'] = vulnerabilityId;
    return map;
  }

  factory AssessmentResponse3.fromMap(Map<String, dynamic> map) {
    return AssessmentResponse3(
      cve: map['cve'] as String,
      impacts: (map['impacts'] as List).cast<String>(),
      justification: JustificationResponse3.fromMap(
          (map['justification'] as Map).cast<String, dynamic>()),
      longDescription: map['longDescription'] as String,
      relatedUris: Input.decodeList<RelatedUrlResponse3>(
          map['relatedUris'],
          (value) => RelatedUrlResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      remediations: Input.decodeList<RemediationResponse3>(
          map['remediations'],
          (value) => RemediationResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      shortDescription: map['shortDescription'] as String,
      state: map['state'] as String,
      vulnerabilityId: map['vulnerabilityId'] as String,
    );
  }
}
