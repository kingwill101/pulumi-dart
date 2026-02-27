// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'details.dart';
import 'document_occurrence_containeranalysis_v1beta1.dart';
import 'envelope_containeranalysis_v1beta1.dart';
import 'file_occurrence_containeranalysis_v1beta1.dart';
import 'grafeas_v1beta1_build_details.dart';
import 'grafeas_v1beta1_deployment_details.dart';
import 'grafeas_v1beta1_discovery_details.dart';
import 'grafeas_v1beta1_image_details.dart';
import 'grafeas_v1beta1_intoto_details.dart';
import 'grafeas_v1beta1_package_details.dart';
import 'grafeas_v1beta1_vulnerability_details.dart';
import 'package_info_occurrence_containeranalysis_v1beta1.dart';
import 'relationship_occurrence_containeranalysis_v1beta1.dart';
import 'resource_containeranalysis_v1beta1.dart';
import 'sbomreference_occurrence_containeranalysis_v1beta1.dart';

/// The set of arguments for Occurrence.
class OccurrenceContaineranalysisV1beta1Args {
  /// Describes an attestation of an artifact.
  final pulumi.Input<Details>? attestation;

  /// Describes a verifiable build.
  final pulumi.Input<GrafeasV1beta1BuildDetails>? build;

  /// Describes the deployment of an artifact on a runtime.
  final pulumi.Input<GrafeasV1beta1DeploymentDetails>? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  final pulumi.Input<GrafeasV1beta1ImageDetails>? derivedImage;

  /// Describes when a resource was discovered.
  final pulumi.Input<GrafeasV1beta1DiscoveryDetails>? discovered;

  /// https://github.com/secure-systems-lab/dsse
  final pulumi.Input<EnvelopeContaineranalysisV1beta1>? envelope;

  /// Describes the installation of a package on the linked resource.
  final pulumi.Input<GrafeasV1beta1PackageDetails>? installation;

  /// Describes a specific in-toto link.
  final pulumi.Input<GrafeasV1beta1IntotoDetails>? intoto;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final pulumi.Input<String> noteName;
  final pulumi.Input<String>? project;

  /// A description of actions that can be taken to remedy the note.
  final pulumi.Input<String>? remediation;

  /// Immutable. The resource for which the occurrence applies.
  final pulumi.Input<ResourceContaineranalysisV1beta1> resource;

  /// Describes a specific software bill of materials document.
  final pulumi.Input<DocumentOccurrenceContaineranalysisV1beta1>? sbom;

  /// Describes a specific SBOM reference occurrences.
  final pulumi.Input<SBOMReferenceOccurrenceContaineranalysisV1beta1>?
      sbomReference;

  /// Describes a specific SPDX File.
  final pulumi.Input<FileOccurrenceContaineranalysisV1beta1>? spdxFile;

  /// Describes a specific SPDX Package.
  final pulumi.Input<PackageInfoOccurrenceContaineranalysisV1beta1>?
      spdxPackage;

  /// Describes a specific SPDX Relationship.
  final pulumi.Input<RelationshipOccurrenceContaineranalysisV1beta1>?
      spdxRelationship;

  /// Describes a security vulnerability.
  final pulumi.Input<GrafeasV1beta1VulnerabilityDetails>? vulnerability;

  OccurrenceContaineranalysisV1beta1Args({
    this.attestation,
    this.build,
    this.deployment,
    this.derivedImage,
    this.discovered,
    this.envelope,
    this.installation,
    this.intoto,
    required this.noteName,
    this.project,
    this.remediation,
    required this.resource,
    this.sbom,
    this.sbomReference,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.vulnerability,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationValue = attestation;
    if (attestationValue != null) {
      map['attestation'] =
          pulumi.Input.mapOptionalInputValue<Details, Map<String, dynamic>>(
              attestationValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1BuildDetails,
          Map<String, dynamic>>(buildValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1DeploymentDetails,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final derivedImageValue = derivedImage;
    if (derivedImageValue != null) {
      map['derivedImage'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1ImageDetails,
          Map<String, dynamic>>(derivedImageValue, (value) => value.toMap());
    }
    final discoveredValue = discovered;
    if (discoveredValue != null) {
      map['discovered'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1DiscoveryDetails,
          Map<String, dynamic>>(discoveredValue, (value) => value.toMap());
    }
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] = pulumi.Input.mapOptionalInputValue<
          EnvelopeContaineranalysisV1beta1,
          Map<String, dynamic>>(envelopeValue, (value) => value.toMap());
    }
    final installationValue = installation;
    if (installationValue != null) {
      map['installation'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1PackageDetails,
          Map<String, dynamic>>(installationValue, (value) => value.toMap());
    }
    final intotoValue = intoto;
    if (intotoValue != null) {
      map['intoto'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1IntotoDetails,
          Map<String, dynamic>>(intotoValue, (value) => value.toMap());
    }
    map['noteName'] = noteName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remediationValue = remediation;
    if (remediationValue != null) {
      map['remediation'] = remediationValue;
    }
    map['resource'] = pulumi.Input.mapInputValue<
        ResourceContaineranalysisV1beta1,
        Map<String, dynamic>>(resource, (value) => value.toMap());
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] = pulumi.Input.mapOptionalInputValue<
          DocumentOccurrenceContaineranalysisV1beta1,
          Map<String, dynamic>>(sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = pulumi.Input.mapOptionalInputValue<
          SBOMReferenceOccurrenceContaineranalysisV1beta1,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] = pulumi.Input.mapOptionalInputValue<
          FileOccurrenceContaineranalysisV1beta1,
          Map<String, dynamic>>(spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] = pulumi.Input.mapOptionalInputValue<
          PackageInfoOccurrenceContaineranalysisV1beta1,
          Map<String, dynamic>>(spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] = pulumi.Input.mapOptionalInputValue<
              RelationshipOccurrenceContaineranalysisV1beta1,
              Map<String, dynamic>>(
          spdxRelationshipValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] = pulumi.Input.mapOptionalInputValue<
          GrafeasV1beta1VulnerabilityDetails,
          Map<String, dynamic>>(vulnerabilityValue, (value) => value.toMap());
    }
    return map;
  }

  factory OccurrenceContaineranalysisV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return OccurrenceContaineranalysisV1beta1Args(
      attestation: pulumi.Input.asOptionalInput<Details>(map['attestation']),
      build: pulumi.Input.asOptionalInput<GrafeasV1beta1BuildDetails>(
          map['build']),
      deployment: pulumi.Input.asOptionalInput<GrafeasV1beta1DeploymentDetails>(
          map['deployment']),
      derivedImage: pulumi.Input.asOptionalInput<GrafeasV1beta1ImageDetails>(
          map['derivedImage']),
      discovered: pulumi.Input.asOptionalInput<GrafeasV1beta1DiscoveryDetails>(
          map['discovered']),
      envelope: pulumi.Input.asOptionalInput<EnvelopeContaineranalysisV1beta1>(
          map['envelope']),
      installation: pulumi.Input.asOptionalInput<GrafeasV1beta1PackageDetails>(
          map['installation']),
      intoto: pulumi.Input.asOptionalInput<GrafeasV1beta1IntotoDetails>(
          map['intoto']),
      noteName: pulumi.Input.asInput<String>(map['noteName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      remediation: pulumi.Input.asOptionalInput<String>(map['remediation']),
      resource: pulumi.Input.asInput<ResourceContaineranalysisV1beta1>(
          map['resource']),
      sbom: pulumi.Input.asOptionalInput<
          DocumentOccurrenceContaineranalysisV1beta1>(map['sbom']),
      sbomReference: pulumi.Input.asOptionalInput<
              SBOMReferenceOccurrenceContaineranalysisV1beta1>(
          map['sbomReference']),
      spdxFile:
          pulumi.Input.asOptionalInput<FileOccurrenceContaineranalysisV1beta1>(
              map['spdxFile']),
      spdxPackage: pulumi.Input.asOptionalInput<
          PackageInfoOccurrenceContaineranalysisV1beta1>(map['spdxPackage']),
      spdxRelationship: pulumi.Input.asOptionalInput<
              RelationshipOccurrenceContaineranalysisV1beta1>(
          map['spdxRelationship']),
      vulnerability:
          pulumi.Input.asOptionalInput<GrafeasV1beta1VulnerabilityDetails>(
              map['vulnerability']),
    );
  }
}
