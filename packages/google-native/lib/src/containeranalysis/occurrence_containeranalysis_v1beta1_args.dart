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

/// {@template pulumi_containeranalysis_v1beta1_occurrence_containeranalysis_v1beta1_args_doc}
/// The set of arguments for Occurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_occurrence_containeranalysis_v1beta1_args_doc}
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

  /// Creates a new [OccurrenceContaineranalysisV1beta1Args].
  /// [attestation] Describes an attestation of an artifact.
  /// [build] Describes a verifiable build.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [derivedImage] Describes how this resource derives from the basis in the associated note.
  /// [discovered] Describes when a resource was discovered.
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [installation] Describes the installation of a package on the linked resource.
  /// [intoto] Describes a specific in-toto link.
  /// [noteName] Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  /// [project] Optional.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resource] Immutable. The resource for which the occurrence applies.
  /// [sbom] Describes a specific software bill of materials document.
  /// [sbomReference] Describes a specific SBOM reference occurrences.
  /// [spdxFile] Describes a specific SPDX File.
  /// [spdxPackage] Describes a specific SPDX Package.
  /// [spdxRelationship] Describes a specific SPDX Relationship.
  /// [vulnerability] Describes a security vulnerability.
  OccurrenceContaineranalysisV1beta1Args({
    Details? attestation,
    GrafeasV1beta1BuildDetails? build,
    GrafeasV1beta1DeploymentDetails? deployment,
    GrafeasV1beta1ImageDetails? derivedImage,
    GrafeasV1beta1DiscoveryDetails? discovered,
    EnvelopeContaineranalysisV1beta1? envelope,
    GrafeasV1beta1PackageDetails? installation,
    GrafeasV1beta1IntotoDetails? intoto,
    required String noteName,
    String? project,
    String? remediation,
    required ResourceContaineranalysisV1beta1 resource,
    DocumentOccurrenceContaineranalysisV1beta1? sbom,
    SBOMReferenceOccurrenceContaineranalysisV1beta1? sbomReference,
    FileOccurrenceContaineranalysisV1beta1? spdxFile,
    PackageInfoOccurrenceContaineranalysisV1beta1? spdxPackage,
    RelationshipOccurrenceContaineranalysisV1beta1? spdxRelationship,
    GrafeasV1beta1VulnerabilityDetails? vulnerability,
  }) : attestation = pulumi.Input.asOptionalInput<Details>(attestation),
       build = pulumi.Input.asOptionalInput<GrafeasV1beta1BuildDetails>(build),
       deployment = pulumi
           .Input.asOptionalInput<GrafeasV1beta1DeploymentDetails>(deployment),
       derivedImage = pulumi.Input.asOptionalInput<GrafeasV1beta1ImageDetails>(
         derivedImage,
       ),
       discovered = pulumi
           .Input.asOptionalInput<GrafeasV1beta1DiscoveryDetails>(discovered),
       envelope = pulumi
           .Input.asOptionalInput<EnvelopeContaineranalysisV1beta1>(envelope),
       installation = pulumi
           .Input.asOptionalInput<GrafeasV1beta1PackageDetails>(installation),
       intoto = pulumi.Input.asOptionalInput<GrafeasV1beta1IntotoDetails>(
         intoto,
       ),
       noteName = pulumi.Input.asInput<String>(noteName),
       project = pulumi.Input.asOptionalInput<String>(project),
       remediation = pulumi.Input.asOptionalInput<String>(remediation),
       resource = pulumi.Input.asInput<ResourceContaineranalysisV1beta1>(
         resource,
       ),
       sbom =
           pulumi.Input.asOptionalInput<
             DocumentOccurrenceContaineranalysisV1beta1
           >(sbom),
       sbomReference =
           pulumi.Input.asOptionalInput<
             SBOMReferenceOccurrenceContaineranalysisV1beta1
           >(sbomReference),
       spdxFile =
           pulumi.Input.asOptionalInput<FileOccurrenceContaineranalysisV1beta1>(
             spdxFile,
           ),
       spdxPackage =
           pulumi.Input.asOptionalInput<
             PackageInfoOccurrenceContaineranalysisV1beta1
           >(spdxPackage),
       spdxRelationship =
           pulumi.Input.asOptionalInput<
             RelationshipOccurrenceContaineranalysisV1beta1
           >(spdxRelationship),
       vulnerability =
           pulumi.Input.asOptionalInput<GrafeasV1beta1VulnerabilityDetails>(
             vulnerability,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestation':
          ?pulumi.Input.mapOptionalInputValue<Details, Map<String, dynamic>>(
            attestation,
            (value) => value.toMap(),
          ),
      'build':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1BuildDetails,
            Map<String, dynamic>
          >(build, (value) => value.toMap()),
      'deployment':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1DeploymentDetails,
            Map<String, dynamic>
          >(deployment, (value) => value.toMap()),
      'derivedImage':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1ImageDetails,
            Map<String, dynamic>
          >(derivedImage, (value) => value.toMap()),
      'discovered':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1DiscoveryDetails,
            Map<String, dynamic>
          >(discovered, (value) => value.toMap()),
      'envelope':
          ?pulumi.Input.mapOptionalInputValue<
            EnvelopeContaineranalysisV1beta1,
            Map<String, dynamic>
          >(envelope, (value) => value.toMap()),
      'installation':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1PackageDetails,
            Map<String, dynamic>
          >(installation, (value) => value.toMap()),
      'intoto':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1IntotoDetails,
            Map<String, dynamic>
          >(intoto, (value) => value.toMap()),
      'noteName': noteName,
      'project': ?project,
      'remediation': ?remediation,
      'resource':
          pulumi.Input.mapInputValue<
            ResourceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(resource, (value) => value.toMap()),
      'sbom':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(sbom, (value) => value.toMap()),
      'sbomReference':
          ?pulumi.Input.mapOptionalInputValue<
            SBOMReferenceOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(sbomReference, (value) => value.toMap()),
      'spdxFile':
          ?pulumi.Input.mapOptionalInputValue<
            FileOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxFile, (value) => value.toMap()),
      'spdxPackage':
          ?pulumi.Input.mapOptionalInputValue<
            PackageInfoOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxPackage, (value) => value.toMap()),
      'spdxRelationship':
          ?pulumi.Input.mapOptionalInputValue<
            RelationshipOccurrenceContaineranalysisV1beta1,
            Map<String, dynamic>
          >(spdxRelationship, (value) => value.toMap()),
      'vulnerability':
          ?pulumi.Input.mapOptionalInputValue<
            GrafeasV1beta1VulnerabilityDetails,
            Map<String, dynamic>
          >(vulnerability, (value) => value.toMap()),
    };
  }

  factory OccurrenceContaineranalysisV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return OccurrenceContaineranalysisV1beta1Args(
      attestation: map['attestation'] == null
          ? null
          : Details.fromMap(
              (map['attestation'] as Map).cast<String, dynamic>(),
            ),
      build: map['build'] == null
          ? null
          : GrafeasV1beta1BuildDetails.fromMap(
              (map['build'] as Map).cast<String, dynamic>(),
            ),
      deployment: map['deployment'] == null
          ? null
          : GrafeasV1beta1DeploymentDetails.fromMap(
              (map['deployment'] as Map).cast<String, dynamic>(),
            ),
      derivedImage: map['derivedImage'] == null
          ? null
          : GrafeasV1beta1ImageDetails.fromMap(
              (map['derivedImage'] as Map).cast<String, dynamic>(),
            ),
      discovered: map['discovered'] == null
          ? null
          : GrafeasV1beta1DiscoveryDetails.fromMap(
              (map['discovered'] as Map).cast<String, dynamic>(),
            ),
      envelope: map['envelope'] == null
          ? null
          : EnvelopeContaineranalysisV1beta1.fromMap(
              (map['envelope'] as Map).cast<String, dynamic>(),
            ),
      installation: map['installation'] == null
          ? null
          : GrafeasV1beta1PackageDetails.fromMap(
              (map['installation'] as Map).cast<String, dynamic>(),
            ),
      intoto: map['intoto'] == null
          ? null
          : GrafeasV1beta1IntotoDetails.fromMap(
              (map['intoto'] as Map).cast<String, dynamic>(),
            ),
      noteName: map['noteName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      remediation: map['remediation'] == null
          ? null
          : map['remediation'] as String,
      resource: ResourceContaineranalysisV1beta1.fromMap(
        (map['resource'] as Map).cast<String, dynamic>(),
      ),
      sbom: map['sbom'] == null
          ? null
          : DocumentOccurrenceContaineranalysisV1beta1.fromMap(
              (map['sbom'] as Map).cast<String, dynamic>(),
            ),
      sbomReference: map['sbomReference'] == null
          ? null
          : SBOMReferenceOccurrenceContaineranalysisV1beta1.fromMap(
              (map['sbomReference'] as Map).cast<String, dynamic>(),
            ),
      spdxFile: map['spdxFile'] == null
          ? null
          : FileOccurrenceContaineranalysisV1beta1.fromMap(
              (map['spdxFile'] as Map).cast<String, dynamic>(),
            ),
      spdxPackage: map['spdxPackage'] == null
          ? null
          : PackageInfoOccurrenceContaineranalysisV1beta1.fromMap(
              (map['spdxPackage'] as Map).cast<String, dynamic>(),
            ),
      spdxRelationship: map['spdxRelationship'] == null
          ? null
          : RelationshipOccurrenceContaineranalysisV1beta1.fromMap(
              (map['spdxRelationship'] as Map).cast<String, dynamic>(),
            ),
      vulnerability: map['vulnerability'] == null
          ? null
          : GrafeasV1beta1VulnerabilityDetails.fromMap(
              (map['vulnerability'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
