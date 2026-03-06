// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_profile_revocation_record.dart';
import 'get_signing_profile_signature_validity_period.dart';
import 'get_signing_profile_signing_material.dart';

/// Result data returned by getSigningProfile.
class GetSigningProfileResult {
  /// ARN for the signing profile.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// A human-readable name for the signing platform associated with the signing profile.
  final String platformDisplayName;
  /// ID of the platform that is used by the target signing profile.
  final String platformId;
  final String region;
  /// Revocation information for a signing profile.
  final List<GetSigningProfileRevocationRecord> revocationRecords;
  /// The validity period for a signing job.
  final List<GetSigningProfileSignatureValidityPeriod> signatureValidityPeriods;
  /// AWS Certificate Manager certificate that will be used to sign code with the new signing profile.
  final List<GetSigningProfileSigningMaterial> signingMaterials;
  /// Map of key-value pairs for signing.
  final Map<String, String> signingParameters;
  /// Status of the target signing profile.
  final String status;
  /// List of tags associated with the signing profile.
  final Map<String, String> tags;
  /// Current version of the signing profile.
  final String version;
  /// Signing profile ARN, including the profile version.
  final String versionArn;

  /// Creates a new [GetSigningProfileResult].
  /// [arn] ARN for the signing profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [platformDisplayName] A human-readable name for the signing platform associated with the signing profile.
  /// [platformId] ID of the platform that is used by the target signing profile.
  /// [region] Required.
  /// [revocationRecords] Revocation information for a signing profile.
  /// [signatureValidityPeriods] The validity period for a signing job.
  /// [signingMaterials] AWS Certificate Manager certificate that will be used to sign code with the new signing profile.
  /// [signingParameters] Map of key-value pairs for signing.
  /// [status] Status of the target signing profile.
  /// [tags] List of tags associated with the signing profile.
  /// [version] Current version of the signing profile.
  /// [versionArn] Signing profile ARN, including the profile version.
  const GetSigningProfileResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.platformDisplayName,
    required this.platformId,
    required this.region,
    required this.revocationRecords,
    required this.signatureValidityPeriods,
    required this.signingMaterials,
    required this.signingParameters,
    required this.status,
    required this.tags,
    required this.version,
    required this.versionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'platformDisplayName': platformDisplayName,
      'platformId': platformId,
      'region': region,
      'revocationRecords': pulumi.Input.encodeList<GetSigningProfileRevocationRecord, Map<String, dynamic>>(revocationRecords, (value) => value.toMap()),
      'signatureValidityPeriods': pulumi.Input.encodeList<GetSigningProfileSignatureValidityPeriod, Map<String, dynamic>>(signatureValidityPeriods, (value) => value.toMap()),
      'signingMaterials': pulumi.Input.encodeList<GetSigningProfileSigningMaterial, Map<String, dynamic>>(signingMaterials, (value) => value.toMap()),
      'signingParameters': signingParameters,
      'status': status,
      'tags': tags,
      'version': version,
      'versionArn': versionArn,
    };
  }

  factory GetSigningProfileResult.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      platformDisplayName: map['platformDisplayName'] as String,
      platformId: map['platformId'] as String,
      region: map['region'] as String,
      revocationRecords: pulumi.Input.decodeList<GetSigningProfileRevocationRecord>(map['revocationRecords']!, (value) => GetSigningProfileRevocationRecord.fromMap((value as Map).cast<String, dynamic>())),
      signatureValidityPeriods: pulumi.Input.decodeList<GetSigningProfileSignatureValidityPeriod>(map['signatureValidityPeriods']!, (value) => GetSigningProfileSignatureValidityPeriod.fromMap((value as Map).cast<String, dynamic>())),
      signingMaterials: pulumi.Input.decodeList<GetSigningProfileSigningMaterial>(map['signingMaterials']!, (value) => GetSigningProfileSigningMaterial.fromMap((value as Map).cast<String, dynamic>())),
      signingParameters: (map['signingParameters'] as Map).cast<String, String>(),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      versionArn: map['versionArn'] as String,
    );
  }
}

