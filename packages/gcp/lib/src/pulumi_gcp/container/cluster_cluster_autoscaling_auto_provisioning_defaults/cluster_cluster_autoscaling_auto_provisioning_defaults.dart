// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_cluster_autoscaling_auto_provisioning_defaults_management/cluster_cluster_autoscaling_auto_provisioning_defaults_management.dart';
import '../cluster_cluster_autoscaling_auto_provisioning_defaults_shielded_instance_config/cluster_cluster_autoscaling_auto_provisioning_defaults_shielded_instance_config.dart';
import '../cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings/cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaults {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String? bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. Defaults to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>
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

  /// Scopes that are used by NAP and GKE Autopilot when creating node pools. Use the "https://www.googleapis.com/auth/cloud-platform" scope to grant access to all APIs. It is recommended that you set <span pulumi-lang-nodejs="`serviceAccount`" pulumi-lang-dotnet="`ServiceAccount`" pulumi-lang-go="`serviceAccount`" pulumi-lang-python="`service_account`" pulumi-lang-yaml="`serviceAccount`" pulumi-lang-java="`serviceAccount`">`service_account`</span> to a non-default service account and grant IAM roles to that service account for only the resources that it needs.
  ///
  /// > `monitoring.write` is always enabled regardless of user input.  <span pulumi-lang-nodejs="`monitoring`" pulumi-lang-dotnet="`Monitoring`" pulumi-lang-go="`monitoring`" pulumi-lang-python="`monitoring`" pulumi-lang-yaml="`monitoring`" pulumi-lang-java="`monitoring`">`monitoring`</span> and `logging.write` may also be enabled depending on the values for <span pulumi-lang-nodejs="`monitoringService`" pulumi-lang-dotnet="`MonitoringService`" pulumi-lang-go="`monitoringService`" pulumi-lang-python="`monitoring_service`" pulumi-lang-yaml="`monitoringService`" pulumi-lang-java="`monitoringService`">`monitoring_service`</span> and <span pulumi-lang-nodejs="`loggingService`" pulumi-lang-dotnet="`LoggingService`" pulumi-lang-go="`loggingService`" pulumi-lang-python="`logging_service`" pulumi-lang-yaml="`loggingService`" pulumi-lang-java="`loggingService`">`logging_service`</span>.
  final List<String>? oauthScopes;

  /// The <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span> of the Google Cloud Platform Service Account to be used by the node VMs created by GKE Autopilot or NAP.
  final String? serviceAccount;

  /// Shielded Instance options. Structure is documented below.
  final ClusterClusterAutoscalingAutoProvisioningDefaultsShieldedInstanceConfig?
      shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  final ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings?
      upgradeSettings;

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
    final map = <String, dynamic>{};
    final bootDiskKmsKeyValue = bootDiskKmsKey;
    if (bootDiskKmsKeyValue != null) {
      map['bootDiskKmsKey'] = bootDiskKmsKeyValue;
    }
    final diskSizeValue = diskSize;
    if (diskSizeValue != null) {
      map['diskSize'] = diskSizeValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
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

  factory ClusterClusterAutoscalingAutoProvisioningDefaults.fromMap(
      Map<String, dynamic> map) {
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
          : ClusterClusterAutoscalingAutoProvisioningDefaultsShieldedInstanceConfig
              .fromMap((map['shieldedInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      upgradeSettings: map['upgradeSettings'] == null
          ? null
          : ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings
              .fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
