// ignore_for_file: unused_element, unnecessary_cast

import 'node_management_response_container_v1beta1.dart';
import 'shielded_instance_config_response_container_v1beta1.dart';
import 'upgrade_settings_response_container_v1beta1.dart';

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
class AutoprovisioningNodePoolDefaultsResponseContainerV1beta1 {
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

  /// NodeManagement configuration for this NodePool.
  final NodeManagementResponseContainerV1beta1 management;

  /// Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  final String minCpuPlatform;

  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final List<String> oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final String serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigResponseContainerV1beta1 shieldedInstanceConfig;

  /// Upgrade settings control disruption and speed of the upgrade.
  final UpgradeSettingsResponseContainerV1beta1 upgradeSettings;

  /// Creates a new [AutoprovisioningNodePoolDefaultsResponseContainerV1beta1].
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  /// [imageType] The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  /// [insecureKubeletReadonlyPortEnabled] Enable or disable Kubelet read only port.
  /// [management] NodeManagement configuration for this NodePool.
  /// [minCpuPlatform] Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  /// [oauthScopes] The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  AutoprovisioningNodePoolDefaultsResponseContainerV1beta1({
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
    return <String, dynamic>{
      'bootDiskKmsKey': bootDiskKmsKey,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'imageType': imageType,
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
      'management': management.toMap(),
      'minCpuPlatform': minCpuPlatform,
      'oauthScopes': oauthScopes,
      'serviceAccount': serviceAccount,
      'shieldedInstanceConfig': shieldedInstanceConfig.toMap(),
      'upgradeSettings': upgradeSettings.toMap(),
    };
  }

  factory AutoprovisioningNodePoolDefaultsResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoprovisioningNodePoolDefaultsResponseContainerV1beta1(
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      imageType: map['imageType'] as String,
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] as bool,
      management: NodeManagementResponseContainerV1beta1.fromMap(
        (map['management'] as Map).cast<String, dynamic>(),
      ),
      minCpuPlatform: map['minCpuPlatform'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      serviceAccount: map['serviceAccount'] as String,
      shieldedInstanceConfig:
          ShieldedInstanceConfigResponseContainerV1beta1.fromMap(
            (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
          ),
      upgradeSettings: UpgradeSettingsResponseContainerV1beta1.fromMap(
        (map['upgradeSettings'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
