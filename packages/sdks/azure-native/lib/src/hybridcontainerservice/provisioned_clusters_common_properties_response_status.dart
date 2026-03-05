// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_status_response.dart';
import 'provisioned_clusters_common_properties_response_features_status.dart';
import 'provisioned_clusters_common_properties_response_provisioning_status.dart';

/// HybridAKSClusterStatus defines the observed state of HybridAKSCluster
class ProvisionedClustersCommonPropertiesResponseStatus {
  /// AddonStatus - Status of Addons
  final pulumi.Input<Map<String, AddonStatusResponse>>? addonStatus;
  /// ErrorMessage - Error messages during creation of cluster
  final pulumi.Input<String>? errorMessage;
  /// Additional features status like Arc Agent Onboarding.
  final pulumi.Input<ProvisionedClustersCommonPropertiesResponseFeaturesStatus>? featuresStatus;
  /// Contains Provisioning errors
  final pulumi.Input<ProvisionedClustersCommonPropertiesResponseProvisioningStatus>? provisioningStatus;

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
      'addonStatus': ?pulumi.Input.mapOptionalInputValue<Map<String, AddonStatusResponse>, Map<String, Map<String, dynamic>>>(addonStatus, (value) => pulumi.Input.encodeMapValues<AddonStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorMessage': ?errorMessage,
      'featuresStatus': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersCommonPropertiesResponseFeaturesStatus, Map<String, dynamic>>(featuresStatus, (value) => value.toMap()),
      'provisioningStatus': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersCommonPropertiesResponseProvisioningStatus, Map<String, dynamic>>(provisioningStatus, (value) => value.toMap()),
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseStatus.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseStatus(
      addonStatus: (() { final guardedValue = map['addonStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<AddonStatusResponse>(guardedValue, (value) => AddonStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featuresStatus: (() { final guardedValue = map['featuresStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClustersCommonPropertiesResponseFeaturesStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningStatus: (() { final guardedValue = map['provisioningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClustersCommonPropertiesResponseProvisioningStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

