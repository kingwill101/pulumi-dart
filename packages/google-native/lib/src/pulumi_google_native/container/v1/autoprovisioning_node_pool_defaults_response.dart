// ignore_for_file: unused_element, unnecessary_cast

import 'node_management_response.dart';
import 'shielded_instance_config_response_container_v1.dart';
import 'upgrade_settings_response.dart';

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
class AutoprovisioningNodePoolDefaultsResponse {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final int diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final String diskType;

  /// The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final String imageType;

  /// Enable or disable Kubelet read only port.
  final bool insecureKubeletReadonlyPortEnabled;

  /// Specifies the node management options for NAP created node-pools.
  final NodeManagementResponse management;

  /// Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  final String minCpuPlatform;

  /// Scopes that are used by NAP when creating node pools.
  final List<String> oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final String serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigResponseContainerV1 shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  final UpgradeSettingsResponse upgradeSettings;

  AutoprovisioningNodePoolDefaultsResponse({
    required this.bootDiskKmsKey,
    required this.diskSizeGb,
    required this.diskType,
    required this.imageType,
    required this.insecureKubeletReadonlyPortEnabled,
    required this.management,
    required this.minCpuPlatform,
    required this.oauthScopes,
    required this.serviceAccount,
    required this.shieldedInstanceConfig,
    required this.upgradeSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bootDiskKmsKey'] = bootDiskKmsKey;
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['imageType'] = imageType;
    map['insecureKubeletReadonlyPortEnabled'] =
        insecureKubeletReadonlyPortEnabled;
    map['management'] = management.toMap();
    map['minCpuPlatform'] = minCpuPlatform;
    map['oauthScopes'] = oauthScopes;
    map['serviceAccount'] = serviceAccount;
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['upgradeSettings'] = upgradeSettings.toMap();
    return map;
  }

  factory AutoprovisioningNodePoolDefaultsResponse.fromMap(
      Map<String, dynamic> map) {
    return AutoprovisioningNodePoolDefaultsResponse(
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      imageType: map['imageType'] as String,
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] as bool,
      management: NodeManagementResponse.fromMap(
          (map['management'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      serviceAccount: map['serviceAccount'] as String,
      shieldedInstanceConfig: ShieldedInstanceConfigResponseContainerV1.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      upgradeSettings: UpgradeSettingsResponse.fromMap(
          (map['upgradeSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
