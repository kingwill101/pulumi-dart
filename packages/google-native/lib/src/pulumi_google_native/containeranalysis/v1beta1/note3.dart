import 'package:pulumi/pulumi.dart';
import 'authority_response.dart';
import 'basis_response2.dart';
import 'build_response3.dart';
import 'deployable_response2.dart';
import 'discovery_response2.dart';
import 'document_note_response2.dart';
import 'file_note_response2.dart';
import 'in_toto_response.dart';
import 'note_args3.dart';
import 'package_info_note_response2.dart';
import 'package_response2.dart';
import 'related_url_response3.dart';
import 'relationship_note_response2.dart';
import 'sbomreference_note_response3.dart';
import 'vulnerability_assessment_note_response3.dart';
import 'vulnerability_response.dart';

/// Creates a new note.
/// Auto-naming is currently not supported for this resource.
class Note3 extends CustomResource {
  /// A note describing an attestation role.
  late final Output<AuthorityResponse> attestationAuthority;

  /// A note describing a base image.
  late final Output<BasisResponse2> baseImage;

  /// A note describing build provenance for a verifiable build.
  late final Output<BuildResponse3> build;

  /// The time this note was created. This field can be used as a filter in list requests.
  late final Output<String> createTime;

  /// A note describing something that can be deployed.
  late final Output<DeployableResponse2> deployable;

  /// A note describing the initial analysis of a resource.
  late final Output<DiscoveryResponse2> discovery;

  /// Time of expiration for this note. Empty if note does not expire.
  late final Output<String> expirationTime;

  /// A note describing an in-toto link.
  late final Output<InTotoResponse> intoto;

  /// The type of analysis. This field can be used as a filter in list requests.
  late final Output<String> kind;

  /// A detailed description of this note.
  late final Output<String> longDescription;

  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  late final Output<String> name;

  /// Required. The ID to use for this note.
  late final Output<String> noteId;

  /// A note describing a package hosted by various package managers.
  late final Output<PackageResponse2> package;
  late final Output<String> project;

  /// Other notes related to this note.
  late final Output<List<String>> relatedNoteNames;

  /// URLs associated with this note.
  late final Output<List<RelatedUrlResponse3>> relatedUrl;

  /// A note describing a software bill of materials.
  late final Output<DocumentNoteResponse2> sbom;

  /// A note describing an SBOM reference.
  late final Output<SBOMReferenceNoteResponse3> sbomReference;

  /// A one sentence description of this note.
  late final Output<String> shortDescription;

  /// A note describing an SPDX File.
  late final Output<FileNoteResponse2> spdxFile;

  /// A note describing an SPDX Package.
  late final Output<PackageInfoNoteResponse2> spdxPackage;

  /// A note describing an SPDX File.
  late final Output<RelationshipNoteResponse2> spdxRelationship;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  late final Output<String> updateTime;

  /// A note describing a package vulnerability.
  late final Output<VulnerabilityResponse> vulnerability;

  /// A note describing a vulnerability assessment.
  late final Output<VulnerabilityAssessmentNoteResponse3>
      vulnerabilityAssessment;

  Note3(
    String name, {
    NoteArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1beta1:Note',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestationAuthority =
        registerOutput<AuthorityResponse>('attestationAuthority');
    this.baseImage = registerOutput<BasisResponse2>('baseImage');
    this.build = registerOutput<BuildResponse3>('build');
    this.createTime = registerOutput<String>('createTime');
    this.deployable = registerOutput<DeployableResponse2>('deployable');
    this.discovery = registerOutput<DiscoveryResponse2>('discovery');
    this.expirationTime = registerOutput<String>('expirationTime');
    this.intoto = registerOutput<InTotoResponse>('intoto');
    this.kind = registerOutput<String>('kind');
    this.longDescription = registerOutput<String>('longDescription');
    this.name = registerOutput<String>('name');
    this.noteId = registerOutput<String>('noteId');
    this.package = registerOutput<PackageResponse2>('package');
    this.project = registerOutput<String>('project');
    this.relatedNoteNames = registerOutput<List<String>>('relatedNoteNames');
    this.relatedUrl = registerOutput<List<RelatedUrlResponse3>>('relatedUrl');
    this.sbom = registerOutput<DocumentNoteResponse2>('sbom');
    this.sbomReference =
        registerOutput<SBOMReferenceNoteResponse3>('sbomReference');
    this.shortDescription = registerOutput<String>('shortDescription');
    this.spdxFile = registerOutput<FileNoteResponse2>('spdxFile');
    this.spdxPackage = registerOutput<PackageInfoNoteResponse2>('spdxPackage');
    this.spdxRelationship =
        registerOutput<RelationshipNoteResponse2>('spdxRelationship');
    this.updateTime = registerOutput<String>('updateTime');
    this.vulnerability = registerOutput<VulnerabilityResponse>('vulnerability');
    this.vulnerabilityAssessment =
        registerOutput<VulnerabilityAssessmentNoteResponse3>(
            'vulnerabilityAssessment');
  }
}
