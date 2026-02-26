import 'package:pulumi/pulumi.dart';
import 'attestation_occurrence_response.dart';
import 'build_occurrence_response.dart';
import 'compliance_occurrence_response.dart';
import 'deployment_occurrence_response.dart';
import 'discovery_occurrence_response.dart';
import 'dsseattestation_occurrence_response.dart';
import 'envelope_response.dart';
import 'image_occurrence_response.dart';
import 'occurrence_args.dart';
import 'package_occurrence_response.dart';
import 'sbomreference_occurrence_response.dart';
import 'upgrade_occurrence_response.dart';
import 'vulnerability_occurrence_response.dart';

/// Creates a new occurrence.
/// Auto-naming is currently not supported for this resource.
class Occurrence extends CustomResource {
  /// Describes an attestation of an artifact.
  late final Output<AttestationOccurrenceResponse> attestation;

  /// Describes a verifiable build.
  late final Output<BuildOccurrenceResponse> build;

  /// Describes a compliance violation on a linked resource.
  late final Output<ComplianceOccurrenceResponse> compliance;

  /// The time this occurrence was created.
  late final Output<String> createTime;

  /// Describes the deployment of an artifact on a runtime.
  late final Output<DeploymentOccurrenceResponse> deployment;

  /// Describes when a resource was discovered.
  late final Output<DiscoveryOccurrenceResponse> discovery;

  /// Describes an attestation of an artifact using dsse.
  late final Output<DSSEAttestationOccurrenceResponse> dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  late final Output<EnvelopeResponse> envelope;

  /// Describes how this resource derives from the basis in the associated note.
  late final Output<ImageOccurrenceResponse> image;

  /// This explicitly denotes which of the occurrence details are specified. This field can be used as a filter in list requests.
  late final Output<String> kind;

  /// The name of the occurrence in the form of `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]`.
  late final Output<String> name;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  late final Output<String> noteName;

  /// Describes the installation of a package on the linked resource.
  late final Output<PackageOccurrenceResponse> package;
  late final Output<String> project;

  /// A description of actions that can be taken to remedy the note.
  late final Output<String> remediation;

  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  late final Output<String> resourceUri;

  /// Describes a specific SBOM reference occurrences.
  late final Output<SBOMReferenceOccurrenceResponse> sbomReference;

  /// The time this occurrence was last updated.
  late final Output<String> updateTime;

  /// Describes an available package upgrade on the linked resource.
  late final Output<UpgradeOccurrenceResponse> upgrade;

  /// Describes a security vulnerability.
  late final Output<VulnerabilityOccurrenceResponse> vulnerability;

  Occurrence(
    String name, {
    OccurrenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1:Occurrence',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestation =
        registerOutput<AttestationOccurrenceResponse>('attestation');
    this.build = registerOutput<BuildOccurrenceResponse>('build');
    this.compliance =
        registerOutput<ComplianceOccurrenceResponse>('compliance');
    this.createTime = registerOutput<String>('createTime');
    this.deployment =
        registerOutput<DeploymentOccurrenceResponse>('deployment');
    this.discovery = registerOutput<DiscoveryOccurrenceResponse>('discovery');
    this.dsseAttestation =
        registerOutput<DSSEAttestationOccurrenceResponse>('dsseAttestation');
    this.envelope = registerOutput<EnvelopeResponse>('envelope');
    this.image = registerOutput<ImageOccurrenceResponse>('image');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.noteName = registerOutput<String>('noteName');
    this.package = registerOutput<PackageOccurrenceResponse>('package');
    this.project = registerOutput<String>('project');
    this.remediation = registerOutput<String>('remediation');
    this.resourceUri = registerOutput<String>('resourceUri');
    this.sbomReference =
        registerOutput<SBOMReferenceOccurrenceResponse>('sbomReference');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgrade = registerOutput<UpgradeOccurrenceResponse>('upgrade');
    this.vulnerability =
        registerOutput<VulnerabilityOccurrenceResponse>('vulnerability');
  }
}
