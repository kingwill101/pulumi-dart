// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'attestation.dart';
import 'build_details.dart';
import 'compliance_occurrence2.dart';
import 'deployment_type3.dart';
import 'derived.dart';
import 'discovered.dart';
import 'document_occurrence.dart';
import 'dsseattestation_occurrence2.dart';
import 'envelope2.dart';
import 'file_occurrence.dart';
import 'installation.dart';
import 'package_info_occurrence.dart';
import 'relationship_occurrence.dart';
import 'resource_type.dart';
import 'sbomreference_occurrence2.dart';
import 'upgrade_occurrence2.dart';
import 'vulnerability_details.dart';

/// The set of arguments for Occurrence.
class OccurrenceArgs2 {
  /// Describes an attestation of an artifact.
  final Input<Attestation>? attestation;

  /// Build details for a verifiable build.
  final Input<BuildDetails>? buildDetails;

  /// Describes whether or not a resource passes compliance checks.
  final Input<ComplianceOccurrence2>? compliance;

  /// Describes the deployment of an artifact on a runtime.
  final Input<DeploymentType3>? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  final Input<Derived>? derivedImage;

  /// Describes the initial scan status for this resource.
  final Input<Discovered>? discovered;

  /// This represents a DSSE attestation occurrence
  final Input<DSSEAttestationOccurrence2>? dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  final Input<Envelope2>? envelope;

  /// Describes the installation of a package on the linked resource.
  final Input<Installation>? installation;

  /// The name of the project. Should be of the form "projects/{project_id}". @Deprecated
  final Input<String>? name;

  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  final Input<String>? noteName;
  final Input<String>? project;

  /// A description of actions that can be taken to remedy the `Note`
  final Input<String>? remediation;

  /// The resource for which the `Occurrence` applies.
  final Input<ResourceType>? resource;

  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  final Input<String>? resourceUrl;

  /// Describes a specific software bill of materials document.
  final Input<DocumentOccurrence>? sbom;

  /// This represents an SBOM reference occurrence
  final Input<SBOMReferenceOccurrence2>? sbomReference;

  /// Describes a specific SPDX File.
  final Input<FileOccurrence>? spdxFile;

  /// Describes a specific SPDX Package.
  final Input<PackageInfoOccurrence>? spdxPackage;

  /// Describes a specific relationship between SPDX elements.
  final Input<RelationshipOccurrence>? spdxRelationship;

  /// Describes an upgrade.
  final Input<UpgradeOccurrence2>? upgrade;

  /// Details of a security vulnerability note.
  final Input<VulnerabilityDetails>? vulnerabilityDetails;

  OccurrenceArgs2({
    this.attestation,
    this.buildDetails,
    this.compliance,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.dsseAttestation,
    this.envelope,
    this.installation,
    this.name,
    this.noteName,
    this.project,
    this.remediation,
    this.resource,
    this.resourceUrl,
    this.sbom,
    this.sbomReference,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.upgrade,
    this.vulnerabilityDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationValue = attestation;
    if (attestationValue != null) {
      map['attestation'] =
          Input.mapOptionalInputValue<Attestation, Map<String, dynamic>>(
              attestationValue, (value) => value.toMap());
    }
    final buildDetailsValue = buildDetails;
    if (buildDetailsValue != null) {
      map['buildDetails'] =
          Input.mapOptionalInputValue<BuildDetails, Map<String, dynamic>>(
              buildDetailsValue, (value) => value.toMap());
    }
    final complianceValue = compliance;
    if (complianceValue != null) {
      map['compliance'] = Input.mapOptionalInputValue<ComplianceOccurrence2,
          Map<String, dynamic>>(complianceValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] =
          Input.mapOptionalInputValue<DeploymentType3, Map<String, dynamic>>(
              deploymentValue, (value) => value.toMap());
    }
    final derivedImageValue = derivedImage;
    if (derivedImageValue != null) {
      map['derivedImage'] =
          Input.mapOptionalInputValue<Derived, Map<String, dynamic>>(
              derivedImageValue, (value) => value.toMap());
    }
    final discoveredValue = discovered;
    if (discoveredValue != null) {
      map['discovered'] =
          Input.mapOptionalInputValue<Discovered, Map<String, dynamic>>(
              discoveredValue, (value) => value.toMap());
    }
    final dsseAttestationValue = dsseAttestation;
    if (dsseAttestationValue != null) {
      map['dsseAttestation'] = Input.mapOptionalInputValue<
          DSSEAttestationOccurrence2,
          Map<String, dynamic>>(dsseAttestationValue, (value) => value.toMap());
    }
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] =
          Input.mapOptionalInputValue<Envelope2, Map<String, dynamic>>(
              envelopeValue, (value) => value.toMap());
    }
    final installationValue = installation;
    if (installationValue != null) {
      map['installation'] =
          Input.mapOptionalInputValue<Installation, Map<String, dynamic>>(
              installationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final noteNameValue = noteName;
    if (noteNameValue != null) {
      map['noteName'] = noteNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remediationValue = remediation;
    if (remediationValue != null) {
      map['remediation'] = remediationValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] =
          Input.mapOptionalInputValue<ResourceType, Map<String, dynamic>>(
              resourceValue, (value) => value.toMap());
    }
    final resourceUrlValue = resourceUrl;
    if (resourceUrlValue != null) {
      map['resourceUrl'] = resourceUrlValue;
    }
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] =
          Input.mapOptionalInputValue<DocumentOccurrence, Map<String, dynamic>>(
              sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = Input.mapOptionalInputValue<
          SBOMReferenceOccurrence2,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] =
          Input.mapOptionalInputValue<FileOccurrence, Map<String, dynamic>>(
              spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] = Input.mapOptionalInputValue<PackageInfoOccurrence,
          Map<String, dynamic>>(spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] = Input.mapOptionalInputValue<
              RelationshipOccurrence, Map<String, dynamic>>(
          spdxRelationshipValue, (value) => value.toMap());
    }
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] =
          Input.mapOptionalInputValue<UpgradeOccurrence2, Map<String, dynamic>>(
              upgradeValue, (value) => value.toMap());
    }
    final vulnerabilityDetailsValue = vulnerabilityDetails;
    if (vulnerabilityDetailsValue != null) {
      map['vulnerabilityDetails'] = Input.mapOptionalInputValue<
              VulnerabilityDetails, Map<String, dynamic>>(
          vulnerabilityDetailsValue, (value) => value.toMap());
    }
    return map;
  }

  factory OccurrenceArgs2.fromMap(Map<String, dynamic> map) {
    return OccurrenceArgs2(
      attestation: Input.asOptionalInput<Attestation>(map['attestation']),
      buildDetails: Input.asOptionalInput<BuildDetails>(map['buildDetails']),
      compliance:
          Input.asOptionalInput<ComplianceOccurrence2>(map['compliance']),
      deployment: Input.asOptionalInput<DeploymentType3>(map['deployment']),
      derivedImage: Input.asOptionalInput<Derived>(map['derivedImage']),
      discovered: Input.asOptionalInput<Discovered>(map['discovered']),
      dsseAttestation: Input.asOptionalInput<DSSEAttestationOccurrence2>(
          map['dsseAttestation']),
      envelope: Input.asOptionalInput<Envelope2>(map['envelope']),
      installation: Input.asOptionalInput<Installation>(map['installation']),
      name: Input.asOptionalInput<String>(map['name']),
      noteName: Input.asOptionalInput<String>(map['noteName']),
      project: Input.asOptionalInput<String>(map['project']),
      remediation: Input.asOptionalInput<String>(map['remediation']),
      resource: Input.asOptionalInput<ResourceType>(map['resource']),
      resourceUrl: Input.asOptionalInput<String>(map['resourceUrl']),
      sbom: Input.asOptionalInput<DocumentOccurrence>(map['sbom']),
      sbomReference:
          Input.asOptionalInput<SBOMReferenceOccurrence2>(map['sbomReference']),
      spdxFile: Input.asOptionalInput<FileOccurrence>(map['spdxFile']),
      spdxPackage:
          Input.asOptionalInput<PackageInfoOccurrence>(map['spdxPackage']),
      spdxRelationship: Input.asOptionalInput<RelationshipOccurrence>(
          map['spdxRelationship']),
      upgrade: Input.asOptionalInput<UpgradeOccurrence2>(map['upgrade']),
      vulnerabilityDetails: Input.asOptionalInput<VulnerabilityDetails>(
          map['vulnerabilityDetails']),
    );
  }
}
