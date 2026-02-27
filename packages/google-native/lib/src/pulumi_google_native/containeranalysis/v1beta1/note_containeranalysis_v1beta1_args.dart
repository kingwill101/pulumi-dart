// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority.dart';
import 'basis_containeranalysis_v1beta1.dart';
import 'build_containeranalysis_v1beta1.dart';
import 'deployable_containeranalysis_v1beta1.dart';
import 'discovery_containeranalysis_v1beta1.dart';
import 'document_note_containeranalysis_v1beta1.dart';
import 'file_note_containeranalysis_v1beta1.dart';
import 'in_toto.dart';
import 'package_containeranalysis_v1beta1.dart';
import 'package_info_note_containeranalysis_v1beta1.dart';
import 'related_url_containeranalysis_v1beta1.dart';
import 'relationship_note_containeranalysis_v1beta1.dart';
import 'sbomreference_note_containeranalysis_v1beta1.dart';
import 'vulnerability.dart';
import 'vulnerability_assessment_note_containeranalysis_v1beta1.dart';

/// The set of arguments for Note.
class NoteContaineranalysisV1beta1Args {
  /// A note describing an attestation role.
  final pulumi.Input<Authority>? attestationAuthority;

  /// A note describing a base image.
  final pulumi.Input<BasisContaineranalysisV1beta1>? baseImage;

  /// A note describing build provenance for a verifiable build.
  final pulumi.Input<BuildContaineranalysisV1beta1>? build;

  /// A note describing something that can be deployed.
  final pulumi.Input<DeployableContaineranalysisV1beta1>? deployable;

  /// A note describing the initial analysis of a resource.
  final pulumi.Input<DiscoveryContaineranalysisV1beta1>? discovery;

  /// Time of expiration for this note. Empty if note does not expire.
  final pulumi.Input<String>? expirationTime;

  /// A note describing an in-toto link.
  final pulumi.Input<InToto>? intoto;

  /// A detailed description of this note.
  final pulumi.Input<String>? longDescription;

  /// Required. The ID to use for this note.
  final pulumi.Input<String> noteId;

  /// A note describing a package hosted by various package managers.
  final pulumi.Input<PackageContaineranalysisV1beta1>? package;
  final pulumi.Input<String>? project;

  /// Other notes related to this note.
  final pulumi.Input<List<String>>? relatedNoteNames;

  /// URLs associated with this note.
  final pulumi.Input<List<RelatedUrlContaineranalysisV1beta1>>? relatedUrl;

  /// A note describing a software bill of materials.
  final pulumi.Input<DocumentNoteContaineranalysisV1beta1>? sbom;

  /// A note describing an SBOM reference.
  final pulumi.Input<SBOMReferenceNoteContaineranalysisV1beta1>? sbomReference;

  /// A one sentence description of this note.
  final pulumi.Input<String>? shortDescription;

  /// A note describing an SPDX File.
  final pulumi.Input<FileNoteContaineranalysisV1beta1>? spdxFile;

  /// A note describing an SPDX Package.
  final pulumi.Input<PackageInfoNoteContaineranalysisV1beta1>? spdxPackage;

  /// A note describing an SPDX File.
  final pulumi.Input<RelationshipNoteContaineranalysisV1beta1>?
      spdxRelationship;

  /// A note describing a package vulnerability.
  final pulumi.Input<Vulnerability>? vulnerability;

  /// A note describing a vulnerability assessment.
  final pulumi.Input<VulnerabilityAssessmentNoteContaineranalysisV1beta1>?
      vulnerabilityAssessment;

  NoteContaineranalysisV1beta1Args({
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
          pulumi.Input.mapOptionalInputValue<Authority, Map<String, dynamic>>(
              attestationAuthorityValue, (value) => value.toMap());
    }
    final baseImageValue = baseImage;
    if (baseImageValue != null) {
      map['baseImage'] = pulumi.Input.mapOptionalInputValue<
          BasisContaineranalysisV1beta1,
          Map<String, dynamic>>(baseImageValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = pulumi.Input.mapOptionalInputValue<
          BuildContaineranalysisV1beta1,
          Map<String, dynamic>>(buildValue, (value) => value.toMap());
    }
    final deployableValue = deployable;
    if (deployableValue != null) {
      map['deployable'] = pulumi.Input.mapOptionalInputValue<
          DeployableContaineranalysisV1beta1,
          Map<String, dynamic>>(deployableValue, (value) => value.toMap());
    }
    final discoveryValue = discovery;
    if (discoveryValue != null) {
      map['discovery'] = pulumi.Input.mapOptionalInputValue<
          DiscoveryContaineranalysisV1beta1,
          Map<String, dynamic>>(discoveryValue, (value) => value.toMap());
    }
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final intotoValue = intoto;
    if (intotoValue != null) {
      map['intoto'] =
          pulumi.Input.mapOptionalInputValue<InToto, Map<String, dynamic>>(
              intotoValue, (value) => value.toMap());
    }
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    map['noteId'] = noteId;
    final packageValue = package;
    if (packageValue != null) {
      map['package'] = pulumi.Input.mapOptionalInputValue<
          PackageContaineranalysisV1beta1,
          Map<String, dynamic>>(packageValue, (value) => value.toMap());
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
      map['relatedUrl'] = pulumi.Input.mapOptionalInputValue<
              List<RelatedUrlContaineranalysisV1beta1>,
              List<Map<String, dynamic>>>(
          relatedUrlValue,
          (value) => pulumi.Input.encodeList<RelatedUrlContaineranalysisV1beta1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sbomValue = sbom;
    if (sbomValue != null) {
      map['sbom'] = pulumi.Input.mapOptionalInputValue<
          DocumentNoteContaineranalysisV1beta1,
          Map<String, dynamic>>(sbomValue, (value) => value.toMap());
    }
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = pulumi.Input.mapOptionalInputValue<
          SBOMReferenceNoteContaineranalysisV1beta1,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
    }
    final spdxFileValue = spdxFile;
    if (spdxFileValue != null) {
      map['spdxFile'] = pulumi.Input.mapOptionalInputValue<
          FileNoteContaineranalysisV1beta1,
          Map<String, dynamic>>(spdxFileValue, (value) => value.toMap());
    }
    final spdxPackageValue = spdxPackage;
    if (spdxPackageValue != null) {
      map['spdxPackage'] = pulumi.Input.mapOptionalInputValue<
          PackageInfoNoteContaineranalysisV1beta1,
          Map<String, dynamic>>(spdxPackageValue, (value) => value.toMap());
    }
    final spdxRelationshipValue = spdxRelationship;
    if (spdxRelationshipValue != null) {
      map['spdxRelationship'] = pulumi.Input.mapOptionalInputValue<
              RelationshipNoteContaineranalysisV1beta1, Map<String, dynamic>>(
          spdxRelationshipValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] = pulumi.Input.mapOptionalInputValue<Vulnerability,
          Map<String, dynamic>>(vulnerabilityValue, (value) => value.toMap());
    }
    final vulnerabilityAssessmentValue = vulnerabilityAssessment;
    if (vulnerabilityAssessmentValue != null) {
      map['vulnerabilityAssessment'] = pulumi.Input.mapOptionalInputValue<
              VulnerabilityAssessmentNoteContaineranalysisV1beta1,
              Map<String, dynamic>>(
          vulnerabilityAssessmentValue, (value) => value.toMap());
    }
    return map;
  }

  factory NoteContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NoteContaineranalysisV1beta1Args(
      attestationAuthority:
          pulumi.Input.asOptionalInput<Authority>(map['attestationAuthority']),
      baseImage: pulumi.Input.asOptionalInput<BasisContaineranalysisV1beta1>(
          map['baseImage']),
      build: pulumi.Input.asOptionalInput<BuildContaineranalysisV1beta1>(
          map['build']),
      deployable:
          pulumi.Input.asOptionalInput<DeployableContaineranalysisV1beta1>(
              map['deployable']),
      discovery:
          pulumi.Input.asOptionalInput<DiscoveryContaineranalysisV1beta1>(
              map['discovery']),
      expirationTime:
          pulumi.Input.asOptionalInput<String>(map['expirationTime']),
      intoto: pulumi.Input.asOptionalInput<InToto>(map['intoto']),
      longDescription:
          pulumi.Input.asOptionalInput<String>(map['longDescription']),
      noteId: pulumi.Input.asInput<String>(map['noteId']),
      package: pulumi.Input.asOptionalInput<PackageContaineranalysisV1beta1>(
          map['package']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      relatedNoteNames:
          pulumi.Input.asOptionalInput<List<String>>(map['relatedNoteNames']),
      relatedUrl: pulumi.Input.asOptionalInput<
          List<RelatedUrlContaineranalysisV1beta1>>(map['relatedUrl']),
      sbom: pulumi.Input.asOptionalInput<DocumentNoteContaineranalysisV1beta1>(
          map['sbom']),
      sbomReference: pulumi.Input.asOptionalInput<
          SBOMReferenceNoteContaineranalysisV1beta1>(map['sbomReference']),
      shortDescription:
          pulumi.Input.asOptionalInput<String>(map['shortDescription']),
      spdxFile: pulumi.Input.asOptionalInput<FileNoteContaineranalysisV1beta1>(
          map['spdxFile']),
      spdxPackage:
          pulumi.Input.asOptionalInput<PackageInfoNoteContaineranalysisV1beta1>(
              map['spdxPackage']),
      spdxRelationship: pulumi.Input.asOptionalInput<
          RelationshipNoteContaineranalysisV1beta1>(map['spdxRelationship']),
      vulnerability:
          pulumi.Input.asOptionalInput<Vulnerability>(map['vulnerability']),
      vulnerabilityAssessment: pulumi.Input.asOptionalInput<
              VulnerabilityAssessmentNoteContaineranalysisV1beta1>(
          map['vulnerabilityAssessment']),
    );
  }
}
