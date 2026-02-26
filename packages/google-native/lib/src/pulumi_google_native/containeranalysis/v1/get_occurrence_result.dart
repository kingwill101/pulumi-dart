// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_occurrence_response.dart';
import 'build_occurrence_response.dart';
import 'compliance_occurrence_response.dart';
import 'deployment_occurrence_response.dart';
import 'discovery_occurrence_response.dart';
import 'dsseattestation_occurrence_response.dart';
import 'envelope_response.dart';
import 'image_occurrence_response.dart';
import 'package_occurrence_response.dart';
import 'sbomreference_occurrence_response.dart';
import 'upgrade_occurrence_response.dart';
import 'vulnerability_occurrence_response.dart';

/// Result data returned by getOccurrence.
class GetOccurrenceResult {
  /// Describes an attestation of an artifact.
  final AttestationOccurrenceResponse attestation;

  /// Describes a verifiable build.
  final BuildOccurrenceResponse build;

  /// Describes a compliance violation on a linked resource.
  final ComplianceOccurrenceResponse compliance;

  /// The time this occurrence was created.
  final String createTime;

  /// Describes the deployment of an artifact on a runtime.
  final DeploymentOccurrenceResponse deployment;

  /// Describes when a resource was discovered.
  final DiscoveryOccurrenceResponse discovery;

  /// Describes an attestation of an artifact using dsse.
  final DSSEAttestationOccurrenceResponse dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  final EnvelopeResponse envelope;

  /// Describes how this resource derives from the basis in the associated note.
  final ImageOccurrenceResponse image;

  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  final String kind;

  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  final String name;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final String noteName;

  /// Describes the installation of a package on the linked resource.
  final PackageOccurrenceResponse package;

  /// A description of actions that can be taken to remedy the note.
  final String remediation;

  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  final String resourceUri;

  /// Describes a specific SBOM reference occurrences.
  final SBOMReferenceOccurrenceResponse sbomReference;

  /// The time this occurrence was last updated.
  final String updateTime;

  /// Describes an available package upgrade on the linked resource.
  final UpgradeOccurrenceResponse upgrade;

  /// Describes a security vulnerability.
  final VulnerabilityOccurrenceResponse vulnerability;

  GetOccurrenceResult({
    required this.attestation,
    required this.build,
    required this.compliance,
    required this.createTime,
    required this.deployment,
    required this.discovery,
    required this.dsseAttestation,
    required this.envelope,
    required this.image,
    required this.kind,
    required this.name,
    required this.noteName,
    required this.package,
    required this.remediation,
    required this.resourceUri,
    required this.sbomReference,
    required this.updateTime,
    required this.upgrade,
    required this.vulnerability,
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
    map['envelope'] = envelope.toMap();
    map['image'] = image.toMap();
    map['kind'] = kind;
    map['name'] = name;
    map['noteName'] = noteName;
    map['package'] = package.toMap();
    map['remediation'] = remediation;
    map['resourceUri'] = resourceUri;
    map['sbomReference'] = sbomReference.toMap();
    map['updateTime'] = updateTime;
    map['upgrade'] = upgrade.toMap();
    map['vulnerability'] = vulnerability.toMap();
    return map;
  }

  factory GetOccurrenceResult.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceResult(
      attestation: AttestationOccurrenceResponse.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
      build: BuildOccurrenceResponse.fromMap(
          (map['build'] as Map).cast<String, dynamic>()),
      compliance: ComplianceOccurrenceResponse.fromMap(
          (map['compliance'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployment: DeploymentOccurrenceResponse.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
      discovery: DiscoveryOccurrenceResponse.fromMap(
          (map['discovery'] as Map).cast<String, dynamic>()),
      dsseAttestation: DSSEAttestationOccurrenceResponse.fromMap(
          (map['dsseAttestation'] as Map).cast<String, dynamic>()),
      envelope: EnvelopeResponse.fromMap(
          (map['envelope'] as Map).cast<String, dynamic>()),
      image: ImageOccurrenceResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      noteName: map['noteName'] as String,
      package: PackageOccurrenceResponse.fromMap(
          (map['package'] as Map).cast<String, dynamic>()),
      remediation: map['remediation'] as String,
      resourceUri: map['resourceUri'] as String,
      sbomReference: SBOMReferenceOccurrenceResponse.fromMap(
          (map['sbomReference'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      upgrade: UpgradeOccurrenceResponse.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
      vulnerability: VulnerabilityOccurrenceResponse.fromMap(
          (map['vulnerability'] as Map).cast<String, dynamic>()),
    );
  }
}
