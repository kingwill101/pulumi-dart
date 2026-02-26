// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'attestation_authority.dart';
import 'basis.dart';
import 'build_type.dart';
import 'compliance_note2.dart';
import 'deployable.dart';
import 'discovery.dart';
import 'document_note.dart';
import 'dsseattestation_note2.dart';
import 'file_note.dart';
import 'package.dart';
import 'package_info_note.dart';
import 'related_url2.dart';
import 'relationship_note.dart';
import 'sbomreference_note2.dart';
import 'upgrade_note2.dart';
import 'vulnerability_assessment_note2.dart';
import 'vulnerability_type.dart';

/// The set of arguments for Note.
class NoteArgs2 {
  /// A note describing an attestation role.
  final Input<AttestationAuthority>? attestationAuthority;

  /// A note describing a base image.
  final Input<Basis>? baseImage;

  /// Build provenance type for a verifiable build.
  final Input<BuildType>? buildType;

  /// A note describing a compliance check.
  final Input<ComplianceNote2>? compliance;

  /// A note describing something that can be deployed.
  final Input<Deployable>? deployable;

  /// A note describing a provider/analysis type.
  final Input<Discovery>? discovery;

  /// A note describing a dsse attestation note.
  final Input<DSSEAttestationNote2>? dsseAttestation;

  /// Time of expiration for this note, null if note does not expire.
  final Input<String>? expirationTime;

  /// A detailed description of this `Note`.
  final Input<String>? longDescription;

  /// The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  final Input<String>? name;

  /// The ID to use for this note.
  final Input<String>? noteId;

  /// A note describing a package hosted by various package managers.
  final Input<Package>? package;
  final Input<String>? project;

  /// URLs associated with this note
  final Input<List<RelatedUrl2>>? relatedUrl;

  /// A note describing a software bill of materials.
  final Input<DocumentNote>? sbom;

  /// A note describing a reference to an SBOM.
  final Input<SBOMReferenceNote2>? sbomReference;

  /// A one sentence description of this `Note`.
  final Input<String>? shortDescription;

  /// A note describing an SPDX File.
  final Input<FileNote>? spdxFile;

  /// A note describing an SPDX Package.
  final Input<PackageInfoNote>? spdxPackage;

  /// A note describing a relationship between SPDX elements.
  final Input<RelationshipNote>? spdxRelationship;

  /// A note describing an upgrade.
  final Input<UpgradeNote2>? upgrade;

  /// A note describing a vulnerability assessment.
  final Input<VulnerabilityAssessmentNote2>? vulnerabilityAssessment;

  /// A package vulnerability type of note.
  final Input<VulnerabilityType>? vulnerabilityType;

  NoteArgs2({
    this.attestationAuthority,
    this.baseImage,
    this.buildType,
    this.compliance,
    this.deployable,
    this.discovery,
    this.dsseAttestation,
    this.expirationTime,
    this.longDescription,
    this.name,
    this.noteId,
    this.package,
    this.project,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.upgrade,
    this.vulnerabilityAssessment,
    this.vulnerabilityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationAuthorityValue = attestationAuthority;
    if (attestationAuthorityValue != null) {
      map['attestationAuthority'] = Input.mapOptionalInputValue<
              AttestationAuthority, Map<String, dynamic>>(
          attestationAuthorityValue, (value) => value.toMap());
    }
    final baseImageValue = baseImage;
    if (baseImageValue != null) {
      map['baseImage'] =
          Input.mapOptionalInputValue<Basis, Map<String, dynamic>>(
              baseImageValue, (value) => value.toMap());
    }
    final buildTypeValue = buildType;
    if (buildTypeValue != null) {
      map['buildType'] =
          Input.mapOptionalInputValue<BuildType, Map<String, dynamic>>(
              buildTypeValue, (value) => value.toMap());
    }
    final complianceValue = compliance;
    if (complianceValue != null) {
      map['compliance'] =
          Input.mapOptionalInputValue<ComplianceNote2, Map<String, dynamic>>(
              complianceValue, (value) => value.toMap());
    }
    final deployableValue = deployable;
    if (deployableValue != null) {
      map['deployable'] =
          Input.mapOptionalInputValue<Deployable, Map<String, dynamic>>(
              deployableValue, (value) => value.toMap());
    }
    final discoveryValue = discovery;
    if (discoveryValue != null) {
      map['discovery'] =
          Input.mapOptionalInputValue<Discovery, Map<String, dynamic>>(
              discoveryValue, (value) => value.toMap());
    }
    final dsseAttestationValue = dsseAttestation;
    if (dsseAttestationValue != null) {
      map['dsseAttestation'] = Input.mapOptionalInputValue<DSSEAttestationNote2,
          Map<String, dynamic>>(dsseAttestationValue, (value) => value.toMap());
    }
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final noteIdValue = noteId;
    if (noteIdValue != null) {
      map['noteId'] = noteIdValue;
    }
    final packageValue = package;
    if (packageValue != null) {
      map['package'] =
          Input.mapOptionalInputValue<Package, Map<String, dynamic>>(
              packageValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final relatedUrlValue = relatedUrl;
    if (relatedUrlValue != null) {
      map['relatedUrl'] = Input.mapOptionalInputValue<List<RelatedUrl2>,
              List<Map<String, dynamic>>>(
          relatedUrlValue,
          (value) => Input.encodeList<RelatedUrl2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] =
          Input.mapOptionalInputValue<DocumentNote, Map<String, dynamic>>(
              sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] =
          Input.mapOptionalInputValue<SBOMReferenceNote2, Map<String, dynamic>>(
              sbomReferenceValue, (value) => value.toMap());
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] =
          Input.mapOptionalInputValue<FileNote, Map<String, dynamic>>(
              spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] =
          Input.mapOptionalInputValue<PackageInfoNote, Map<String, dynamic>>(
              spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] =
          Input.mapOptionalInputValue<RelationshipNote, Map<String, dynamic>>(
              spdxRelationshipValue, (value) => value.toMap());
    }
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] =
          Input.mapOptionalInputValue<UpgradeNote2, Map<String, dynamic>>(
              upgradeValue, (value) => value.toMap());
    }
    final vulnerabilityAssessmentValue = vulnerabilityAssessment;
    if (vulnerabilityAssessmentValue != null) {
      map['vulnerabilityAssessment'] = Input.mapOptionalInputValue<
              VulnerabilityAssessmentNote2, Map<String, dynamic>>(
          vulnerabilityAssessmentValue, (value) => value.toMap());
    }
    final vulnerabilityTypeValue = vulnerabilityType;
    if (vulnerabilityTypeValue != null) {
      map['vulnerabilityType'] =
          Input.mapOptionalInputValue<VulnerabilityType, Map<String, dynamic>>(
              vulnerabilityTypeValue, (value) => value.toMap());
    }
    return map;
  }

  factory NoteArgs2.fromMap(Map<String, dynamic> map) {
    return NoteArgs2(
      attestationAuthority: Input.asOptionalInput<AttestationAuthority>(
          map['attestationAuthority']),
      baseImage: Input.asOptionalInput<Basis>(map['baseImage']),
      buildType: Input.asOptionalInput<BuildType>(map['buildType']),
      compliance: Input.asOptionalInput<ComplianceNote2>(map['compliance']),
      deployable: Input.asOptionalInput<Deployable>(map['deployable']),
      discovery: Input.asOptionalInput<Discovery>(map['discovery']),
      dsseAttestation:
          Input.asOptionalInput<DSSEAttestationNote2>(map['dsseAttestation']),
      expirationTime: Input.asOptionalInput<String>(map['expirationTime']),
      longDescription: Input.asOptionalInput<String>(map['longDescription']),
      name: Input.asOptionalInput<String>(map['name']),
      noteId: Input.asOptionalInput<String>(map['noteId']),
      package: Input.asOptionalInput<Package>(map['package']),
      project: Input.asOptionalInput<String>(map['project']),
      relatedUrl: Input.asOptionalInput<List<RelatedUrl2>>(map['relatedUrl']),
      sbom: Input.asOptionalInput<DocumentNote>(map['sbom']),
      sbomReference:
          Input.asOptionalInput<SBOMReferenceNote2>(map['sbomReference']),
      shortDescription: Input.asOptionalInput<String>(map['shortDescription']),
      spdxFile: Input.asOptionalInput<FileNote>(map['spdxFile']),
      spdxPackage: Input.asOptionalInput<PackageInfoNote>(map['spdxPackage']),
      spdxRelationship:
          Input.asOptionalInput<RelationshipNote>(map['spdxRelationship']),
      upgrade: Input.asOptionalInput<UpgradeNote2>(map['upgrade']),
      vulnerabilityAssessment:
          Input.asOptionalInput<VulnerabilityAssessmentNote2>(
              map['vulnerabilityAssessment']),
      vulnerabilityType:
          Input.asOptionalInput<VulnerabilityType>(map['vulnerabilityType']),
    );
  }
}
