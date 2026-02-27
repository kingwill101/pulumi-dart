// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'authority_response.dart';
import 'basis_response2.dart';
import 'build_response3.dart';
import 'deployable_response2.dart';
import 'discovery_response2.dart';
import 'document_note_response2.dart';
import 'file_note_response2.dart';
import 'in_toto_response.dart';
import 'package_info_note_response2.dart';
import 'package_response2.dart';
import 'related_url_response3.dart';
import 'relationship_note_response2.dart';
import 'sbomreference_note_response3.dart';
import 'vulnerability_assessment_note_response3.dart';
import 'vulnerability_response.dart';

/// Result data returned by getNote.
class GetNoteResult3 {
  /// A note describing an attestation role.
  final AuthorityResponse attestationAuthority;

  /// A note describing a base image.
  final BasisResponse2 baseImage;

  /// A note describing build provenance for a verifiable build.
  final BuildResponse3 build;

  /// The time this note was created. This field can be used as a filter in list requests.
  final String createTime;

  /// A note describing something that can be deployed.
  final DeployableResponse2 deployable;

  /// A note describing the initial analysis of a resource.
  final DiscoveryResponse2 discovery;

  /// Time of expiration for this note. Empty if note does not expire.
  final String expirationTime;

  /// A note describing an in-toto link.
  final InTotoResponse intoto;

  /// The type of analysis. This field can be used as a filter in list requests.
  final String kind;

  /// A detailed description of this note.
  final String longDescription;

  /// The name of the note in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`.
  final String name;

  /// A note describing a package hosted by various package managers.
  final PackageResponse2 package;

  /// Other notes related to this note.
  final List<String> relatedNoteNames;

  /// URLs associated with this note.
  final List<RelatedUrlResponse3> relatedUrl;

  /// A note describing a software bill of materials.
  final DocumentNoteResponse2 sbom;

  /// A note describing an SBOM reference.
  final SBOMReferenceNoteResponse3 sbomReference;

  /// A one sentence description of this note.
  final String shortDescription;

  /// A note describing an SPDX File.
  final FileNoteResponse2 spdxFile;

  /// A note describing an SPDX Package.
  final PackageInfoNoteResponse2 spdxPackage;

  /// A note describing an SPDX File.
  final RelationshipNoteResponse2 spdxRelationship;

  /// The time this note was last updated. This field can be used as a filter in list requests.
  final String updateTime;

  /// A note describing a package vulnerability.
  final VulnerabilityResponse vulnerability;

  /// A note describing a vulnerability assessment.
  final VulnerabilityAssessmentNoteResponse3 vulnerabilityAssessment;

  GetNoteResult3({
    required this.attestationAuthority,
    required this.baseImage,
    required this.build,
    required this.createTime,
    required this.deployable,
    required this.discovery,
    required this.expirationTime,
    required this.intoto,
    required this.kind,
    required this.longDescription,
    required this.name,
    required this.package,
    required this.relatedNoteNames,
    required this.relatedUrl,
    required this.sbom,
    required this.sbomReference,
    required this.shortDescription,
    required this.spdxFile,
    required this.spdxPackage,
    required this.spdxRelationship,
    required this.updateTime,
    required this.vulnerability,
    required this.vulnerabilityAssessment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attestationAuthority'] = attestationAuthority.toMap();
    map['baseImage'] = baseImage.toMap();
    map['build'] = build.toMap();
    map['createTime'] = createTime;
    map['deployable'] = deployable.toMap();
    map['discovery'] = discovery.toMap();
    map['expirationTime'] = expirationTime;
    map['intoto'] = intoto.toMap();
    map['kind'] = kind;
    map['longDescription'] = longDescription;
    map['name'] = name;
    map['package'] = package.toMap();
    map['relatedNoteNames'] = relatedNoteNames;
    map['relatedUrl'] =
        Input.encodeList<RelatedUrlResponse3, Map<String, dynamic>>(
            relatedUrl, (value) => value.toMap());
    map['sbom'] = sbom.toMap();
    map['sbomReference'] = sbomReference.toMap();
    map['shortDescription'] = shortDescription;
    map['spdxFile'] = spdxFile.toMap();
    map['spdxPackage'] = spdxPackage.toMap();
    map['spdxRelationship'] = spdxRelationship.toMap();
    map['updateTime'] = updateTime;
    map['vulnerability'] = vulnerability.toMap();
    map['vulnerabilityAssessment'] = vulnerabilityAssessment.toMap();
    return map;
  }

  factory GetNoteResult3.fromMap(Map<String, dynamic> map) {
    return GetNoteResult3(
      attestationAuthority: AuthorityResponse.fromMap(
          (map['attestationAuthority'] as Map).cast<String, dynamic>()),
      baseImage: BasisResponse2.fromMap(
          (map['baseImage'] as Map).cast<String, dynamic>()),
      build:
          BuildResponse3.fromMap((map['build'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deployable: DeployableResponse2.fromMap(
          (map['deployable'] as Map).cast<String, dynamic>()),
      discovery: DiscoveryResponse2.fromMap(
          (map['discovery'] as Map).cast<String, dynamic>()),
      expirationTime: map['expirationTime'] as String,
      intoto: InTotoResponse.fromMap(
          (map['intoto'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      longDescription: map['longDescription'] as String,
      name: map['name'] as String,
      package: PackageResponse2.fromMap(
          (map['package'] as Map).cast<String, dynamic>()),
      relatedNoteNames: (map['relatedNoteNames'] as List).cast<String>(),
      relatedUrl: Input.decodeList<RelatedUrlResponse3>(
          map['relatedUrl'],
          (value) => RelatedUrlResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      sbom: DocumentNoteResponse2.fromMap(
          (map['sbom'] as Map).cast<String, dynamic>()),
      sbomReference: SBOMReferenceNoteResponse3.fromMap(
          (map['sbomReference'] as Map).cast<String, dynamic>()),
      shortDescription: map['shortDescription'] as String,
      spdxFile: FileNoteResponse2.fromMap(
          (map['spdxFile'] as Map).cast<String, dynamic>()),
      spdxPackage: PackageInfoNoteResponse2.fromMap(
          (map['spdxPackage'] as Map).cast<String, dynamic>()),
      spdxRelationship: RelationshipNoteResponse2.fromMap(
          (map['spdxRelationship'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      vulnerability: VulnerabilityResponse.fromMap(
          (map['vulnerability'] as Map).cast<String, dynamic>()),
      vulnerabilityAssessment: VulnerabilityAssessmentNoteResponse3.fromMap(
          (map['vulnerabilityAssessment'] as Map).cast<String, dynamic>()),
    );
  }
}
