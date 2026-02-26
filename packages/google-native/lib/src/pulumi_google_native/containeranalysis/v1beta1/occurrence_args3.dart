// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'details.dart';
import 'document_occurrence2.dart';
import 'envelope3.dart';
import 'file_occurrence2.dart';
import 'grafeas_v1beta1_build_details.dart';
import 'grafeas_v1beta1_deployment_details.dart';
import 'grafeas_v1beta1_discovery_details.dart';
import 'grafeas_v1beta1_image_details.dart';
import 'grafeas_v1beta1_intoto_details.dart';
import 'grafeas_v1beta1_package_details.dart';
import 'grafeas_v1beta1_vulnerability_details.dart';
import 'package_info_occurrence2.dart';
import 'relationship_occurrence2.dart';
import 'resource_type2.dart';
import 'sbomreference_occurrence3.dart';

/// The set of arguments for Occurrence.
class OccurrenceArgs3 {
  /// Describes an attestation of an artifact.
  final Input<Details>? attestation;

  /// Describes a verifiable build.
  final Input<GrafeasV1beta1BuildDetails>? build;

  /// Describes the deployment of an artifact on a runtime.
  final Input<GrafeasV1beta1DeploymentDetails>? deployment;

  /// Describes how this resource derives from the basis in the associated note.
  final Input<GrafeasV1beta1ImageDetails>? derivedImage;

  /// Describes when a resource was discovered.
  final Input<GrafeasV1beta1DiscoveryDetails>? discovered;

  /// https://github.com/secure-systems-lab/dsse
  final Input<Envelope3>? envelope;

  /// Describes the installation of a package on the linked resource.
  final Input<GrafeasV1beta1PackageDetails>? installation;

  /// Describes a specific in-toto link.
  final Input<GrafeasV1beta1IntotoDetails>? intoto;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final Input<String> noteName;
  final Input<String>? project;

  /// A description of actions that can be taken to remedy the note.
  final Input<String>? remediation;

  /// Immutable. The resource for which the occurrence applies.
  final Input<ResourceType2> resource;

  /// Describes a specific software bill of materials document.
  final Input<DocumentOccurrence2>? sbom;

  /// Describes a specific SBOM reference occurrences.
  final Input<SBOMReferenceOccurrence3>? sbomReference;

  /// Describes a specific SPDX File.
  final Input<FileOccurrence2>? spdxFile;

  /// Describes a specific SPDX Package.
  final Input<PackageInfoOccurrence2>? spdxPackage;

  /// Describes a specific SPDX Relationship.
  final Input<RelationshipOccurrence2>? spdxRelationship;

  /// Describes a security vulnerability.
  final Input<GrafeasV1beta1VulnerabilityDetails>? vulnerability;

  OccurrenceArgs3({
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
          Input.mapOptionalInputValue<Details, Map<String, dynamic>>(
              attestationValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = Input.mapOptionalInputValue<GrafeasV1beta1BuildDetails,
          Map<String, dynamic>>(buildValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = Input.mapOptionalInputValue<
          GrafeasV1beta1DeploymentDetails,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final derivedImageValue = derivedImage;
    if (derivedImageValue != null) {
      map['derivedImage'] = Input.mapOptionalInputValue<
          GrafeasV1beta1ImageDetails,
          Map<String, dynamic>>(derivedImageValue, (value) => value.toMap());
    }
    final discoveredValue = discovered;
    if (discoveredValue != null) {
      map['discovered'] = Input.mapOptionalInputValue<
          GrafeasV1beta1DiscoveryDetails,
          Map<String, dynamic>>(discoveredValue, (value) => value.toMap());
    }
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] =
          Input.mapOptionalInputValue<Envelope3, Map<String, dynamic>>(
              envelopeValue, (value) => value.toMap());
    }
    final installationValue = installation;
    if (installationValue != null) {
      map['installation'] = Input.mapOptionalInputValue<
          GrafeasV1beta1PackageDetails,
          Map<String, dynamic>>(installationValue, (value) => value.toMap());
    }
    final intotoValue = intoto;
    if (intotoValue != null) {
      map['intoto'] = Input.mapOptionalInputValue<GrafeasV1beta1IntotoDetails,
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
    map['resource'] = Input.mapInputValue<ResourceType2, Map<String, dynamic>>(
        resource, (value) => value.toMap());
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] = Input.mapOptionalInputValue<DocumentOccurrence2,
          Map<String, dynamic>>(sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = Input.mapOptionalInputValue<
          SBOMReferenceOccurrence3,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] =
          Input.mapOptionalInputValue<FileOccurrence2, Map<String, dynamic>>(
              spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] = Input.mapOptionalInputValue<PackageInfoOccurrence2,
          Map<String, dynamic>>(spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] = Input.mapOptionalInputValue<
              RelationshipOccurrence2, Map<String, dynamic>>(
          spdxRelationshipValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] = Input.mapOptionalInputValue<
          GrafeasV1beta1VulnerabilityDetails,
          Map<String, dynamic>>(vulnerabilityValue, (value) => value.toMap());
    }
    return map;
  }

  factory OccurrenceArgs3.fromMap(Map<String, dynamic> map) {
    return OccurrenceArgs3(
      attestation: Input.asOptionalInput<Details>(map['attestation']),
      build: Input.asOptionalInput<GrafeasV1beta1BuildDetails>(map['build']),
      deployment: Input.asOptionalInput<GrafeasV1beta1DeploymentDetails>(
          map['deployment']),
      derivedImage: Input.asOptionalInput<GrafeasV1beta1ImageDetails>(
          map['derivedImage']),
      discovered: Input.asOptionalInput<GrafeasV1beta1DiscoveryDetails>(
          map['discovered']),
      envelope: Input.asOptionalInput<Envelope3>(map['envelope']),
      installation: Input.asOptionalInput<GrafeasV1beta1PackageDetails>(
          map['installation']),
      intoto: Input.asOptionalInput<GrafeasV1beta1IntotoDetails>(map['intoto']),
      noteName: Input.asInput<String>(map['noteName']),
      project: Input.asOptionalInput<String>(map['project']),
      remediation: Input.asOptionalInput<String>(map['remediation']),
      resource: Input.asInput<ResourceType2>(map['resource']),
      sbom: Input.asOptionalInput<DocumentOccurrence2>(map['sbom']),
      sbomReference:
          Input.asOptionalInput<SBOMReferenceOccurrence3>(map['sbomReference']),
      spdxFile: Input.asOptionalInput<FileOccurrence2>(map['spdxFile']),
      spdxPackage:
          Input.asOptionalInput<PackageInfoOccurrence2>(map['spdxPackage']),
      spdxRelationship: Input.asOptionalInput<RelationshipOccurrence2>(
          map['spdxRelationship']),
      vulnerability: Input.asOptionalInput<GrafeasV1beta1VulnerabilityDetails>(
          map['vulnerability']),
    );
  }
}
