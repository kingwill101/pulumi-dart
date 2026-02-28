// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_state_containeranalysis_v1beta1.dart';
import 'justification_containeranalysis_v1beta1.dart';
import 'related_url_containeranalysis_v1beta1.dart';
import 'remediation_containeranalysis_v1beta1.dart';

/// Assessment provides all information that is related to a single vulnerability for this product.
class AssessmentContaineranalysisV1beta1 {
  /// Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  final String? cve;
  /// Contains information about the impact of this vulnerability, this will change with time.
  final List<String>? impacts;
  /// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  final JustificationContaineranalysisV1beta1? justification;
  /// A detailed description of this Vex.
  final String? longDescription;
  /// Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  final List<RelatedUrlContaineranalysisV1beta1>? relatedUris;
  /// Specifies details on how to handle (and presumably, fix) a vulnerability.
  final List<RemediationContaineranalysisV1beta1>? remediations;
  /// A one sentence description of this Vex.
  final String? shortDescription;
  /// Provides the state of this Vulnerability assessment.
  final AssessmentStateContaineranalysisV1beta1? state;
  /// The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  final String? vulnerabilityId;

  /// Creates a new [AssessmentContaineranalysisV1beta1].
  /// [cve] Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking number for the vulnerability. Deprecated: Use vulnerability_id instead to denote CVEs.
  /// [impacts] Contains information about the impact of this vulnerability, this will change with time.
  /// [justification] Justification provides the justification when the state of the assessment if NOT_AFFECTED.
  /// [longDescription] A detailed description of this Vex.
  /// [relatedUris] Holds a list of references associated with this vulnerability item and assessment. These uris have additional information about the vulnerability and the assessment itself. E.g. Link to a document which details how this assessment concluded the state of this vulnerability.
  /// [remediations] Specifies details on how to handle (and presumably, fix) a vulnerability.
  /// [shortDescription] A one sentence description of this Vex.
  /// [state] Provides the state of this Vulnerability assessment.
  /// [vulnerabilityId] The vulnerability identifier for this Assessment. Will hold one of common identifiers e.g. CVE, GHSA etc.
  AssessmentContaineranalysisV1beta1({
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
    return <String, dynamic>{
      'cve': ?cve,
      'impacts': ?impacts,
      'justification': ?justification == null ? null : justification!.toMap(),
      'longDescription': ?longDescription,
      'relatedUris': ?relatedUris == null ? null : pulumi.Input.encodeList<RelatedUrlContaineranalysisV1beta1, Map<String, dynamic>>(relatedUris!, (value) => value.toMap()),
      'remediations': ?remediations == null ? null : pulumi.Input.encodeList<RemediationContaineranalysisV1beta1, Map<String, dynamic>>(remediations!, (value) => value.toMap()),
      'shortDescription': ?shortDescription,
      'state': ?state == null ? null : state!.value,
      'vulnerabilityId': ?vulnerabilityId,
    };
  }

  factory AssessmentContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AssessmentContaineranalysisV1beta1(
      cve: map['cve'] == null ? null : map['cve'] as String,
      impacts: map['impacts'] == null ? null : (map['impacts'] as List).cast<String>(),
      justification: map['justification'] == null ? null : JustificationContaineranalysisV1beta1.fromMap((map['justification'] as Map).cast<String, dynamic>()),
      longDescription: map['longDescription'] == null ? null : map['longDescription'] as String,
      relatedUris: map['relatedUris'] == null ? null : pulumi.Input.decodeList<RelatedUrlContaineranalysisV1beta1>(map['relatedUris'], (value) => RelatedUrlContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      remediations: map['remediations'] == null ? null : pulumi.Input.decodeList<RemediationContaineranalysisV1beta1>(map['remediations'], (value) => RemediationContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      shortDescription: map['shortDescription'] == null ? null : map['shortDescription'] as String,
      state: map['state'] == null ? null : AssessmentStateContaineranalysisV1beta1.fromValue(map['state'] as String),
      vulnerabilityId: map['vulnerabilityId'] == null ? null : map['vulnerabilityId'] as String,
    );
  }
}

