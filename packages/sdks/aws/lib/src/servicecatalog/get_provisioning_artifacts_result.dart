// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioning_artifacts_provisioning_artifact_detail.dart';

/// Result data returned by getProvisioningArtifacts.
class GetProvisioningArtifactsResult {
  final String? acceptLanguage;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? productId;
  /// List with information about the provisioning artifacts. See details below.
  final List<GetProvisioningArtifactsProvisioningArtifactDetail>? provisioningArtifactDetails;
  final String? region;

  /// Creates a new [GetProvisioningArtifactsResult].
  /// [acceptLanguage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productId] Optional.
  /// [provisioningArtifactDetails] List with information about the provisioning artifacts. See details below.
  /// [region] Optional.
  const GetProvisioningArtifactsResult({
    this.acceptLanguage,
    this.id,
    this.productId,
    this.provisioningArtifactDetails,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'id': ?id,
      'productId': ?productId,
      'provisioningArtifactDetails': ?(() { final guardedValue = provisioningArtifactDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProvisioningArtifactsProvisioningArtifactDetail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetProvisioningArtifactsResult.fromMap(Map<String, dynamic> map) {
    return GetProvisioningArtifactsResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningArtifactDetails: (() { final guardedValue = map['provisioningArtifactDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProvisioningArtifactsProvisioningArtifactDetail>(guardedValue, (value) => GetProvisioningArtifactsProvisioningArtifactDetail.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
