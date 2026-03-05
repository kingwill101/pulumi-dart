// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_provisioning_artifacts_provisioning_artifact_detail.dart';

/// Result data returned by getProvisioningArtifacts.
class GetProvisioningArtifactsResult {
  final String? acceptLanguage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String productId;
  /// List with information about the provisioning artifacts. See details below.
  final List<GetProvisioningArtifactsProvisioningArtifactDetail> provisioningArtifactDetails;
  final String region;

  /// Creates a new [GetProvisioningArtifactsResult].
  /// [acceptLanguage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [productId] Required.
  /// [provisioningArtifactDetails] List with information about the provisioning artifacts. See details below.
  /// [region] Required.
  GetProvisioningArtifactsResult({
    this.acceptLanguage,
    required this.id,
    required this.productId,
    required this.provisioningArtifactDetails,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'id': id,
      'productId': productId,
      'provisioningArtifactDetails': pulumi.Input.encodeList<GetProvisioningArtifactsProvisioningArtifactDetail, Map<String, dynamic>>(provisioningArtifactDetails, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetProvisioningArtifactsResult.fromMap(Map<String, dynamic> map) {
    return GetProvisioningArtifactsResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      productId: map['productId'] as String,
      provisioningArtifactDetails: pulumi.Input.decodeList<GetProvisioningArtifactsProvisioningArtifactDetail>(map['provisioningArtifactDetails']!, (value) => GetProvisioningArtifactsProvisioningArtifactDetail.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

