// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'attestation_authority_response.dart';
import 'basis_response.dart';
import 'build_type_response.dart';
import 'compliance_note_response2.dart';
import 'deployable_response.dart';
import 'discovery_response.dart';
import 'document_note_response.dart';
import 'dsseattestation_note_response2.dart';
import 'file_note_response.dart';
import 'package_info_note_response.dart';
import 'package_response.dart';
import 'related_url_response2.dart';
import 'relationship_note_response.dart';
import 'sbomreference_note_response2.dart';
import 'upgrade_note_response2.dart';
import 'vulnerability_assessment_note_response2.dart';
import 'vulnerability_type_response.dart';

/// Result data returned by getNote.
class GetNoteResult2 {
  /// A note describing an attestation role.
  final AttestationAuthorityResponse attestationAuthority;

  /// A note describing a base image.
  final BasisResponse baseImage;

  /// Build provenance type for a verifiable build.
  final BuildTypeResponse buildType;

  /// A note describing a compliance check.
  final ComplianceNoteResponse2 compliance;

  /// The time this note was created. This field can be used as a filter in list requests.
  final String createTime;

  /// A note describing something that can be deployed.
  final DeployableResponse deployable;

  /// A note describing a provider/analysis type.
  final DiscoveryResponse discovery;

  /// A note describing a dsse attestation note.
  final DSSEAttestationNoteResponse2 dsseAttestation;

  /// Time of expiration for this note, null if note does not expire.
  final String expirationTime;

  /// This explicitly denotes which kind of note is specified. This field can be used as a filter in list requests.
  final String kind;

  /// A detailed description of this `Note`.
  final String longDescription;

  /// The name of the note in the form "projects/{provider_project_id}/notes/{NOTE_ID}"
  final String name;

  /// A note describing a package hosted by various package managers.
  final PackageResponse package;

  /// URLs associated with this note
  final List<RelatedUrlResponse2> relatedUrl;

  /// A note describing a software bill of materials.
  final DocumentNoteResponse sbom;

  /// A note describing a reference to an SBOM.
  final SBOMReferenceNoteResponse2 sbomReference;

  /// A one sentence description of this `Note`.
  final String shortDescription;

  /// A note describing an SPDX File.
  final FileNoteResponse spdxFile;

  /// A note describing an SPDX Package.
  final PackageInfoNoteResponse spdxPackage;

  /// A note describing a relationship between SPDX elements.
  final RelationshipNoteResponse spdxRelationship;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String updateTime;

  /// A note describing an upgrade.
  final UpgradeNoteResponse2 upgrade;

  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponse2 vulnerabilityAssessment;

  /// A package vulnerability type of note.
  final VulnerabilityTypeResponse vulnerabilityType;

  GetNoteResult2({
    required this.attestationAuthority,
    required this.baseImage,
    required this.buildType,
    required this.compliance,
    required this.createTime,
    required this.deployable,
    required this.discovery,
    required this.dsseAttestation,
    required this.expirationTime,
    required this.kind,
    required this.longDescription,
    required this.name,
    required this.package,
    required this.relatedUrl,
    required this.sbom,
    required this.sbomReference,
    required this.shortDescription,
    required this.spdxFile,
    required this.spdxPackage,
    required this.spdxRelationship,
    required this.updateTime,
    required this.upgrade,
    required this.vulnerabilityAssessment,
    required this.vulnerabilityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestationAuthority'] = attestationAuthority.toMap();
    map['baseImage'] = baseImage.toMap();
    map['buildType'] = buildType.toMap();
    map['compliance'] = compliance.toMap();
    map['createTime'] = createTime;
    map['deployable'] = deployable.toMap();
    map['discovery'] = discovery.toMap();
    map['dsseAttestation'] = dsseAttestation.toMap();
    map['expirationTime'] = expirationTime;
    map['kind'] = kind;
    map['longDescription'] = longDescription;
    map['name'] = name;
    map['package'] = package.toMap();
    map['relatedUrl'] =
        Input.encodeList<RelatedUrlResponse2, Map<String, dynamic>>(
            relatedUrl, (value) => value.toMap());
    map['sbom'] = sbom.toMap();
    map['sbomReference'] = sbomReference.toMap();
    map['shortDescription'] = shortDescription;
    map['spdxFile'] = spdxFile.toMap();
    map['spdxPackage'] = spdxPackage.toMap();
    map['spdxRelationship'] = spdxRelationship.toMap();
    map['updateTime'] = updateTime;
    map['upgrade'] = upgrade.toMap();
    map['vulnerabilityAssessment'] = vulnerabilityAssessment.toMap();
    map['vulnerabilityType'] = vulnerabilityType.toMap();
    return map;
  }

  factory GetNoteResult2.fromMap(Map<String, dynamic> map) {
    return GetNoteResult2(
      attestationAuthority: AttestationAuthorityResponse.fromMap(
          (map['attestationAuthority'] as Map).cast<String, dynamic>()),
      baseImage: BasisResponse.fromMap(
          (map['baseImage'] as Map).cast<String, dynamic>()),
      buildType: BuildTypeResponse.fromMap(
          (map['buildType'] as Map).cast<String, dynamic>()),
      compliance: ComplianceNoteResponse2.fromMap(
          (map['compliance'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployable: DeployableResponse.fromMap(
          (map['deployable'] as Map).cast<String, dynamic>()),
      discovery: DiscoveryResponse.fromMap(
          (map['discovery'] as Map).cast<String, dynamic>()),
      dsseAttestation: DSSEAttestationNoteResponse2.fromMap(
          (map['dsseAttestation'] as Map).cast<String, dynamic>()),
      expirationTime: map['expirationTime'] as String,
      kind: map['kind'] as String,
      longDescription: map['longDescription'] as String,
      name: map['name'] as String,
      package: PackageResponse.fromMap(
          (map['package'] as Map).cast<String, dynamic>()),
      relatedUrl: Input.decodeList<RelatedUrlResponse2>(
          map['relatedUrl'],
          (value) => RelatedUrlResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      sbom: DocumentNoteResponse.fromMap(
          (map['sbom'] as Map).cast<String, dynamic>()),
      sbomReference: SBOMReferenceNoteResponse2.fromMap(
          (map['sbomReference'] as Map).cast<String, dynamic>()),
      shortDescription: map['shortDescription'] as String,
      spdxFile: FileNoteResponse.fromMap(
          (map['spdxFile'] as Map).cast<String, dynamic>()),
      spdxPackage: PackageInfoNoteResponse.fromMap(
          (map['spdxPackage'] as Map).cast<String, dynamic>()),
      spdxRelationship: RelationshipNoteResponse.fromMap(
          (map['spdxRelationship'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      upgrade: UpgradeNoteResponse2.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
      vulnerabilityAssessment: VulnerabilityAssessmentNoteResponse2.fromMap(
          (map['vulnerabilityAssessment'] as Map).cast<String, dynamic>()),
      vulnerabilityType: VulnerabilityTypeResponse.fromMap(
          (map['vulnerabilityType'] as Map).cast<String, dynamic>()),
    );
  }
}
