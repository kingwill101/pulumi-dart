import 'package:pulumi/pulumi.dart';
import 'details_response.dart';
import 'document_occurrence_response2.dart';
import 'envelope_response3.dart';
import 'file_occurrence_response2.dart';
import 'grafeas_v1beta1_build_details_response.dart';
import 'grafeas_v1beta1_deployment_details_response.dart';
import 'grafeas_v1beta1_discovery_details_response.dart';
import 'grafeas_v1beta1_image_details_response.dart';
import 'grafeas_v1beta1_intoto_details_response.dart';
import 'grafeas_v1beta1_package_details_response.dart';
import 'grafeas_v1beta1_vulnerability_details_response.dart';
import 'occurrence_args3.dart';
import 'package_info_occurrence_response2.dart';
import 'relationship_occurrence_response2.dart';
import 'resource_response2.dart';
import 'sbomreference_occurrence_response3.dart';

/// Creates a new occurrence.
/// Auto-naming is currently not supported for this resource.
class Occurrence3 extends CustomResource {
  /// Describes an attestation of an artifact.
  late final Output<DetailsResponse> attestation;

  /// Describes a verifiable build.
  late final Output<GrafeasV1beta1BuildDetailsResponse> build;

  /// The time this occurrence was created.
  late final Output<String> createTime;

  /// Describes the deployment of an artifact on a runtime.
  late final Output<GrafeasV1beta1DeploymentDetailsResponse> deployment;

  /// Describes how this resource derives from the basis in the associated note.
  late final Output<GrafeasV1beta1ImageDetailsResponse> derivedImage;

  /// Describes when a resource was discovered.
  late final Output<GrafeasV1beta1DiscoveryDetailsResponse> discovered;

  /// https://github.com/secure-systems-lab/dsse
  late final Output<EnvelopeResponse3> envelope;

  /// Describes the installation of a package on the linked resource.
  late final Output<GrafeasV1beta1PackageDetailsResponse> installation;

  /// Describes a specific in-toto link.
  late final Output<GrafeasV1beta1IntotoDetailsResponse> intoto;

  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  late final Output<String> kind;

  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  late final Output<String> name;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  late final Output<String> noteName;
  late final Output<String> project;

  /// A description of actions that can be taken to remedy the note.
  late final Output<String> remediation;

  /// Immutable. The resource for which the occurrence applies.
  late final Output<ResourceResponse2> resource;

  /// Describes a specific software bill of materials document.
  late final Output<DocumentOccurrenceResponse2> sbom;

  /// Describes a specific SBOM reference occurrences.
  late final Output<SBOMReferenceOccurrenceResponse3> sbomReference;

  /// Describes a specific SPDX File.
  late final Output<FileOccurrenceResponse2> spdxFile;

  /// Describes a specific SPDX Package.
  late final Output<PackageInfoOccurrenceResponse2> spdxPackage;

  /// Describes a specific SPDX Relationship.
  late final Output<RelationshipOccurrenceResponse2> spdxRelationship;

  /// The time this occurrence was last updated.
  late final Output<String> updateTime;

  /// Describes a security vulnerability.
  late final Output<GrafeasV1beta1VulnerabilityDetailsResponse> vulnerability;

  Occurrence3(
    String name, {
    OccurrenceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1beta1:Occurrence',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestation = Output.createUnknown<DetailsResponse>();
    this.build = Output.createUnknown<GrafeasV1beta1BuildDetailsResponse>();
    this.createTime = Output.createUnknown<String>();
    this.deployment =
        Output.createUnknown<GrafeasV1beta1DeploymentDetailsResponse>();
    this.derivedImage =
        Output.createUnknown<GrafeasV1beta1ImageDetailsResponse>();
    this.discovered =
        Output.createUnknown<GrafeasV1beta1DiscoveryDetailsResponse>();
    this.envelope = Output.createUnknown<EnvelopeResponse3>();
    this.installation =
        Output.createUnknown<GrafeasV1beta1PackageDetailsResponse>();
    this.intoto = Output.createUnknown<GrafeasV1beta1IntotoDetailsResponse>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.noteName = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.remediation = Output.createUnknown<String>();
    this.resource = Output.createUnknown<ResourceResponse2>();
    this.sbom = Output.createUnknown<DocumentOccurrenceResponse2>();
    this.sbomReference =
        Output.createUnknown<SBOMReferenceOccurrenceResponse3>();
    this.spdxFile = Output.createUnknown<FileOccurrenceResponse2>();
    this.spdxPackage = Output.createUnknown<PackageInfoOccurrenceResponse2>();
    this.spdxRelationship =
        Output.createUnknown<RelationshipOccurrenceResponse2>();
    this.updateTime = Output.createUnknown<String>();
    this.vulnerability =
        Output.createUnknown<GrafeasV1beta1VulnerabilityDetailsResponse>();
  }
}
