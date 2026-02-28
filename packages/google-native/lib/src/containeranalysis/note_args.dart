// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_note.dart';
import 'build_note.dart';
import 'compliance_note.dart';
import 'deployment_note.dart';
import 'discovery_note.dart';
import 'dsseattestation_note.dart';
import 'image_note.dart';
import 'package_note.dart';
import 'related_url.dart';
import 'sbomreference_note.dart';
import 'upgrade_note.dart';
import 'vulnerability_assessment_note.dart';
import 'vulnerability_note.dart';

/// {@template pulumi_containeranalysis_v1_note_args_doc}
/// The set of arguments for Note.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_note_args_doc}
class NoteArgs {
  /// A note describing an attestation role.
  final pulumi.Input<AttestationNote>? attestation;

  /// A note describing build provenance for a verifiable build.
  final pulumi.Input<BuildNote>? build;

  /// A note describing a compliance check.
  final pulumi.Input<ComplianceNote>? compliance;

  /// A note describing something that can be deployed.
  final pulumi.Input<DeploymentNote>? deployment;

  /// A note describing the initial analysis of a resource.
  final pulumi.Input<DiscoveryNote>? discovery;

  /// A note describing a dsse attestation note.
  final pulumi.Input<DSSEAttestationNote>? dsseAttestation;

  /// Time of expiration for this note. Empty if note does not expire.
  final pulumi.Input<String>? expirationTime;

  /// A note describing a base image.
  final pulumi.Input<ImageNote>? image;

  /// A detailed description of this note.
  final pulumi.Input<String>? longDescription;

  /// Required. The ID to use for this note.
  final pulumi.Input<String> noteId;

  /// A note describing a package hosted by various package managers.
  final pulumi.Input<PackageNote>? package;
  final pulumi.Input<String>? project;

  /// Other notes related to this note.
  final pulumi.Input<List<String>>? relatedNoteNames;

  /// URLs associated with this note.
  final pulumi.Input<List<RelatedUrl>>? relatedUrl;

  /// A note describing an SBOM reference.
  final pulumi.Input<SBOMReferenceNote>? sbomReference;

  /// A one sentence description of this note.
  final pulumi.Input<String>? shortDescription;

  /// A note describing available package upgrades.
  final pulumi.Input<UpgradeNote>? upgrade;

  /// A note describing a package vulnerability.
  final pulumi.Input<VulnerabilityNote>? vulnerability;

  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNote>? vulnerabilityAssessment;

  /// Creates a new [NoteArgs].
  /// [attestation] A note describing an attestation role.
  /// [build] A note describing build provenance for a verifiable build.
  /// [compliance] A note describing a compliance check.
  /// [deployment] A note describing something that can be deployed.
  /// [discovery] A note describing the initial analysis of a resource.
  /// [dsseAttestation] A note describing a dsse attestation note.
  /// [expirationTime] Time of expiration for this note. Empty if note does not expire.
  /// [image] A note describing a base image.
  /// [longDescription] A detailed description of this note.
  /// [noteId] Required. The ID to use for this note.
  /// [package] A note describing a package hosted by various package managers.
  /// [project] Optional.
  /// [relatedNoteNames] Other notes related to this note.
  /// [relatedUrl] URLs associated with this note.
  /// [sbomReference] A note describing an SBOM reference.
  /// [shortDescription] A one sentence description of this note.
  /// [upgrade] A note describing available package upgrades.
  /// [vulnerability] A note describing a package vulnerability.
  /// [vulnerabilityAssessment] A note describing a vulnerability assessment.
  NoteArgs({
    AttestationNote? attestation,
    BuildNote? build,
    ComplianceNote? compliance,
    DeploymentNote? deployment,
    DiscoveryNote? discovery,
    DSSEAttestationNote? dsseAttestation,
    String? expirationTime,
    ImageNote? image,
    String? longDescription,
    required String noteId,
    PackageNote? package,
    String? project,
    List<String>? relatedNoteNames,
    List<RelatedUrl>? relatedUrl,
    SBOMReferenceNote? sbomReference,
    String? shortDescription,
    UpgradeNote? upgrade,
    VulnerabilityNote? vulnerability,
    VulnerabilityAssessmentNote? vulnerabilityAssessment,
  })  : attestation =
            pulumi.Input.asOptionalInput<AttestationNote>(attestation),
        build = pulumi.Input.asOptionalInput<BuildNote>(build),
        compliance = pulumi.Input.asOptionalInput<ComplianceNote>(compliance),
        deployment = pulumi.Input.asOptionalInput<DeploymentNote>(deployment),
        discovery = pulumi.Input.asOptionalInput<DiscoveryNote>(discovery),
        dsseAttestation =
            pulumi.Input.asOptionalInput<DSSEAttestationNote>(dsseAttestation),
        expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
        image = pulumi.Input.asOptionalInput<ImageNote>(image),
        longDescription = pulumi.Input.asOptionalInput<String>(longDescription),
        noteId = pulumi.Input.asInput<String>(noteId),
        package = pulumi.Input.asOptionalInput<PackageNote>(package),
        project = pulumi.Input.asOptionalInput<String>(project),
        relatedNoteNames =
            pulumi.Input.asOptionalInput<List<String>>(relatedNoteNames),
        relatedUrl = pulumi.Input.asOptionalInput<List<RelatedUrl>>(relatedUrl),
        sbomReference =
            pulumi.Input.asOptionalInput<SBOMReferenceNote>(sbomReference),
        shortDescription =
            pulumi.Input.asOptionalInput<String>(shortDescription),
        upgrade = pulumi.Input.asOptionalInput<UpgradeNote>(upgrade),
        vulnerability =
            pulumi.Input.asOptionalInput<VulnerabilityNote>(vulnerability),
        vulnerabilityAssessment =
            pulumi.Input.asOptionalInput<VulnerabilityAssessmentNote>(
                vulnerabilityAssessment);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationValue = attestation;
    if (attestationValue != null) {
      map['attestation'] = pulumi.Input.mapOptionalInputValue<AttestationNote,
          Map<String, dynamic>>(attestationValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] =
          pulumi.Input.mapOptionalInputValue<BuildNote, Map<String, dynamic>>(
              buildValue, (value) => value.toMap());
    }
    final complianceValue = compliance;
    if (complianceValue != null) {
      map['compliance'] = pulumi.Input.mapOptionalInputValue<ComplianceNote,
          Map<String, dynamic>>(complianceValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = pulumi.Input.mapOptionalInputValue<DeploymentNote,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final discoveryValue = discovery;
    if (discoveryValue != null) {
      map['discovery'] = pulumi.Input.mapOptionalInputValue<DiscoveryNote,
          Map<String, dynamic>>(discoveryValue, (value) => value.toMap());
    }
    final dsseAttestationValue = dsseAttestation;
    if (dsseAttestationValue != null) {
      map['dsseAttestation'] = pulumi.Input.mapOptionalInputValue<
          DSSEAttestationNote,
          Map<String, dynamic>>(dsseAttestationValue, (value) => value.toMap());
    }
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] =
          pulumi.Input.mapOptionalInputValue<ImageNote, Map<String, dynamic>>(
              imageValue, (value) => value.toMap());
    }
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    map['noteId'] = noteId;
    final packageValue = package;
    if (packageValue != null) {
      map['package'] =
          pulumi.Input.mapOptionalInputValue<PackageNote, Map<String, dynamic>>(
              packageValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final relatedNoteNamesValue = relatedNoteNames;
    if (relatedNoteNamesValue != null) {
      map['relatedNoteNames'] = relatedNoteNamesValue;
    }
    final relatedUrlValue = relatedUrl;
    if (relatedUrlValue != null) {
      map['relatedUrl'] = pulumi.Input.mapOptionalInputValue<List<RelatedUrl>,
              List<Map<String, dynamic>>>(
          relatedUrlValue,
          (value) => pulumi.Input.encodeList<RelatedUrl, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = pulumi.Input.mapOptionalInputValue<
          SBOMReferenceNote,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
    }
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] =
          pulumi.Input.mapOptionalInputValue<UpgradeNote, Map<String, dynamic>>(
              upgradeValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] = pulumi.Input.mapOptionalInputValue<
          VulnerabilityNote,
          Map<String, dynamic>>(vulnerabilityValue, (value) => value.toMap());
    }
    final vulnerabilityAssessmentValue = vulnerabilityAssessment;
    if (vulnerabilityAssessmentValue != null) {
      map['vulnerabilityAssessment'] = pulumi.Input.mapOptionalInputValue<
              VulnerabilityAssessmentNote, Map<String, dynamic>>(
          vulnerabilityAssessmentValue, (value) => value.toMap());
    }
    return map;
  }

  factory NoteArgs.fromMap(Map<String, dynamic> map) {
    return NoteArgs(
      attestation: map['attestation'] == null
          ? null
          : AttestationNote.fromMap(
              (map['attestation'] as Map).cast<String, dynamic>()),
      build: map['build'] == null
          ? null
          : BuildNote.fromMap((map['build'] as Map).cast<String, dynamic>()),
      compliance: map['compliance'] == null
          ? null
          : ComplianceNote.fromMap(
              (map['compliance'] as Map).cast<String, dynamic>()),
      deployment: map['deployment'] == null
          ? null
          : DeploymentNote.fromMap(
              (map['deployment'] as Map).cast<String, dynamic>()),
      discovery: map['discovery'] == null
          ? null
          : DiscoveryNote.fromMap(
              (map['discovery'] as Map).cast<String, dynamic>()),
      dsseAttestation: map['dsseAttestation'] == null
          ? null
          : DSSEAttestationNote.fromMap(
              (map['dsseAttestation'] as Map).cast<String, dynamic>()),
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      image: map['image'] == null
          ? null
          : ImageNote.fromMap((map['image'] as Map).cast<String, dynamic>()),
      longDescription: map['longDescription'] == null
          ? null
          : map['longDescription'] as String,
      noteId: map['noteId'] as String,
      package: map['package'] == null
          ? null
          : PackageNote.fromMap(
              (map['package'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      relatedNoteNames: map['relatedNoteNames'] == null
          ? null
          : (map['relatedNoteNames'] as List).cast<String>(),
      relatedUrl: map['relatedUrl'] == null
          ? null
          : pulumi.Input.decodeList<RelatedUrl>(
              map['relatedUrl'],
              (value) =>
                  RelatedUrl.fromMap((value as Map).cast<String, dynamic>())),
      sbomReference: map['sbomReference'] == null
          ? null
          : SBOMReferenceNote.fromMap(
              (map['sbomReference'] as Map).cast<String, dynamic>()),
      shortDescription: map['shortDescription'] == null
          ? null
          : map['shortDescription'] as String,
      upgrade: map['upgrade'] == null
          ? null
          : UpgradeNote.fromMap(
              (map['upgrade'] as Map).cast<String, dynamic>()),
      vulnerability: map['vulnerability'] == null
          ? null
          : VulnerabilityNote.fromMap(
              (map['vulnerability'] as Map).cast<String, dynamic>()),
      vulnerabilityAssessment: map['vulnerabilityAssessment'] == null
          ? null
          : VulnerabilityAssessmentNote.fromMap(
              (map['vulnerabilityAssessment'] as Map).cast<String, dynamic>()),
    );
  }
}
