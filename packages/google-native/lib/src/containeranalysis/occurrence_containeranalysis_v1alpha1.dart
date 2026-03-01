import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_response.dart';
import 'build_details_response.dart';
import 'compliance_occurrence_response_containeranalysis_v1alpha1.dart';
import 'deployment_response.dart';
import 'derived_response.dart';
import 'discovered_response.dart';
import 'document_occurrence_response.dart';
import 'dsseattestation_occurrence_response_containeranalysis_v1alpha1.dart';
import 'envelope_response_containeranalysis_v1alpha1.dart';
import 'file_occurrence_response.dart';
import 'installation_response.dart';
import 'occurrence_containeranalysis_v1alpha1_args.dart';
import 'package_info_occurrence_response.dart';
import 'relationship_occurrence_response.dart';
import 'resource_response.dart';
import 'sbomreference_occurrence_response_containeranalysis_v1alpha1.dart';
import 'upgrade_occurrence_response_containeranalysis_v1alpha1.dart';
import 'vulnerability_details_response.dart';

/// Creates a new `Occurrence`. Use this method to create `Occurrences` for a resource.
class OccurrenceContaineranalysisV1alpha1 extends pulumi.CustomResource {
  /// Describes an attestation of an artifact.
  late final pulumi.Output<AttestationResponse> attestation;

  /// Build details for a verifiable build.
  late final pulumi.Output<BuildDetailsResponse> buildDetails;

  /// Describes whether or not a resource passes compliance checks.
  late final pulumi.Output<
    ComplianceOccurrenceResponseContaineranalysisV1alpha1
  >
  compliance;

  /// The time this `Occurrence` was created.
  late final pulumi.Output<String> createTime;

  /// Describes the deployment of an artifact on a runtime.
  late final pulumi.Output<DeploymentResponse> deployment;

  /// Describes how this resource derives from the basis in the associated note.
  late final pulumi.Output<DerivedResponse> derivedImage;

  /// Describes the initial scan status for this resource.
  late final pulumi.Output<DiscoveredResponse> discovered;

  /// This represents a DSSE attestation occurrence
  late final pulumi.Output<
    DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1
  >
  dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  late final pulumi.Output<EnvelopeResponseContaineranalysisV1alpha1> envelope;

  /// Describes the installation of a package on the linked resource.
  late final pulumi.Output<InstallationResponse> installation;

  /// This explicitly denotes which of the `Occurrence` details are specified. This field can be used as a filter in list requests.
  late final pulumi.Output<String> kind;

  /// The name of the project. Should be of the form "projects/{project_id}". @Deprecated
  late final pulumi.Output<String> name;

  /// An analysis note associated with this image, in the form "providers/{provider_id}/notes/{NOTE_ID}" This field can be used as a filter in list requests.
  late final pulumi.Output<String> noteName;
  late final pulumi.Output<String> project;

  /// A description of actions that can be taken to remedy the `Note`
  late final pulumi.Output<String> remediation;

  /// The resource for which the `Occurrence` applies.
  late final pulumi.Output<ResourceResponse> resource;

  /// The unique URL of the image or the container for which the `Occurrence` applies. For example, https://gcr.io/project/image@sha256:foo This field can be used as a filter in list requests.
  late final pulumi.Output<String> resourceUrl;

  /// Describes a specific software bill of materials document.
  late final pulumi.Output<DocumentOccurrenceResponse> sbom;

  /// This represents an SBOM reference occurrence
  late final pulumi.Output<
    SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1
  >
  sbomReference;

  /// Describes a specific SPDX File.
  late final pulumi.Output<FileOccurrenceResponse> spdxFile;

  /// Describes a specific SPDX Package.
  late final pulumi.Output<PackageInfoOccurrenceResponse> spdxPackage;

  /// Describes a specific relationship between SPDX elements.
  late final pulumi.Output<RelationshipOccurrenceResponse> spdxRelationship;

  /// The time this `Occurrence` was last updated.
  late final pulumi.Output<String> updateTime;

  /// Describes an upgrade.
  late final pulumi.Output<UpgradeOccurrenceResponseContaineranalysisV1alpha1>
  upgrade;

  /// Details of a security vulnerability note.
  late final pulumi.Output<VulnerabilityDetailsResponse> vulnerabilityDetails;

  /// Creates a new [OccurrenceContaineranalysisV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OccurrenceContaineranalysisV1alpha1]. {@macro pulumi_containeranalysis_v1alpha1_occurrence_containeranalysis_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OccurrenceContaineranalysisV1alpha1(
    String name, {
    OccurrenceContaineranalysisV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:containeranalysis/v1alpha1:Occurrence',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.attestation = registerOutput<AttestationResponse>('attestation');
    this.buildDetails = registerOutput<BuildDetailsResponse>('buildDetails');
    this.compliance =
        registerOutput<ComplianceOccurrenceResponseContaineranalysisV1alpha1>(
          'compliance',
        );
    this.createTime = registerOutput<String>('createTime');
    this.deployment = registerOutput<DeploymentResponse>('deployment');
    this.derivedImage = registerOutput<DerivedResponse>('derivedImage');
    this.discovered = registerOutput<DiscoveredResponse>('discovered');
    this.dsseAttestation =
        registerOutput<
          DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1
        >('dsseAttestation');
    this.envelope = registerOutput<EnvelopeResponseContaineranalysisV1alpha1>(
      'envelope',
    );
    this.installation = registerOutput<InstallationResponse>('installation');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.noteName = registerOutput<String>('noteName');
    this.project = registerOutput<String>('project');
    this.remediation = registerOutput<String>('remediation');
    this.resource = registerOutput<ResourceResponse>('resource');
    this.resourceUrl = registerOutput<String>('resourceUrl');
    this.sbom = registerOutput<DocumentOccurrenceResponse>('sbom');
    this.sbomReference =
        registerOutput<
          SBOMReferenceOccurrenceResponseContaineranalysisV1alpha1
        >('sbomReference');
    this.spdxFile = registerOutput<FileOccurrenceResponse>('spdxFile');
    this.spdxPackage = registerOutput<PackageInfoOccurrenceResponse>(
      'spdxPackage',
    );
    this.spdxRelationship = registerOutput<RelationshipOccurrenceResponse>(
      'spdxRelationship',
    );
    this.updateTime = registerOutput<String>('updateTime');
    this.upgrade =
        registerOutput<UpgradeOccurrenceResponseContaineranalysisV1alpha1>(
          'upgrade',
        );
    this.vulnerabilityDetails = registerOutput<VulnerabilityDetailsResponse>(
      'vulnerabilityDetails',
    );
  }
}
