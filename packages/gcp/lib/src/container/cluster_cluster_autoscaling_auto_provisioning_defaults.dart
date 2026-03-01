// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_cluster_autoscaling_auto_provisioning_defaults_management.dart';
import 'cluster_cluster_autoscaling_auto_provisioning_defaults_shielded_instance_config.dart';
import 'cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaults {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String? bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. Defaults to `100`
  final int? diskSize;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd', 'pd-balanced', or 'hyperdisk-balanced'). Defaults to `hyperdisk-balanced` if `hyperdisk-balanced` is supported and `pd-balanced` is not supported for the machine type; otherwise defaults to `pd-balanced`.
  final String? diskType;

  /// The default image type used by NAP once a new node pool is being created. Please note that according to the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning#default-image-type) the value must be one of the [COS_CONTAINERD, COS, UBUNTU_CONTAINERD, UBUNTU]. __NOTE__ : COS AND UBUNTU are deprecated as of `GKE 1.24`
  final String? imageType;

  /// NodeManagement configuration for this NodePool. Structure is documented below.
  final ClusterClusterAutoscalingAutoProvisioningDefaultsManagement? management;

  /// Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the
  /// specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such
  /// as "Intel Haswell" or "Intel Sandy Bridge".
  final String? minCpuPlatform;

  /// Scopes that are used by NAP and GKE Autopilot when creating node pools. Use the "https://www.googleapis.com/auth/cloud-platform" scope to grant access to all APIs. It is recommended that you set `service_account` to a non-default service account and grant IAM roles to that service account for only the resources that it needs.
  ///
  /// > `monitoring.write` is always enabled regardless of user input.  `monitoring` and `logging.write` may also be enabled depending on the values for `monitoring_service` and `logging_service`.
  final List<String>? oauthScopes;

  /// The `email` of the Google Cloud Platform Service Account to be used by the node VMs created by GKE Autopilot or NAP.
  final String? serviceAccount;

  /// Shielded Instance options. Structure is documented below.
  final ClusterClusterAutoscalingAutoProvisioningDefaultsShieldedInstanceConfig?
  shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  final ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings?
  upgradeSettings;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaults].
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [diskSize] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. Defaults to `100`
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd', 'pd-balanced', or 'hyperdisk-balanced'). Defaults to `hyperdisk-balanced` if `hyperdisk-balanced` is supported and `pd-balanced` is not supported for the machine type; otherwise defaults to `pd-balanced`.
  /// [imageType] The default image type used by NAP once a new node pool is being created. Please note that according to the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning#default-image-type) the value must be one of the [COS_CONTAINERD, COS, UBUNTU_CONTAINERD, UBUNTU]. __NOTE__ : COS AND UBUNTU are deprecated as of `GKE 1.24`
  /// [management] NodeManagement configuration for this NodePool. Structure is documented below.
  /// [minCpuPlatform] Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the
  /// [oauthScopes] Scopes that are used by NAP and GKE Autopilot when creating node pools. Use the "https://www.googleapis.com/auth/cloud-platform" scope to grant access to all APIs. It is recommended that you set `service_account` to a non-default service account and grant IAM roles to that service account for only the resources that it needs.
  /// [serviceAccount] The `email` of the Google Cloud Platform Service Account to be used by the node VMs created by GKE Autopilot or NAP.
  /// [shieldedInstanceConfig] Shielded Instance options. Structure is documented below.
  /// [upgradeSettings] Specifies the upgrade settings for NAP created node pools
  ClusterClusterAutoscalingAutoProvisioningDefaults({
    this.bootDiskKmsKey,
    this.diskSize,
    this.diskType,
    this.imageType,
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
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'imageType': ?imageType,
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

  factory ClusterClusterAutoscalingAutoProvisioningDefaults.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterAutoscalingAutoProvisioningDefaults(
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      diskSize: map['diskSize'] == null ? null : map['diskSize'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      management: map['management'] == null
          ? null
          : ClusterClusterAutoscalingAutoProvisioningDefaultsManagement.fromMap(
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
          : ClusterClusterAutoscalingAutoProvisioningDefaultsShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings.fromMap(
              (map['upgradeSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
