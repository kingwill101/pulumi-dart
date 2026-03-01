import 'package:pulumi/pulumi.dart' as pulumi;
import 'details_response.dart';
import 'document_occurrence_response_containeranalysis_v1beta1.dart';
import 'envelope_response_containeranalysis_v1beta1.dart';
import 'file_occurrence_response_containeranalysis_v1beta1.dart';
import 'grafeas_v1beta1_build_details_response.dart';
import 'grafeas_v1beta1_deployment_details_response.dart';
import 'grafeas_v1beta1_discovery_details_response.dart';
import 'grafeas_v1beta1_image_details_response.dart';
import 'grafeas_v1beta1_intoto_details_response.dart';
import 'grafeas_v1beta1_package_details_response.dart';
import 'grafeas_v1beta1_vulnerability_details_response.dart';
import 'occurrence_containeranalysis_v1beta1_args.dart';
import 'package_info_occurrence_response_containeranalysis_v1beta1.dart';
import 'relationship_occurrence_response_containeranalysis_v1beta1.dart';
import 'resource_response_containeranalysis_v1beta1.dart';
import 'sbomreference_occurrence_response_containeranalysis_v1beta1.dart';

/// Creates a new occurrence.
/// Auto-naming is currently not supported for this resource.
class OccurrenceContaineranalysisV1beta1 extends pulumi.CustomResource {
  /// Describes an attestation of an artifact.
  late final pulumi.Output<DetailsResponse> attestation;

  /// Describes a verifiable build.
  late final pulumi.Output<GrafeasV1beta1BuildDetailsResponse> build;

  /// The time this occurrence was created.
  late final pulumi.Output<String> createTime;

  /// Describes the deployment of an artifact on a runtime.
  late final pulumi.Output<GrafeasV1beta1DeploymentDetailsResponse> deployment;

  /// Describes how this resource derives from the basis in the associated note.
  late final pulumi.Output<GrafeasV1beta1ImageDetailsResponse> derivedImage;

  /// Describes when a resource was discovered.
  late final pulumi.Output<GrafeasV1beta1DiscoveryDetailsResponse> discovered;

  /// https://github.com/secure-systems-lab/dsse
  late final pulumi.Output<EnvelopeResponseContaineranalysisV1beta1> envelope;

  /// Describes the installation of a package on the linked resource.
  late final pulumi.Output<GrafeasV1beta1PackageDetailsResponse> installation;

  /// Describes a specific in-toto link.
  late final pulumi.Output<GrafeasV1beta1IntotoDetailsResponse> intoto;

  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  late final pulumi.Output<String> kind;

  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  late final pulumi.Output<String> name;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  late final pulumi.Output<String> noteName;
  late final pulumi.Output<String> project;

  /// A description of actions that can be taken to remedy the note.
  late final pulumi.Output<String> remediation;

  /// Immutable. The resource for which the occurrence applies.
  late final pulumi.Output<ResourceResponseContaineranalysisV1beta1> resource;

  /// Describes a specific software bill of materials document.
  late final pulumi.Output<DocumentOccurrenceResponseContaineranalysisV1beta1>
  sbom;

  /// Describes a specific SBOM reference occurrences.
  late final pulumi.Output<
    SBOMReferenceOccurrenceResponseContaineranalysisV1beta1
  >
  sbomReference;

  /// Describes a specific SPDX File.
  late final pulumi.Output<FileOccurrenceResponseContaineranalysisV1beta1>
  spdxFile;

  /// Describes a specific SPDX Package.
  late final pulumi.Output<
    PackageInfoOccurrenceResponseContaineranalysisV1beta1
  >
  spdxPackage;

  /// Describes a specific SPDX Relationship.
  late final pulumi.Output<
    RelationshipOccurrenceResponseContaineranalysisV1beta1
  >
  spdxRelationship;

  /// The time this occurrence was last updated.
  late final pulumi.Output<String> updateTime;

  /// Describes a security vulnerability.
  late final pulumi.Output<GrafeasV1beta1VulnerabilityDetailsResponse>
  vulnerability;

  /// Creates a new [OccurrenceContaineranalysisV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OccurrenceContaineranalysisV1beta1]. {@macro pulumi_containeranalysis_v1beta1_occurrence_containeranalysis_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OccurrenceContaineranalysisV1beta1(
    String name, {
    OccurrenceContaineranalysisV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:containeranalysis/v1beta1:Occurrence',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.attestation = registerOutput<DetailsResponse>('attestation');
    this.build = registerOutput<GrafeasV1beta1BuildDetailsResponse>('build');
    this.createTime = registerOutput<String>('createTime');
    this.deployment = registerOutput<GrafeasV1beta1DeploymentDetailsResponse>(
      'deployment',
    );
    this.derivedImage = registerOutput<GrafeasV1beta1ImageDetailsResponse>(
      'derivedImage',
    );
    this.discovered = registerOutput<GrafeasV1beta1DiscoveryDetailsResponse>(
      'discovered',
    );
    this.envelope = registerOutput<EnvelopeResponseContaineranalysisV1beta1>(
      'envelope',
    );
    this.installation = registerOutput<GrafeasV1beta1PackageDetailsResponse>(
      'installation',
    );
    this.intoto = registerOutput<GrafeasV1beta1IntotoDetailsResponse>('intoto');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.noteName = registerOutput<String>('noteName');
    this.project = registerOutput<String>('project');
    this.remediation = registerOutput<String>('remediation');
    this.resource = registerOutput<ResourceResponseContaineranalysisV1beta1>(
      'resource',
    );
    this.sbom =
        registerOutput<DocumentOccurrenceResponseContaineranalysisV1beta1>(
          'sbom',
        );
    this.sbomReference =
        registerOutput<SBOMReferenceOccurrenceResponseContaineranalysisV1beta1>(
          'sbomReference',
        );
    this.spdxFile =
        registerOutput<FileOccurrenceResponseContaineranalysisV1beta1>(
          'spdxFile',
        );
    this.spdxPackage =
        registerOutput<PackageInfoOccurrenceResponseContaineranalysisV1beta1>(
          'spdxPackage',
        );
    this.spdxRelationship =
        registerOutput<RelationshipOccurrenceResponseContaineranalysisV1beta1>(
          'spdxRelationship',
        );
    this.updateTime = registerOutput<String>('updateTime');
    this.vulnerability =
        registerOutput<GrafeasV1beta1VulnerabilityDetailsResponse>(
          'vulnerability',
        );
  }
}
