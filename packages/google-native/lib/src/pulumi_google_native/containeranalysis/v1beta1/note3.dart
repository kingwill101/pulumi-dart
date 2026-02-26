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
    this.attestationAuthority = Output.createUnknown<AuthorityResponse>();
    this.baseImage = Output.createUnknown<BasisResponse2>();
    this.build = Output.createUnknown<BuildResponse3>();
    this.createTime = Output.createUnknown<String>();
    this.deployable = Output.createUnknown<DeployableResponse2>();
    this.discovery = Output.createUnknown<DiscoveryResponse2>();
    this.expirationTime = Output.createUnknown<String>();
    this.intoto = Output.createUnknown<InTotoResponse>();
    this.kind = Output.createUnknown<String>();
    this.longDescription = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.noteId = Output.createUnknown<String>();
    this.package = Output.createUnknown<PackageResponse2>();
    this.project = Output.createUnknown<String>();
    this.relatedNoteNames = Output.createUnknown<List<String>>();
    this.relatedUrl = Output.createUnknown<List<RelatedUrlResponse3>>();
    this.sbom = Output.createUnknown<DocumentNoteResponse2>();
    this.sbomReference = Output.createUnknown<SBOMReferenceNoteResponse3>();
    this.shortDescription = Output.createUnknown<String>();
    this.spdxFile = Output.createUnknown<FileNoteResponse2>();
    this.spdxPackage = Output.createUnknown<PackageInfoNoteResponse2>();
    this.spdxRelationship = Output.createUnknown<RelationshipNoteResponse2>();
    this.updateTime = Output.createUnknown<String>();
    this.vulnerability = Output.createUnknown<VulnerabilityResponse>();
    this.vulnerabilityAssessment =
        Output.createUnknown<VulnerabilityAssessmentNoteResponse3>();
  }
}
