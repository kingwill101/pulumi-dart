// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_status_response.dart';
import 'provisioned_clusters_common_properties_response_features_status.dart';
import 'provisioned_clusters_common_properties_response_provisioning_status.dart';

/// HybridAKSClusterStatus defines the observed state of HybridAKSCluster
class ProvisionedClustersCommonPropertiesResponseStatus {
  /// AddonStatus - Status of Addons
  final Map<String, AddonStatusResponse>? addonStatus;
  /// ErrorMessage - Error messages during creation of cluster
  final String? errorMessage;
  /// Additional features status like Arc Agent Onboarding.
  final ProvisionedClustersCommonPropertiesResponseFeaturesStatus? featuresStatus;
  /// Contains Provisioning errors
  final ProvisionedClustersCommonPropertiesResponseProvisioningStatus? provisioningStatus;

  /// Creates a new [ProvisionedClustersCommonPropertiesResponseStatus].
  /// [addonStatus] AddonStatus - Status of Addons
  /// [errorMessage] ErrorMessage - Error messages during creation of cluster
  /// [featuresStatus] Additional features status like Arc Agent Onboarding.
  /// [provisioningStatus] Contains Provisioning errors
  ProvisionedClustersCommonPropertiesResponseStatus({
    this.addonStatus,
    this.errorMessage,
    this.featuresStatus,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonStatus': ?addonStatus == null ? null : pulumi.Input.encodeMapValues<AddonStatusResponse, Map<String, dynamic>>(addonStatus!, (value) => value.toMap()),
      'errorMessage': ?errorMessage,
      'featuresStatus': ?featuresStatus == null ? null : featuresStatus!.toMap(),
      'provisioningStatus': ?provisioningStatus == null ? null : provisioningStatus!.toMap(),
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseStatus(
      addonStatus: map['addonStatus'] == null ? null : pulumi.Input.decodeMapValues<AddonStatusResponse>(map['addonStatus'], (value) => AddonStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      featuresStatus: map['featuresStatus'] == null ? null : ProvisionedClustersCommonPropertiesResponseFeaturesStatus.fromMap((map['featuresStatus'] as Map).cast<String, dynamic>()),
      provisioningStatus: map['provisioningStatus'] == null ? null : ProvisionedClustersCommonPropertiesResponseProvisioningStatus.fromMap((map['provisioningStatus'] as Map).cast<String, dynamic>()),
    );
  }
}

