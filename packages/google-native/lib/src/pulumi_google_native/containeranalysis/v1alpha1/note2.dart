import 'package:pulumi/pulumi.dart';
import 'attestation_authority_response.dart';
import 'basis_response.dart';
import 'build_type_response.dart';
import 'compliance_note_response2.dart';
import 'deployable_response.dart';
import 'discovery_response.dart';
import 'document_note_response.dart';
import 'dsseattestation_note_response2.dart';
import 'file_note_response.dart';
import 'note_args2.dart';
import 'package_info_note_response.dart';
import 'package_response.dart';
import 'related_url_response2.dart';
import 'relationship_note_response.dart';
import 'sbomreference_note_response2.dart';
import 'upgrade_note_response2.dart';
import 'vulnerability_assessment_note_response2.dart';
import 'vulnerability_type_response.dart';

/// Creates a new `Note`.
class Note2 extends CustomResource {
  /// A note describing an attestation role.
  late final Output<AttestationAuthorityResponse> attestationAuthority;

  /// A note describing a base image.
  late final Output<BasisResponse> baseImage;

  /// Build provenance type for a verifiable build.
  late final Output<BuildTypeResponse> buildType;

  /// A note describing a compliance check.
  late final Output<ComplianceNoteResponse2> compliance;

  /// The time this note was created. This field can be used as a filter in list requests.
  late final Output<String> createTime;

  /// A note describing something that can be deployed.
  late final Output<DeployableResponse> deployable;

  /// A note describing a provider/analysis type.
  late final Output<DiscoveryResponse> discovery;

  /// A note describing a dsse attestation note.
  late final Output<DSSEAttestationNoteResponse2> dsseAttestation;

  /// Time of expiration for this note, null if note does not expire.
  late final Output<String> expirationTime;

  /// This explicitly denotes which kind of note is specified. This field can be used as a filter in list requests.
  late final Output<String> kind;

  /// A detailed description of this `Note`.
  late final Output<String> longDescription;

  /// The name of the project. Should be of the form "providers/{provider_id}". @Deprecated
  late final Output<String> name;

  /// The ID to use for this note.
  late final Output<String?> noteId;

  /// A note describing a package hosted by various package managers.
  late final Output<PackageResponse> package;
  late final Output<String> project;

  /// URLs associated with this note
  late final Output<List<RelatedUrlResponse2>> relatedUrl;

  /// A note describing a software bill of materials.
  late final Output<DocumentNoteResponse> sbom;

  /// A note describing a reference to an SBOM.
  late final Output<SBOMReferenceNoteResponse2> sbomReference;

  /// A one sentence description of this `Note`.
  late final Output<String> shortDescription;

  /// A note describing an SPDX File.
  late final Output<FileNoteResponse> spdxFile;

  /// A note describing an SPDX Package.
  late final Output<PackageInfoNoteResponse> spdxPackage;

  /// A note describing a relationship between SPDX elements.
  late final Output<RelationshipNoteResponse> spdxRelationship;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  late final Output<String> updateTime;

  /// A note describing an upgrade.
  late final Output<UpgradeNoteResponse2> upgrade;

  /// A note describing a vulnerability assessment.
  late final Output<VulnerabilityAssessmentNoteResponse2>
      vulnerabilityAssessment;

  /// A package vulnerability type of note.
  late final Output<VulnerabilityTypeResponse> vulnerabilityType;

  Note2(
    String name, {
    NoteArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:containeranalysis/v1alpha1:Note',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestationAuthority =
        Output.createUnknown<AttestationAuthorityResponse>();
    this.baseImage = Output.createUnknown<BasisResponse>();
    this.buildType = Output.createUnknown<BuildTypeResponse>();
    this.compliance = Output.createUnknown<ComplianceNoteResponse2>();
    this.createTime = Output.createUnknown<String>();
    this.deployable = Output.createUnknown<DeployableResponse>();
    this.discovery = Output.createUnknown<DiscoveryResponse>();
    this.dsseAttestation = Output.createUnknown<DSSEAttestationNoteResponse2>();
    this.expirationTime = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.longDescription = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.noteId = Output.createUnknown<String?>();
    this.package = Output.createUnknown<PackageResponse>();
    this.project = Output.createUnknown<String>();
    this.relatedUrl = Output.createUnknown<List<RelatedUrlResponse2>>();
    this.sbom = Output.createUnknown<DocumentNoteResponse>();
    this.sbomReference = Output.createUnknown<SBOMReferenceNoteResponse2>();
    this.shortDescription = Output.createUnknown<String>();
    this.spdxFile = Output.createUnknown<FileNoteResponse>();
    this.spdxPackage = Output.createUnknown<PackageInfoNoteResponse>();
    this.spdxRelationship = Output.createUnknown<RelationshipNoteResponse>();
    this.updateTime = Output.createUnknown<String>();
    this.upgrade = Output.createUnknown<UpgradeNoteResponse2>();
    this.vulnerabilityAssessment =
        Output.createUnknown<VulnerabilityAssessmentNoteResponse2>();
    this.vulnerabilityType = Output.createUnknown<VulnerabilityTypeResponse>();
  }
}
