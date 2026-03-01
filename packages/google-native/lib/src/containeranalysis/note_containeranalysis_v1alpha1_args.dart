// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_authority.dart';
import 'basis.dart';
import 'build_type.dart';
import 'compliance_note_containeranalysis_v1alpha1.dart';
import 'deployable.dart';
import 'discovery.dart';
import 'document_note.dart';
import 'dsseattestation_note_containeranalysis_v1alpha1.dart';
import 'file_note.dart';
import 'package.dart';
import 'package_info_note.dart';
import 'related_url_containeranalysis_v1alpha1.dart';
import 'relationship_note.dart';
import 'sbomreference_note_containeranalysis_v1alpha1.dart';
import 'upgrade_note_containeranalysis_v1alpha1.dart';
import 'vulnerability_assessment_note_containeranalysis_v1alpha1.dart';
import 'vulnerability_type.dart';

/// {@template pulumi_containeranalysis_v1alpha1_note_containeranalysis_v1alpha1_args_doc}
/// The set of arguments for Note.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_note_containeranalysis_v1alpha1_args_doc}
class NoteContaineranalysisV1alpha1Args {
  /// A note describing an attestation role.
  final pulumi.Input<AttestationAuthority>? attestationAuthority;

  /// A note describing a base image.
  final pulumi.Input<Basis>? baseImage;

  /// Build provenance type for a verifiable build.
  final pulumi.Input<BuildType>? buildType;

  /// A note describing a compliance check.
  final pulumi.Input<ComplianceNoteContaineranalysisV1alpha1>? compliance;

  /// A note describing something that can be deployed.
  final pulumi.Input<Deployable>? deployable;

  /// A note describing a provider/analysis type.
  final pulumi.Input<Discovery>? discovery;

  /// A note describing a dsse attestation note.
  final pulumi.Input<DSSEAttestationNoteContaineranalysisV1alpha1>?
  dsseAttestation;

  /// Time of expiration for this note, null if note does not expire.
  final pulumi.Input<String>? expirationTime;

  /// A detailed description of this `Note`.
  final pulumi.Input<String>? longDescription;

  /// The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  final pulumi.Input<String>? name;

  /// The ID to use for this note.
  final pulumi.Input<String>? noteId;

  /// A note describing a package hosted by various package managers.
  final pulumi.Input<Package>? package;
  final pulumi.Input<String>? project;

  /// URLs associated with this note
  final pulumi.Input<List<RelatedUrlContaineranalysisV1alpha1>>? relatedUrl;

  /// A note describing a software bill of materials.
  final pulumi.Input<DocumentNote>? sbom;

  /// A note describing a reference to an SBOM.
  final pulumi.Input<SBOMReferenceNoteContaineranalysisV1alpha1>? sbomReference;

  /// A one sentence description of this `Note`.
  final pulumi.Input<String>? shortDescription;

  /// A note describing an SPDX File.
  final pulumi.Input<FileNote>? spdxFile;

  /// A note describing an SPDX Package.
  final pulumi.Input<PackageInfoNote>? spdxPackage;

  /// A note describing a relationship between SPDX elements.
  final pulumi.Input<RelationshipNote>? spdxRelationship;

  /// A note describing an upgrade.
  final pulumi.Input<UpgradeNoteContaineranalysisV1alpha1>? upgrade;

  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNoteContaineranalysisV1alpha1>?
  vulnerabilityAssessment;

  /// A package vulnerability type of note.
  final pulumi.Input<VulnerabilityType>? vulnerabilityType;

  /// Creates a new [NoteContaineranalysisV1alpha1Args].
  /// [attestationAuthority] A note describing an attestation role.
  /// [baseImage] A note describing a base image.
  /// [buildType] Build provenance type for a verifiable build.
  /// [compliance] A note describing a compliance check.
  /// [deployable] A note describing something that can be deployed.
  /// [discovery] A note describing a provider/analysis type.
  /// [dsseAttestation] A note describing a dsse attestation note.
  /// [expirationTime] Time of expiration for this note, null if note does not expire.
  /// [longDescription] A detailed description of this `Note`.
  /// [name] The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  /// [noteId] The ID to use for this note.
  /// [package] A note describing a package hosted by various package managers.
  /// [project] Optional.
  /// [relatedUrl] URLs associated with this note
  /// [sbom] A note describing a software bill of materials.
  /// [sbomReference] A note describing a reference to an SBOM.
  /// [shortDescription] A one sentence description of this `Note`.
  /// [spdxFile] A note describing an SPDX File.
  /// [spdxPackage] A note describing an SPDX Package.
  /// [spdxRelationship] A note describing a relationship between SPDX elements.
  /// [upgrade] A note describing an upgrade.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  /// [vulnerabilityType] A package vulnerability type of note.
  NoteContaineranalysisV1alpha1Args({
    AttestationAuthority? attestationAuthority,
    Basis? baseImage,
    BuildType? buildType,
    ComplianceNoteContaineranalysisV1alpha1? compliance,
    Deployable? deployable,
    Discovery? discovery,
    DSSEAttestationNoteContaineranalysisV1alpha1? dsseAttestation,
    String? expirationTime,
    String? longDescription,
    String? name,
    String? noteId,
    Package? package,
    String? project,
    List<RelatedUrlContaineranalysisV1alpha1>? relatedUrl,
    DocumentNote? sbom,
    SBOMReferenceNoteContaineranalysisV1alpha1? sbomReference,
    String? shortDescription,
    FileNote? spdxFile,
    PackageInfoNote? spdxPackage,
    RelationshipNote? spdxRelationship,
    UpgradeNoteContaineranalysisV1alpha1? upgrade,
    VulnerabilityAssessmentNoteContaineranalysisV1alpha1?
    vulnerabilityAssessment,
    VulnerabilityType? vulnerabilityType,
  }) : attestationAuthority = pulumi
           .Input.asOptionalInput<AttestationAuthority>(attestationAuthority),
       baseImage = pulumi.Input.asOptionalInput<Basis>(baseImage),
       buildType = pulumi.Input.asOptionalInput<BuildType>(buildType),
       compliance =
           pulumi.Input.asOptionalInput<
             ComplianceNoteContaineranalysisV1alpha1
           >(compliance),
       deployable = pulumi.Input.asOptionalInput<Deployable>(deployable),
       discovery = pulumi.Input.asOptionalInput<Discovery>(discovery),
       dsseAttestation =
           pulumi.Input.asOptionalInput<
             DSSEAttestationNoteContaineranalysisV1alpha1
           >(dsseAttestation),
       expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
       longDescription = pulumi.Input.asOptionalInput<String>(longDescription),
       name = pulumi.Input.asOptionalInput<String>(name),
       noteId = pulumi.Input.asOptionalInput<String>(noteId),
       package = pulumi.Input.asOptionalInput<Package>(package),
       project = pulumi.Input.asOptionalInput<String>(project),
       relatedUrl =
           pulumi.Input.asOptionalInput<
             List<RelatedUrlContaineranalysisV1alpha1>
           >(relatedUrl),
       sbom = pulumi.Input.asOptionalInput<DocumentNote>(sbom),
       sbomReference =
           pulumi.Input.asOptionalInput<
             SBOMReferenceNoteContaineranalysisV1alpha1
           >(sbomReference),
       shortDescription = pulumi.Input.asOptionalInput<String>(
         shortDescription,
       ),
       spdxFile = pulumi.Input.asOptionalInput<FileNote>(spdxFile),
       spdxPackage = pulumi.Input.asOptionalInput<PackageInfoNote>(spdxPackage),
       spdxRelationship = pulumi.Input.asOptionalInput<RelationshipNote>(
         spdxRelationship,
       ),
       upgrade =
           pulumi.Input.asOptionalInput<UpgradeNoteContaineranalysisV1alpha1>(
             upgrade,
           ),
       vulnerabilityAssessment =
           pulumi.Input.asOptionalInput<
             VulnerabilityAssessmentNoteContaineranalysisV1alpha1
           >(vulnerabilityAssessment),
       vulnerabilityType = pulumi.Input.asOptionalInput<VulnerabilityType>(
         vulnerabilityType,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationAuthority':
          ?pulumi.Input.mapOptionalInputValue<
            AttestationAuthority,
            Map<String, dynamic>
          >(attestationAuthority, (value) => value.toMap()),
      'baseImage':
          ?pulumi.Input.mapOptionalInputValue<Basis, Map<String, dynamic>>(
            baseImage,
            (value) => value.toMap(),
          ),
      'buildType':
          ?pulumi.Input.mapOptionalInputValue<BuildType, Map<String, dynamic>>(
            buildType,
            (value) => value.toMap(),
          ),
      'compliance':
          ?pulumi.Input.mapOptionalInputValue<
            ComplianceNoteContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(compliance, (value) => value.toMap()),
      'deployable':
          ?pulumi.Input.mapOptionalInputValue<Deployable, Map<String, dynamic>>(
            deployable,
            (value) => value.toMap(),
          ),
      'discovery':
          ?pulumi.Input.mapOptionalInputValue<Discovery, Map<String, dynamic>>(
            discovery,
            (value) => value.toMap(),
          ),
      'dsseAttestation':
          ?pulumi.Input.mapOptionalInputValue<
            DSSEAttestationNoteContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(dsseAttestation, (value) => value.toMap()),
      'expirationTime': ?expirationTime,
      'longDescription': ?longDescription,
      'name': ?name,
      'noteId': ?noteId,
      'package':
          ?pulumi.Input.mapOptionalInputValue<Package, Map<String, dynamic>>(
            package,
            (value) => value.toMap(),
          ),
      'project': ?project,
      'relatedUrl':
          ?pulumi.Input.mapOptionalInputValue<
            List<RelatedUrlContaineranalysisV1alpha1>,
            List<Map<String, dynamic>>
          >(
            relatedUrl,
            (value) =>
                pulumi.Input.encodeList<
                  RelatedUrlContaineranalysisV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sbom':
          ?pulumi.Input.mapOptionalInputValue<
            DocumentNote,
            Map<String, dynamic>
          >(sbom, (value) => value.toMap()),
      'sbomReference':
          ?pulumi.Input.mapOptionalInputValue<
            SBOMReferenceNoteContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(sbomReference, (value) => value.toMap()),
      'shortDescription': ?shortDescription,
      'spdxFile':
          ?pulumi.Input.mapOptionalInputValue<FileNote, Map<String, dynamic>>(
            spdxFile,
            (value) => value.toMap(),
          ),
      'spdxPackage':
          ?pulumi.Input.mapOptionalInputValue<
            PackageInfoNote,
            Map<String, dynamic>
          >(spdxPackage, (value) => value.toMap()),
      'spdxRelationship':
          ?pulumi.Input.mapOptionalInputValue<
            RelationshipNote,
            Map<String, dynamic>
          >(spdxRelationship, (value) => value.toMap()),
      'upgrade':
          ?pulumi.Input.mapOptionalInputValue<
            UpgradeNoteContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(upgrade, (value) => value.toMap()),
      'vulnerabilityAssessment':
          ?pulumi.Input.mapOptionalInputValue<
            VulnerabilityAssessmentNoteContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(vulnerabilityAssessment, (value) => value.toMap()),
      'vulnerabilityType':
          ?pulumi.Input.mapOptionalInputValue<
            VulnerabilityType,
            Map<String, dynamic>
          >(vulnerabilityType, (value) => value.toMap()),
    };
  }

  factory NoteContaineranalysisV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return NoteContaineranalysisV1alpha1Args(
      attestationAuthority: map['attestationAuthority'] == null
          ? null
          : AttestationAuthority.fromMap(
              (map['attestationAuthority'] as Map).cast<String, dynamic>(),
            ),
      baseImage: map['baseImage'] == null
          ? null
          : Basis.fromMap((map['baseImage'] as Map).cast<String, dynamic>()),
      buildType: map['buildType'] == null
          ? null
          : BuildType.fromMap(
              (map['buildType'] as Map).cast<String, dynamic>(),
            ),
      compliance: map['compliance'] == null
          ? null
          : ComplianceNoteContaineranalysisV1alpha1.fromMap(
              (map['compliance'] as Map).cast<String, dynamic>(),
            ),
      deployable: map['deployable'] == null
          ? null
          : Deployable.fromMap(
              (map['deployable'] as Map).cast<String, dynamic>(),
            ),
      discovery: map['discovery'] == null
          ? null
          : Discovery.fromMap(
              (map['discovery'] as Map).cast<String, dynamic>(),
            ),
      dsseAttestation: map['dsseAttestation'] == null
          ? null
          : DSSEAttestationNoteContaineranalysisV1alpha1.fromMap(
              (map['dsseAttestation'] as Map).cast<String, dynamic>(),
            ),
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      longDescription: map['longDescription'] == null
          ? null
          : map['longDescription'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      noteId: map['noteId'] == null ? null : map['noteId'] as String,
      package: map['package'] == null
          ? null
          : Package.fromMap((map['package'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      relatedUrl: map['relatedUrl'] == null
          ? null
          : pulumi.Input.decodeList<RelatedUrlContaineranalysisV1alpha1>(
              map['relatedUrl'],
              (value) => RelatedUrlContaineranalysisV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      sbom: map['sbom'] == null
          ? null
          : DocumentNote.fromMap((map['sbom'] as Map).cast<String, dynamic>()),
      sbomReference: map['sbomReference'] == null
          ? null
          : SBOMReferenceNoteContaineranalysisV1alpha1.fromMap(
              (map['sbomReference'] as Map).cast<String, dynamic>(),
            ),
      shortDescription: map['shortDescription'] == null
          ? null
          : map['shortDescription'] as String,
      spdxFile: map['spdxFile'] == null
          ? null
          : FileNote.fromMap((map['spdxFile'] as Map).cast<String, dynamic>()),
      spdxPackage: map['spdxPackage'] == null
          ? null
          : PackageInfoNote.fromMap(
              (map['spdxPackage'] as Map).cast<String, dynamic>(),
            ),
      spdxRelationship: map['spdxRelationship'] == null
          ? null
          : RelationshipNote.fromMap(
              (map['spdxRelationship'] as Map).cast<String, dynamic>(),
            ),
      upgrade: map['upgrade'] == null
          ? null
          : UpgradeNoteContaineranalysisV1alpha1.fromMap(
              (map['upgrade'] as Map).cast<String, dynamic>(),
            ),
      vulnerabilityAssessment: map['vulnerabilityAssessment'] == null
          ? null
          : VulnerabilityAssessmentNoteContaineranalysisV1alpha1.fromMap(
              (map['vulnerabilityAssessment'] as Map).cast<String, dynamic>(),
            ),
      vulnerabilityType: map['vulnerabilityType'] == null
          ? null
          : VulnerabilityType.fromMap(
              (map['vulnerabilityType'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
