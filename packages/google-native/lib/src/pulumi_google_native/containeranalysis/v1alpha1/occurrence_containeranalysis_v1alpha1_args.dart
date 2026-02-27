// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation.dart';
import 'build_details.dart';
import 'compliance_occurrence_containeranalysis_v1alpha1.dart';
import 'deployment_containeranalysis_v1alpha1.dart';
import 'derived.dart';
import 'discovered.dart';
import 'document_occurrence.dart';
import 'dsseattestation_occurrence_containeranalysis_v1alpha1.dart';
import 'envelope_containeranalysis_v1alpha1.dart';
import 'file_occurrence.dart';
import 'installation.dart';
import 'package_info_occurrence.dart';
import 'relationship_occurrence.dart';
import 'resource_type.dart';
import 'sbomreference_occurrence_containeranalysis_v1alpha1.dart';
import 'upgrade_occurrence_containeranalysis_v1alpha1.dart';
import 'vulnerability_details.dart';

/// The set of arguments for Occurrence.
class OccurrenceContaineranalysisV1alpha1Args {
  /// Describes an attestation of an artifact.
  final pulumi.Input<Attestation>? attestation;

  /// Build details for a verifiable build.
  final pulumi.Input<BuildDetails>? buildDetails;

  /// Describes whether or not a resource passes compliance checks.
  final pulumi.Input<ComplianceOccurrenceContaineranalysisV1alpha1>? compliance;

  /// Describes the deployment of an artifact on a runtime.
  final pulumi.Input<DeploymentContaineranalysisV1alpha1>? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  final pulumi.Input<Derived>? derivedImage;

  /// Describes the initial scan status for this resource.
  final pulumi.Input<Discovered>? discovered;

  /// This represents a DSSE attestation occurrence
  final pulumi.Input<DSSEAttestationOccurrenceContaineranalysisV1alpha1>?
      dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  final pulumi.Input<EnvelopeContaineranalysisV1alpha1>? envelope;

  /// Describes the installation of a package on the linked resource.
  final pulumi.Input<Installation>? installation;

  /// The name of the project. Should be of the form "projects/{project_id}". @Deprecated
  final pulumi.Input<String>? name;

  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  final pulumi.Input<String>? noteName;
  final pulumi.Input<String>? project;

  /// A description of actions that can be taken to remedy the `Note`
  final pulumi.Input<String>? remediation;

  /// The resource for which the `Occurrence` applies.
  final pulumi.Input<ResourceType>? resource;

  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  final pulumi.Input<String>? resourceUrl;

  /// Describes a specific software bill of materials document.
  final pulumi.Input<DocumentOccurrence>? sbom;

  /// This represents an SBOM reference occurrence
  final pulumi.Input<SBOMReferenceOccurrenceContaineranalysisV1alpha1>?
      sbomReference;

  /// Describes a specific SPDX File.
  final pulumi.Input<FileOccurrence>? spdxFile;

  /// Describes a specific SPDX Package.
  final pulumi.Input<PackageInfoOccurrence>? spdxPackage;

  /// Describes a specific relationship between SPDX elements.
  final pulumi.Input<RelationshipOccurrence>? spdxRelationship;

  /// Describes an upgrade.
  final pulumi.Input<UpgradeOccurrenceContaineranalysisV1alpha1>? upgrade;

  /// Details of a security vulnerability note.
  final pulumi.Input<VulnerabilityDetails>? vulnerabilityDetails;

  OccurrenceContaineranalysisV1alpha1Args({
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
          pulumi.Input.mapOptionalInputValue<Attestation, Map<String, dynamic>>(
              attestationValue, (value) => value.toMap());
    }
    final buildDetailsValue = buildDetails;
    if (buildDetailsValue != null) {
      map['buildDetails'] = pulumi.Input.mapOptionalInputValue<BuildDetails,
          Map<String, dynamic>>(buildDetailsValue, (value) => value.toMap());
    }
    final complianceValue = compliance;
    if (complianceValue != null) {
      map['compliance'] = pulumi.Input.mapOptionalInputValue<
          ComplianceOccurrenceContaineranalysisV1alpha1,
          Map<String, dynamic>>(complianceValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = pulumi.Input.mapOptionalInputValue<
          DeploymentContaineranalysisV1alpha1,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final derivedImageValue = derivedImage;
    if (derivedImageValue != null) {
      map['derivedImage'] =
          pulumi.Input.mapOptionalInputValue<Derived, Map<String, dynamic>>(
              derivedImageValue, (value) => value.toMap());
    }
    final discoveredValue = discovered;
    if (discoveredValue != null) {
      map['discovered'] =
          pulumi.Input.mapOptionalInputValue<Discovered, Map<String, dynamic>>(
              discoveredValue, (value) => value.toMap());
    }
    final dsseAttestationValue = dsseAttestation;
    if (dsseAttestationValue != null) {
      map['dsseAttestation'] = pulumi.Input.mapOptionalInputValue<
          DSSEAttestationOccurrenceContaineranalysisV1alpha1,
          Map<String, dynamic>>(dsseAttestationValue, (value) => value.toMap());
    }
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] = pulumi.Input.mapOptionalInputValue<
          EnvelopeContaineranalysisV1alpha1,
          Map<String, dynamic>>(envelopeValue, (value) => value.toMap());
    }
    final installationValue = installation;
    if (installationValue != null) {
      map['installation'] = pulumi.Input.mapOptionalInputValue<Installation,
          Map<String, dynamic>>(installationValue, (value) => value.toMap());
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
      map['resource'] = pulumi.Input.mapOptionalInputValue<ResourceType,
          Map<String, dynamic>>(resourceValue, (value) => value.toMap());
    }
    final resourceUrlValue = resourceUrl;
    if (resourceUrlValue != null) {
      map['resourceUrl'] = resourceUrlValue;
    }
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] = pulumi.Input.mapOptionalInputValue<DocumentOccurrence,
          Map<String, dynamic>>(sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = pulumi.Input.mapOptionalInputValue<
          SBOMReferenceOccurrenceContaineranalysisV1alpha1,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] = pulumi.Input.mapOptionalInputValue<FileOccurrence,
          Map<String, dynamic>>(spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] = pulumi.Input.mapOptionalInputValue<
          PackageInfoOccurrence,
          Map<String, dynamic>>(spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] = pulumi.Input.mapOptionalInputValue<
              RelationshipOccurrence, Map<String, dynamic>>(
          spdxRelationshipValue, (value) => value.toMap());
    }
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] = pulumi.Input.mapOptionalInputValue<
          UpgradeOccurrenceContaineranalysisV1alpha1,
          Map<String, dynamic>>(upgradeValue, (value) => value.toMap());
    }
    final vulnerabilityDetailsValue = vulnerabilityDetails;
    if (vulnerabilityDetailsValue != null) {
      map['vulnerabilityDetails'] = pulumi.Input.mapOptionalInputValue<
              VulnerabilityDetails, Map<String, dynamic>>(
          vulnerabilityDetailsValue, (value) => value.toMap());
    }
    return map;
  }

  factory OccurrenceContaineranalysisV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return OccurrenceContaineranalysisV1alpha1Args(
      attestation:
          pulumi.Input.asOptionalInput<Attestation>(map['attestation']),
      buildDetails:
          pulumi.Input.asOptionalInput<BuildDetails>(map['buildDetails']),
      compliance: pulumi.Input.asOptionalInput<
          ComplianceOccurrenceContaineranalysisV1alpha1>(map['compliance']),
      deployment:
          pulumi.Input.asOptionalInput<DeploymentContaineranalysisV1alpha1>(
              map['deployment']),
      derivedImage: pulumi.Input.asOptionalInput<Derived>(map['derivedImage']),
      discovered: pulumi.Input.asOptionalInput<Discovered>(map['discovered']),
      dsseAttestation: pulumi.Input.asOptionalInput<
              DSSEAttestationOccurrenceContaineranalysisV1alpha1>(
          map['dsseAttestation']),
      envelope: pulumi.Input.asOptionalInput<EnvelopeContaineranalysisV1alpha1>(
          map['envelope']),
      installation:
          pulumi.Input.asOptionalInput<Installation>(map['installation']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      noteName: pulumi.Input.asOptionalInput<String>(map['noteName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      remediation: pulumi.Input.asOptionalInput<String>(map['remediation']),
      resource: pulumi.Input.asOptionalInput<ResourceType>(map['resource']),
      resourceUrl: pulumi.Input.asOptionalInput<String>(map['resourceUrl']),
      sbom: pulumi.Input.asOptionalInput<DocumentOccurrence>(map['sbom']),
      sbomReference: pulumi.Input.asOptionalInput<
              SBOMReferenceOccurrenceContaineranalysisV1alpha1>(
          map['sbomReference']),
      spdxFile: pulumi.Input.asOptionalInput<FileOccurrence>(map['spdxFile']),
      spdxPackage: pulumi.Input.asOptionalInput<PackageInfoOccurrence>(
          map['spdxPackage']),
      spdxRelationship: pulumi.Input.asOptionalInput<RelationshipOccurrence>(
          map['spdxRelationship']),
      upgrade: pulumi.Input.asOptionalInput<
          UpgradeOccurrenceContaineranalysisV1alpha1>(map['upgrade']),
      vulnerabilityDetails: pulumi.Input.asOptionalInput<VulnerabilityDetails>(
          map['vulnerabilityDetails']),
    );
  }
}
