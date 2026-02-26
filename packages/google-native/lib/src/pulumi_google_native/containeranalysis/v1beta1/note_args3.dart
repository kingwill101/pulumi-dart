// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'authority.dart';
import 'basis2.dart';
import 'build2.dart';
import 'deployable2.dart';
import 'discovery2.dart';
import 'document_note2.dart';
import 'file_note2.dart';
import 'in_toto.dart';
import 'package2.dart';
import 'package_info_note2.dart';
import 'related_url3.dart';
import 'relationship_note2.dart';
import 'sbomreference_note3.dart';
import 'vulnerability.dart';
import 'vulnerability_assessment_note3.dart';

/// The set of arguments for Note.
class NoteArgs3 {
  /// A note describing an attestation role.
  final Input<Authority>? attestationAuthority;

  /// A note describing a base image.
  final Input<Basis2>? baseImage;

  /// A note describing build provenance for a verifiable build.
  final Input<Build2>? build;

  /// A note describing something that can be deployed.
  final Input<Deployable2>? deployable;

  /// A note describing the initial analysis of a resource.
  final Input<Discovery2>? discovery;

  /// Time of expiration for this note. Empty if note does not expire.
  final Input<String>? expirationTime;

  /// A note describing an in-toto link.
  final Input<InToto>? intoto;

  /// A detailed description of this note.
  final Input<String>? longDescription;

  /// Required. The ID to use for this note.
  final Input<String> noteId;

  /// A note describing a package hosted by various package managers.
  final Input<Package2>? package;
  final Input<String>? project;

  /// Other notes related to this note.
  final Input<List<String>>? relatedNoteNames;

  /// URLs associated with this note.
  final Input<List<RelatedUrl3>>? relatedUrl;

  /// A note describing a software bill of materials.
  final Input<DocumentNote2>? sbom;

  /// A note describing an SBOM reference.
  final Input<SBOMReferenceNote3>? sbomReference;

  /// A one sentence description of this note.
  final Input<String>? shortDescription;

  /// A note describing an SPDX File.
  final Input<FileNote2>? spdxFile;

  /// A note describing an SPDX Package.
  final Input<PackageInfoNote2>? spdxPackage;

  /// A note describing an SPDX File.
  final Input<RelationshipNote2>? spdxRelationship;

  /// A note describing a package vulnerability.
  final Input<Vulnerability>? vulnerability;

  /// A note describing a vulnerability assessment.
  final Input<VulnerabilityAssessmentNote3>? vulnerabilityAssessment;

  NoteArgs3({
    this.attestationAuthority,
    this.baseImage,
    this.build,
    this.deployable,
    this.discovery,
    this.expirationTime,
    this.intoto,
    this.longDescription,
    required this.noteId,
    this.package,
    this.project,
    this.relatedNoteNames,
    this.relatedUrl,
    this.sbom,
    this.sbomReference,
    this.shortDescription,
    this.spdxFile,
    this.spdxPackage,
    this.spdxRelationship,
    this.vulnerability,
    this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationAuthorityValue = attestationAuthority;
    if (attestationAuthorityValue != null) {
      map['attestationAuthority'] =
          Input.mapOptionalInputValue<Authority, Map<String, dynamic>>(
              attestationAuthorityValue, (value) => value.toMap());
    }
    final baseImageValue = baseImage;
    if (baseImageValue != null) {
      map['baseImage'] =
          Input.mapOptionalInputValue<Basis2, Map<String, dynamic>>(
              baseImageValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = Input.mapOptionalInputValue<Build2, Map<String, dynamic>>(
          buildValue, (value) => value.toMap());
    }
    final deployableValue = deployable;
    if (deployableValue != null) {
      map['deployable'] =
          Input.mapOptionalInputValue<Deployable2, Map<String, dynamic>>(
              deployableValue, (value) => value.toMap());
    }
    final discoveryValue = discovery;
    if (discoveryValue != null) {
      map['discovery'] =
          Input.mapOptionalInputValue<Discovery2, Map<String, dynamic>>(
              discoveryValue, (value) => value.toMap());
    }
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final intotoValue = intoto;
    if (intotoValue != null) {
      map['intoto'] = Input.mapOptionalInputValue<InToto, Map<String, dynamic>>(
          intotoValue, (value) => value.toMap());
    }
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    map['noteId'] = noteId;
    final packageValue = package;
    if (packageValue != null) {
      map['package'] =
          Input.mapOptionalInputValue<Package2, Map<String, dynamic>>(
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
      map['relatedUrl'] = Input.mapOptionalInputValue<List<RelatedUrl3>,
              List<Map<String, dynamic>>>(
          relatedUrlValue,
          (value) => Input.encodeList<RelatedUrl3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] =
          Input.mapOptionalInputValue<DocumentNote2, Map<String, dynamic>>(
              sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] =
          Input.mapOptionalInputValue<SBOMReferenceNote3, Map<String, dynamic>>(
              sbomReferenceValue, (value) => value.toMap());
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] =
          Input.mapOptionalInputValue<FileNote2, Map<String, dynamic>>(
              spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] =
          Input.mapOptionalInputValue<PackageInfoNote2, Map<String, dynamic>>(
              spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] =
          Input.mapOptionalInputValue<RelationshipNote2, Map<String, dynamic>>(
              spdxRelationshipValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] =
          Input.mapOptionalInputValue<Vulnerability, Map<String, dynamic>>(
              vulnerabilityValue, (value) => value.toMap());
    }
    final vulnerabilityAssessmentValue = vulnerabilityAssessment;
    if (vulnerabilityAssessmentValue != null) {
      map['vulnerabilityAssessment'] = Input.mapOptionalInputValue<
              VulnerabilityAssessmentNote3, Map<String, dynamic>>(
          vulnerabilityAssessmentValue, (value) => value.toMap());
    }
    return map;
  }

  factory NoteArgs3.fromMap(Map<String, dynamic> map) {
    return NoteArgs3(
      attestationAuthority:
          Input.asOptionalInput<Authority>(map['attestationAuthority']),
      baseImage: Input.asOptionalInput<Basis2>(map['baseImage']),
      build: Input.asOptionalInput<Build2>(map['build']),
      deployable: Input.asOptionalInput<Deployable2>(map['deployable']),
      discovery: Input.asOptionalInput<Discovery2>(map['discovery']),
      expirationTime: Input.asOptionalInput<String>(map['expirationTime']),
      intoto: Input.asOptionalInput<InToto>(map['intoto']),
      longDescription: Input.asOptionalInput<String>(map['longDescription']),
      noteId: Input.asInput<String>(map['noteId']),
      package: Input.asOptionalInput<Package2>(map['package']),
      project: Input.asOptionalInput<String>(map['project']),
      relatedNoteNames:
          Input.asOptionalInput<List<String>>(map['relatedNoteNames']),
      relatedUrl: Input.asOptionalInput<List<RelatedUrl3>>(map['relatedUrl']),
      sbom: Input.asOptionalInput<DocumentNote2>(map['sbom']),
      sbomReference:
          Input.asOptionalInput<SBOMReferenceNote3>(map['sbomReference']),
      shortDescription: Input.asOptionalInput<String>(map['shortDescription']),
      spdxFile: Input.asOptionalInput<FileNote2>(map['spdxFile']),
      spdxPackage: Input.asOptionalInput<PackageInfoNote2>(map['spdxPackage']),
      spdxRelationship:
          Input.asOptionalInput<RelationshipNote2>(map['spdxRelationship']),
      vulnerability: Input.asOptionalInput<Vulnerability>(map['vulnerability']),
      vulnerabilityAssessment:
          Input.asOptionalInput<VulnerabilityAssessmentNote3>(
              map['vulnerabilityAssessment']),
    );
  }
}
