// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'attestation_note_response.dart';
import 'build_note_response.dart';
import 'compliance_note_response.dart';
import 'deployment_note_response.dart';
import 'discovery_note_response.dart';
import 'dsseattestation_note_response.dart';
import 'image_note_response.dart';
import 'package_note_response.dart';
import 'related_url_response.dart';
import 'sbomreference_note_response.dart';
import 'upgrade_note_response.dart';
import 'vulnerability_assessment_note_response.dart';
import 'vulnerability_note_response.dart';

/// Result data returned by getNote.
class GetNoteResult {
  /// A note describing an attestation role.
  final AttestationNoteResponse attestation;

  /// A note describing build provenance for a verifiable build.
  final BuildNoteResponse build;

  /// A note describing a compliance check.
  final ComplianceNoteResponse compliance;

  /// The time this note was created. This field can be used as a filter in list requests.
  final String createTime;

  /// A note describing something that can be deployed.
  final DeploymentNoteResponse deployment;

  /// A note describing the initial analysis of a resource.
  final DiscoveryNoteResponse discovery;

  /// A note describing a dsse attestation note.
  final DSSEAttestationNoteResponse dsseAttestation;

  /// Time of expiration for this note. Empty if note does not expire.
  final String expirationTime;

  /// A note describing a base image.
  final ImageNoteResponse image;

  /// The type of analysis. This field can be used as a filter in list requests.
  final String kind;

  /// A detailed description of this note.
  final String longDescription;

  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  final String name;

  /// A note describing a package hosted by various package managers.
  final PackageNoteResponse package;

  /// Other notes related to this note.
  final List<String> relatedNoteNames;

  /// URLs associated with this note.
  final List<RelatedUrlResponse> relatedUrl;

  /// A note describing an SBOM reference.
  final SBOMReferenceNoteResponse sbomReference;

  /// A one sentence description of this note.
  final String shortDescription;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String updateTime;

  /// A note describing available package upgrades.
  final UpgradeNoteResponse upgrade;

  /// A note describing a package vulnerability.
  final VulnerabilityNoteResponse vulnerability;

  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponse vulnerabilityAssessment;

  GetNoteResult({
    required this.attestation,
    required this.build,
    required this.compliance,
    required this.createTime,
    required this.deployment,
    required this.discovery,
    required this.dsseAttestation,
    required this.expirationTime,
    required this.image,
    required this.kind,
    required this.longDescription,
    required this.name,
    required this.package,
    required this.relatedNoteNames,
    required this.relatedUrl,
    required this.sbomReference,
    required this.shortDescription,
    required this.updateTime,
    required this.upgrade,
    required this.vulnerability,
    required this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestation'] = attestation.toMap();
    map['build'] = build.toMap();
    map['compliance'] = compliance.toMap();
    map['createTime'] = createTime;
    map['deployment'] = deployment.toMap();
    map['discovery'] = discovery.toMap();
    map['dsseAttestation'] = dsseAttestation.toMap();
    map['expirationTime'] = expirationTime;
    map['image'] = image.toMap();
    map['kind'] = kind;
    map['longDescription'] = longDescription;
    map['name'] = name;
    map['package'] = package.toMap();
    map['relatedNoteNames'] = relatedNoteNames;
    map['relatedUrl'] =
        Input.encodeList<RelatedUrlResponse, Map<String, dynamic>>(
            relatedUrl, (value) => value.toMap());
    map['sbomReference'] = sbomReference.toMap();
    map['shortDescription'] = shortDescription;
    map['updateTime'] = updateTime;
    map['upgrade'] = upgrade.toMap();
    map['vulnerability'] = vulnerability.toMap();
    map['vulnerabilityAssessment'] = vulnerabilityAssessment.toMap();
    return map;
  }

  factory GetNoteResult.fromMap(Map<String, dynamic> map) {
    return GetNoteResult(
      attestation: AttestationNoteResponse.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
      build: BuildNoteResponse.fromMap(
          (map['build'] as Map).cast<String, dynamic>()),
      compliance: ComplianceNoteResponse.fromMap(
          (map['compliance'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployment: DeploymentNoteResponse.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
      discovery: DiscoveryNoteResponse.fromMap(
          (map['discovery'] as Map).cast<String, dynamic>()),
      dsseAttestation: DSSEAttestationNoteResponse.fromMap(
          (map['dsseAttestation'] as Map).cast<String, dynamic>()),
      expirationTime: map['expirationTime'] as String,
      image: ImageNoteResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      longDescription: map['longDescription'] as String,
      name: map['name'] as String,
      package: PackageNoteResponse.fromMap(
          (map['package'] as Map).cast<String, dynamic>()),
      relatedNoteNames: (map['relatedNoteNames'] as List).cast<String>(),
      relatedUrl: Input.decodeList<RelatedUrlResponse>(
          map['relatedUrl'],
          (value) => RelatedUrlResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sbomReference: SBOMReferenceNoteResponse.fromMap(
          (map['sbomReference'] as Map).cast<String, dynamic>()),
      shortDescription: map['shortDescription'] as String,
      updateTime: map['updateTime'] as String,
      upgrade: UpgradeNoteResponse.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
      vulnerability: VulnerabilityNoteResponse.fromMap(
          (map['vulnerability'] as Map).cast<String, dynamic>()),
      vulnerabilityAssessment: VulnerabilityAssessmentNoteResponse.fromMap(
          (map['vulnerabilityAssessment'] as Map).cast<String, dynamic>()),
    );
  }
}
