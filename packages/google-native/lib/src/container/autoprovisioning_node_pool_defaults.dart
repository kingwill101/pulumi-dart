// ignore_for_file: unused_element, unnecessary_cast

import 'node_management.dart';
import 'shielded_instance_config.dart';
import 'upgrade_settings.dart';

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
class AutoprovisioningNodePoolDefaults {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String? bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final int? diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final String? diskType;

  /// The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final String? imageType;

  /// Enable or disable Kubelet read only port.
  final bool? insecureKubeletReadonlyPortEnabled;

  /// Specifies the node management options for NAP created node-pools.
  final NodeManagement? management;

  /// Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  final String? minCpuPlatform;

  /// Scopes that are used by NAP when creating node pools.
  final List<String>? oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final String? serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfig? shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  final UpgradeSettings? upgradeSettings;

  /// Creates a new [AutoprovisioningNodePoolDefaults].
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  /// [imageType] The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  /// [insecureKubeletReadonlyPortEnabled] Enable or disable Kubelet read only port.
  /// [management] Specifies the node management options for NAP created node-pools.
  /// [minCpuPlatform] Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  /// [oauthScopes] Scopes that are used by NAP when creating node pools.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [upgradeSettings] Specifies the upgrade settings for NAP created node pools
  AutoprovisioningNodePoolDefaults({
    this.bootDiskKmsKey,
    this.diskSizeGb,
    this.diskType,
    this.imageType,
    this.insecureKubeletReadonlyPortEnabled,
    this.management,
    this.minCpuPlatform,
    this.oauthScopes,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.upgradeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'imageType': ?imageType,
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'management': ?management == null ? null : management!.toMap(),
      'minCpuPlatform': ?minCpuPlatform,
      'oauthScopes': ?oauthScopes,
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?shieldedInstanceConfig == null
          ? null
          : shieldedInstanceConfig!.toMap(),
      'upgradeSettings': ?upgradeSettings == null
          ? null
          : upgradeSettings!.toMap(),
    };
  }

  factory AutoprovisioningNodePoolDefaults.fromMap(Map<String, dynamic> map) {
    return AutoprovisioningNodePoolDefaults(
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] == null
          ? null
          : map['insecureKubeletReadonlyPortEnabled'] as bool,
      management: map['management'] == null
          ? null
          : NodeManagement.fromMap(
              (map['management'] as Map).cast<String, dynamic>(),
            ),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      oauthScopes: map['oauthScopes'] == null
          ? null
          : (map['oauthScopes'] as List).cast<String>(),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : UpgradeSettings.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
