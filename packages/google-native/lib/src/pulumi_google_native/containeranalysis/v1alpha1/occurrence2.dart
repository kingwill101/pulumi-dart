import 'package:pulumi/pulumi.dart';
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
import 'occurrence_args2.dart';
import 'package_info_occurrence_response.dart';
import 'relationship_occurrence_response.dart';
import 'resource_response.dart';
import 'sbomreference_occurrence_response2.dart';
import 'upgrade_occurrence_response2.dart';
import 'vulnerability_details_response.dart';

/// Creates a new `Occurrence`. Use this method to create `Occurrences` for a resource.
class Occurrence2 extends CustomResource {
  /// Describes an attestation of an artifact.
  late final Output<AttestationResponse> attestation;

  /// Build details for a verifiable build.
  late final Output<BuildDetailsResponse> buildDetails;

  /// Describes whether or not a resource passes compliance checks.
  late final Output<ComplianceOccurrenceResponse2> compliance;

  /// The time this `Occurrence` was created.
  late final Output<String> createTime;

  /// Describes the deployment of an artifact on a runtime.
  late final Output<DeploymentResponse3> deployment;

  /// Describes how this resource derives from the basis in the associated note.
  late final Output<DerivedResponse> derivedImage;

  /// Describes the initial scan status for this resource.
  late final Output<DiscoveredResponse> discovered;

  /// This represents a DSSE attestation occurrence
  late final Output<DSSEAttestationOccurrenceResponse2> dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  late final Output<EnvelopeResponse2> envelope;

  /// Describes the installation of a package on the linked resource.
  late final Output<InstallationResponse> installation;

  /// This explicitly denotes which of the `Occurrence` details are specified. This field can be used as a filter in list requests.
  late final Output<String> kind;

  /// The name of the project. Should be of the form "projects/{project_id}". @Deprecated
  late final Output<String> name;

  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  late final Output<String> noteName;
  late final Output<String> project;

  /// A description of actions that can be taken to remedy the `Note`
  late final Output<String> remediation;

  /// The resource for which the `Occurrence` applies.
  late final Output<ResourceResponse> resource;

  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  late final Output<String> resourceUrl;

  /// Describes a specific software bill of materials document.
  late final Output<DocumentOccurrenceResponse> sbom;

  /// This represents an SBOM reference occurrence
  late final Output<SBOMReferenceOccurrenceResponse2> sbomReference;

  /// Describes a specific SPDX File.
  late final Output<FileOccurrenceResponse> spdxFile;

  /// Describes a specific SPDX Package.
  late final Output<PackageInfoOccurrenceResponse> spdxPackage;

  /// Describes a specific relationship between SPDX elements.
  late final Output<RelationshipOccurrenceResponse> spdxRelationship;

  /// The time this `Occurrence` was last updated.
  late final Output<String> updateTime;

  /// Describes an upgrade.
  late final Output<UpgradeOccurrenceResponse2> upgrade;

  /// Details of a security vulnerability note.
  late final Output<VulnerabilityDetailsResponse> vulnerabilityDetails;

  Occurrence2(
    String name, {
    OccurrenceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1alpha1:Occurrence',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestation = Output.createUnknown<AttestationResponse>();
    this.buildDetails = Output.createUnknown<BuildDetailsResponse>();
    this.compliance = Output.createUnknown<ComplianceOccurrenceResponse2>();
    this.createTime = Output.createUnknown<String>();
    this.deployment = Output.createUnknown<DeploymentResponse3>();
    this.derivedImage = Output.createUnknown<DerivedResponse>();
    this.discovered = Output.createUnknown<DiscoveredResponse>();
    this.dsseAttestation =
        Output.createUnknown<DSSEAttestationOccurrenceResponse2>();
    this.envelope = Output.createUnknown<EnvelopeResponse2>();
    this.installation = Output.createUnknown<InstallationResponse>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.noteName = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.remediation = Output.createUnknown<String>();
    this.resource = Output.createUnknown<ResourceResponse>();
    this.resourceUrl = Output.createUnknown<String>();
    this.sbom = Output.createUnknown<DocumentOccurrenceResponse>();
    this.sbomReference =
        Output.createUnknown<SBOMReferenceOccurrenceResponse2>();
    this.spdxFile = Output.createUnknown<FileOccurrenceResponse>();
    this.spdxPackage = Output.createUnknown<PackageInfoOccurrenceResponse>();
    this.spdxRelationship =
        Output.createUnknown<RelationshipOccurrenceResponse>();
    this.updateTime = Output.createUnknown<String>();
    this.upgrade = Output.createUnknown<UpgradeOccurrenceResponse2>();
    this.vulnerabilityDetails =
        Output.createUnknown<VulnerabilityDetailsResponse>();
  }
}
