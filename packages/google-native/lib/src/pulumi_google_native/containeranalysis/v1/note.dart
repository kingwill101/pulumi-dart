import 'package:pulumi/pulumi.dart' hide Config;
import 'attestation_note_response.dart';
import 'build_note_response.dart';
import 'compliance_note_response.dart';
import 'deployment_note_response.dart';
import 'discovery_note_response.dart';
import 'dsseattestation_note_response.dart';
import 'image_note_response.dart';
import 'note_args.dart';
import 'package_note_response.dart';
import 'related_url_response.dart';
import 'sbomreference_note_response.dart';
import 'upgrade_note_response.dart';
import 'vulnerability_assessment_note_response.dart';
import 'vulnerability_note_response.dart';

/// Creates a new note.
/// Auto-naming is currently not supported for this resource.
class Note extends CustomResource {
  /// A note describing an attestation role.
  late final Output<AttestationNoteResponse> attestation;

  /// A note describing build provenance for a verifiable build.
  late final Output<BuildNoteResponse> build;

  /// A note describing a compliance check.
  late final Output<ComplianceNoteResponse> compliance;

  /// The time this note was created. This field can be used as a filter in list requests.
  late final Output<String> createTime;

  /// A note describing something that can be deployed.
  late final Output<DeploymentNoteResponse> deployment;

  /// A note describing the initial analysis of a resource.
  late final Output<DiscoveryNoteResponse> discovery;

  /// A note describing a dsse attestation note.
  late final Output<DSSEAttestationNoteResponse> dsseAttestation;

  /// Time of expiration for this note. Empty if note does not expire.
  late final Output<String> expirationTime;

  /// A note describing a base image.
  late final Output<ImageNoteResponse> image;

  /// The type of analysis. This field can be used as a filter in list requests.
  late final Output<String> kind;

  /// A detailed description of this note.
  late final Output<String> longDescription;

  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  late final Output<String> name;

  /// Required. The ID to use for this note.
  late final Output<String> noteId;

  /// A note describing a package hosted by various package managers.
  late final Output<PackageNoteResponse> package;
  late final Output<String> project;

  /// Other notes related to this note.
  late final Output<List<String>> relatedNoteNames;

  /// URLs associated with this note.
  late final Output<List<RelatedUrlResponse>> relatedUrl;

  /// A note describing an SBOM reference.
  late final Output<SBOMReferenceNoteResponse> sbomReference;

  /// A one sentence description of this note.
  late final Output<String> shortDescription;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  late final Output<String> updateTime;

  /// A note describing available package upgrades.
  late final Output<UpgradeNoteResponse> upgrade;

  /// A note describing a package vulnerability.
  late final Output<VulnerabilityNoteResponse> vulnerability;

  /// A note describing a vulnerability assessment.
  late final Output<VulnerabilityAssessmentNoteResponse>
      vulnerabilityAssessment;

  Note(
    String name, {
    NoteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1:Note',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestation = registerOutput<AttestationNoteResponse>('attestation');
    this.build = registerOutput<BuildNoteResponse>('build');
    this.compliance = registerOutput<ComplianceNoteResponse>('compliance');
    this.createTime = registerOutput<String>('createTime');
    this.deployment = registerOutput<DeploymentNoteResponse>('deployment');
    this.discovery = registerOutput<DiscoveryNoteResponse>('discovery');
    this.dsseAttestation =
        registerOutput<DSSEAttestationNoteResponse>('dsseAttestation');
    this.expirationTime = registerOutput<String>('expirationTime');
    this.image = registerOutput<ImageNoteResponse>('image');
    this.kind = registerOutput<String>('kind');
    this.longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    this.noteId = registerOutput<String>('noteId');
    this.package = registerOutput<PackageNoteResponse>('package');
    this.project = registerOutput<String>('project');
    this.relatedNoteNames = registerOutput<List<String>>('relatedNoteNames');
    this.relatedUrl = registerOutput<List<RelatedUrlResponse>>('relatedUrl');
    this.sbomReference =
        registerOutput<SBOMReferenceNoteResponse>('sbomReference');
    this.shortDescription = registerOutput<String>('shortDescription');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgrade = registerOutput<UpgradeNoteResponse>('upgrade');
    this.vulnerability =
        registerOutput<VulnerabilityNoteResponse>('vulnerability');
    this.vulnerabilityAssessment =
        registerOutput<VulnerabilityAssessmentNoteResponse>(
            'vulnerabilityAssessment');
  }
}
