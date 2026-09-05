// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_signing_profile_revocation_record.dart';
import 'get_signing_profile_signature_validity_period.dart';
import 'get_signing_profile_signing_material.dart';

/// Result data returned by getSigningProfile.
class GetSigningProfileResult {
  /// ARN for the signing profile.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// A human-readable name for the signing platform associated with the signing profile.
  final String? platformDisplayName;
  /// ID of the platform that is used by the target signing profile.
  final String? platformId;
  final String? region;
  /// Revocation information for a signing profile.
  final List<GetSigningProfileRevocationRecord>? revocationRecords;
  /// The validity period for a signing job.
  final List<GetSigningProfileSignatureValidityPeriod>? signatureValidityPeriods;
  /// AWS Certificate Manager certificate that will be used to sign code with the new signing profile.
  final List<GetSigningProfileSigningMaterial>? signingMaterials;
  /// Map of key-value pairs for signing.
  final Map<String, String>? signingParameters;
  /// Status of the target signing profile.
  final String? status;
  /// List of tags associated with the signing profile.
  final Map<String, String>? tags;
  /// Current version of the signing profile.
  final String? version;
  /// Signing profile ARN, including the profile version.
  final String? versionArn;

  /// Creates a new [GetSigningProfileResult].
  /// [arn] ARN for the signing profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [platformDisplayName] A human-readable name for the signing platform associated with the signing profile.
  /// [platformId] ID of the platform that is used by the target signing profile.
  /// [region] Optional.
  /// [revocationRecords] Revocation information for a signing profile.
  /// [signatureValidityPeriods] The validity period for a signing job.
  /// [signingMaterials] AWS Certificate Manager certificate that will be used to sign code with the new signing profile.
  /// [signingParameters] Map of key-value pairs for signing.
  /// [status] Status of the target signing profile.
  /// [tags] List of tags associated with the signing profile.
  /// [version] Current version of the signing profile.
  /// [versionArn] Signing profile ARN, including the profile version.
  const GetSigningProfileResult({
    this.arn,
    this.id,
    this.name,
    this.platformDisplayName,
    this.platformId,
    this.region,
    this.revocationRecords,
    this.signatureValidityPeriods,
    this.signingMaterials,
    this.signingParameters,
    this.status,
    this.tags,
    this.version,
    this.versionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'platformDisplayName': ?platformDisplayName,
      'platformId': ?platformId,
      'region': ?region,
      'revocationRecords': ?(() { final guardedValue = revocationRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSigningProfileRevocationRecord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'signatureValidityPeriods': ?(() { final guardedValue = signatureValidityPeriods; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSigningProfileSignatureValidityPeriod, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'signingMaterials': ?(() { final guardedValue = signingMaterials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSigningProfileSigningMaterial, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'signingParameters': ?signingParameters,
      'status': ?status,
      'tags': ?tags,
      'version': ?version,
      'versionArn': ?versionArn,
    };
  }

  factory GetSigningProfileResult.fromMap(Map<String, dynamic> map) {
    return GetSigningProfileResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformDisplayName: (() { final guardedValue = map['platformDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformId: (() { final guardedValue = map['platformId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revocationRecords: (() { final guardedValue = map['revocationRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSigningProfileRevocationRecord>(guardedValue, (value) => GetSigningProfileRevocationRecord.fromMap((value as Map).cast<String, dynamic>())); })(),
      signatureValidityPeriods: (() { final guardedValue = map['signatureValidityPeriods']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSigningProfileSignatureValidityPeriod>(guardedValue, (value) => GetSigningProfileSignatureValidityPeriod.fromMap((value as Map).cast<String, dynamic>())); })(),
      signingMaterials: (() { final guardedValue = map['signingMaterials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSigningProfileSigningMaterial>(guardedValue, (value) => GetSigningProfileSigningMaterial.fromMap((value as Map).cast<String, dynamic>())); })(),
      signingParameters: (() { final guardedValue = map['signingParameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionArn: (() { final guardedValue = map['versionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
