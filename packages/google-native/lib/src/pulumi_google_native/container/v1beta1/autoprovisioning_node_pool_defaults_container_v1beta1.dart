// ignore_for_file: unused_element, unnecessary_cast

import 'node_management_container_v1beta1.dart';
import 'shielded_instance_config_container_v1beta1.dart';
import 'upgrade_settings_container_v1beta1.dart';

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
class AutoprovisioningNodePoolDefaultsContainerV1beta1 {
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

  /// NodeManagement configuration for this NodePool.
  final NodeManagementContainerV1beta1? management;

  /// Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  final String? minCpuPlatform;

  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final List<String>? oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final String? serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigContainerV1beta1? shieldedInstanceConfig;

  /// Upgrade settings control disruption and speed of the upgrade.
  final UpgradeSettingsContainerV1beta1? upgradeSettings;

  AutoprovisioningNodePoolDefaultsContainerV1beta1({
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
    final map = <String, dynamic>{};
    final bootDiskKmsKeyValue = bootDiskKmsKey;
    if (bootDiskKmsKeyValue != null) {
      map['bootDiskKmsKey'] = bootDiskKmsKeyValue;
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
    }
    final insecureKubeletReadonlyPortEnabledValue =
        insecureKubeletReadonlyPortEnabled;
    if (insecureKubeletReadonlyPortEnabledValue != null) {
      map['insecureKubeletReadonlyPortEnabled'] =
          insecureKubeletReadonlyPortEnabledValue;
    }
    final managementValue = management;
    if (managementValue != null) {
      map['management'] = managementValue.toMap();
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final oauthScopesValue = oauthScopes;
    if (oauthScopesValue != null) {
      map['oauthScopes'] = oauthScopesValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final upgradeSettingsValue = upgradeSettings;
    if (upgradeSettingsValue != null) {
      map['upgradeSettings'] = upgradeSettingsValue.toMap();
    }
    return map;
  }

  factory AutoprovisioningNodePoolDefaultsContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AutoprovisioningNodePoolDefaultsContainerV1beta1(
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
          : NodeManagementContainerV1beta1.fromMap(
              (map['management'] as Map).cast<String, dynamic>()),
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
          : ShieldedInstanceConfigContainerV1beta1.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : UpgradeSettingsContainerV1beta1.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
