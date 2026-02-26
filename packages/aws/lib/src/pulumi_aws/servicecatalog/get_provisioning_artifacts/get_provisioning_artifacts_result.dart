// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_provisioning_artifacts_provisioning_artifact_detail/get_provisioning_artifacts_provisioning_artifact_detail.dart';

/// Result data returned by getProvisioningArtifacts.
class GetProvisioningArtifactsResult {
  final String? acceptLanguage;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String productId;

  /// List with information about the provisioning artifacts. See details below.
  final List<GetProvisioningArtifactsProvisioningArtifactDetail>
      provisioningArtifactDetails;
  final String region;

  GetProvisioningArtifactsResult({
    this.acceptLanguage,
    required this.id,
    required this.productId,
    required this.provisioningArtifactDetails,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['id'] = id;
    map['productId'] = productId;
    map['provisioningArtifactDetails'] = Input.encodeList<
            GetProvisioningArtifactsProvisioningArtifactDetail,
            Map<String, dynamic>>(
        provisioningArtifactDetails, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetProvisioningArtifactsResult.fromMap(Map<String, dynamic> map) {
    return GetProvisioningArtifactsResult(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      id: map['id'] as String,
      productId: map['productId'] as String,
      provisioningArtifactDetails:
          Input.decodeList<GetProvisioningArtifactsProvisioningArtifactDetail>(
              map['provisioningArtifactDetails'],
              (value) =>
                  GetProvisioningArtifactsProvisioningArtifactDetail.fromMap(
                      (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
