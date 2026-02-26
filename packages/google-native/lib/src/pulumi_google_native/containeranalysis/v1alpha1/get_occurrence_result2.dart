// ignore_for_file: unused_element, unnecessary_cast

import 'attestation_response.dart';
import 'build_details_response.dart';
import 'compliance_occurrence_response2.dart';
import 'deployment_response3.dart';
import 'derived_response.dart';
import 'discovered_response.dart';
import 'document_occurrence_response.dart';
import 'dsseattestation_occurrence_response2.dart';
import 'envelope_response2.dart';
import 'file_occurrence_response.dart';
import 'installation_response.dart';
import 'package_info_occurrence_response.dart';
import 'relationship_occurrence_response.dart';
import 'resource_response.dart';
import 'sbomreference_occurrence_response2.dart';
import 'upgrade_occurrence_response2.dart';
import 'vulnerability_details_response.dart';

/// Result data returned by getOccurrence.
class GetOccurrenceResult2 {
  /// Describes an attestation of an artifact.
  final AttestationResponse attestation;

  /// Build details for a verifiable build.
  final BuildDetailsResponse buildDetails;

  /// Describes whether or not a resource passes compliance checks.
  final ComplianceOccurrenceResponse2 compliance;

  /// The time this `Occurrence` was created.
  final String createTime;

  /// Describes the deployment of an artifact on a runtime.
  final DeploymentResponse3 deployment;

  /// Describes how this resource derives from the basis in the associated note.
  final DerivedResponse derivedImage;

  /// Describes the initial scan status for this resource.
  final DiscoveredResponse discovered;

  /// This represents a DSSE attestation occurrence
  final DSSEAttestationOccurrenceResponse2 dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  final EnvelopeResponse2 envelope;

  /// Describes the installation of a package on the linked resource.
  final InstallationResponse installation;

  /// This explicitly denotes which of the `Occurrence` details are specified. This field can be used as a filter in list requests.
  final String kind;

  /// The name of the `Occurrence` in the form "projects/{project_id}/occurrences/{OCCURRENCE_ID}"
  final String name;

  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  final String noteName;

  /// A description of actions that can be taken to remedy the `Note`
  final String remediation;

  /// The resource for which the `Occurrence` applies.
  final ResourceResponse resource;

  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  final String resourceUrl;

  /// Describes a specific software bill of materials document.
  final DocumentOccurrenceResponse sbom;

  /// This represents an SBOM reference occurrence
  final SBOMReferenceOccurrenceResponse2 sbomReference;

  /// Describes a specific SPDX File.
  final FileOccurrenceResponse spdxFile;

  /// Describes a specific SPDX Package.
  final PackageInfoOccurrenceResponse spdxPackage;

  /// Describes a specific relationship between SPDX elements.
  final RelationshipOccurrenceResponse spdxRelationship;

  /// The time this `Occurrence` was last updated.
  final String updateTime;

  /// Describes an upgrade.
  final UpgradeOccurrenceResponse2 upgrade;

  /// Details of a security vulnerability note.
  final VulnerabilityDetailsResponse vulnerabilityDetails;

  GetOccurrenceResult2({
    required this.attestation,
    required this.buildDetails,
    required this.compliance,
    required this.createTime,
    required this.deployment,
    required this.derivedImage,
    required this.discovered,
    required this.dsseAttestation,
    required this.envelope,
    required this.installation,
    required this.kind,
    required this.name,
    required this.noteName,
    required this.remediation,
    required this.resource,
    required this.resourceUrl,
    required this.sbom,
    required this.sbomReference,
    required this.spdxFile,
    required this.spdxPackage,
    required this.spdxRelationship,
    required this.updateTime,
    required this.upgrade,
    required this.vulnerabilityDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestation'] = attestation.toMap();
    map['buildDetails'] = buildDetails.toMap();
    map['compliance'] = compliance.toMap();
    map['createTime'] = createTime;
    map['deployment'] = deployment.toMap();
    map['derivedImage'] = derivedImage.toMap();
    map['discovered'] = discovered.toMap();
    map['dsseAttestation'] = dsseAttestation.toMap();
    map['envelope'] = envelope.toMap();
    map['installation'] = installation.toMap();
    map['kind'] = kind;
    map['name'] = name;
    map['noteName'] = noteName;
    map['remediation'] = remediation;
    map['resource'] = resource.toMap();
    map['resourceUrl'] = resourceUrl;
    map['sbom'] = sbom.toMap();
    map['sbomReference'] = sbomReference.toMap();
    map['spdxFile'] = spdxFile.toMap();
    map['spdxPackage'] = spdxPackage.toMap();
    map['spdxRelationship'] = spdxRelationship.toMap();
    map['updateTime'] = updateTime;
    map['upgrade'] = upgrade.toMap();
    map['vulnerabilityDetails'] = vulnerabilityDetails.toMap();
    return map;
  }

  factory GetOccurrenceResult2.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceResult2(
      attestation: AttestationResponse.fromMap(
          (map['attestation'] as Map).cast<String, dynamic>()),
      buildDetails: BuildDetailsResponse.fromMap(
          (map['buildDetails'] as Map).cast<String, dynamic>()),
      compliance: ComplianceOccurrenceResponse2.fromMap(
          (map['compliance'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployment: DeploymentResponse3.fromMap(
          (map['deployment'] as Map).cast<String, dynamic>()),
      derivedImage: DerivedResponse.fromMap(
          (map['derivedImage'] as Map).cast<String, dynamic>()),
      discovered: DiscoveredResponse.fromMap(
          (map['discovered'] as Map).cast<String, dynamic>()),
      dsseAttestation: DSSEAttestationOccurrenceResponse2.fromMap(
          (map['dsseAttestation'] as Map).cast<String, dynamic>()),
      envelope: EnvelopeResponse2.fromMap(
          (map['envelope'] as Map).cast<String, dynamic>()),
      installation: InstallationResponse.fromMap(
          (map['installation'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      noteName: map['noteName'] as String,
      remediation: map['remediation'] as String,
      resource: ResourceResponse.fromMap(
          (map['resource'] as Map).cast<String, dynamic>()),
      resourceUrl: map['resourceUrl'] as String,
      sbom: DocumentOccurrenceResponse.fromMap(
          (map['sbom'] as Map).cast<String, dynamic>()),
      sbomReference: SBOMReferenceOccurrenceResponse2.fromMap(
          (map['sbomReference'] as Map).cast<String, dynamic>()),
      spdxFile: FileOccurrenceResponse.fromMap(
          (map['spdxFile'] as Map).cast<String, dynamic>()),
      spdxPackage: PackageInfoOccurrenceResponse.fromMap(
          (map['spdxPackage'] as Map).cast<String, dynamic>()),
      spdxRelationship: RelationshipOccurrenceResponse.fromMap(
          (map['spdxRelationship'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      upgrade: UpgradeOccurrenceResponse2.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
      vulnerabilityDetails: VulnerabilityDetailsResponse.fromMap(
          (map['vulnerabilityDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
