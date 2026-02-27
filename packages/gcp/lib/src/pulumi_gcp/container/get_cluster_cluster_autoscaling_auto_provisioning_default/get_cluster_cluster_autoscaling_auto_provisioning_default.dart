// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_cluster_autoscaling_auto_provisioning_default_management/get_cluster_cluster_autoscaling_auto_provisioning_default_management.dart';
import '../get_cluster_cluster_autoscaling_auto_provisioning_default_shielded_instance_config/get_cluster_cluster_autoscaling_auto_provisioning_default_shielded_instance_config.dart';
import '../get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting/get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting.dart';

class GetClusterClusterAutoscalingAutoProvisioningDefault {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final String bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int diskSize;

  /// Type of the disk attached to each node.
  final String diskType;

  /// The default image type used by NAP once a new node pool is being created.
  final String imageType;

  /// NodeManagement configuration for this NodePool.
  final List<GetClusterClusterAutoscalingAutoProvisioningDefaultManagement>
      managements;

  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell.
  final String minCpuPlatform;

  /// Scopes that are used by NAP when creating node pools.
  final List<String> oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final String serviceAccount;

  /// Shielded Instance options.
  final List<
          GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig>
      shieldedInstanceConfigs;

  /// Specifies the upgrade settings for NAP created node pools
  final List<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting>
      upgradeSettings;

  GetClusterClusterAutoscalingAutoProvisioningDefault({
    required this.bootDiskKmsKey,
    required this.diskSize,
    required this.diskType,
    required this.imageType,
    required this.managements,
    required this.minCpuPlatform,
    required this.oauthScopes,
    required this.serviceAccount,
    required this.shieldedInstanceConfigs,
    required this.upgradeSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bootDiskKmsKey'] = bootDiskKmsKey;
    map['diskSize'] = diskSize;
    map['diskType'] = diskType;
    map['imageType'] = imageType;
    map['managements'] = pulumi.Input.encodeList<
        GetClusterClusterAutoscalingAutoProvisioningDefaultManagement,
        Map<String, dynamic>>(managements, (value) => value.toMap());
    map['minCpuPlatform'] = minCpuPlatform;
    map['oauthScopes'] = oauthScopes;
    map['serviceAccount'] = serviceAccount;
    map['shieldedInstanceConfigs'] = pulumi.Input.encodeList<
        GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig,
        Map<String,
            dynamic>>(shieldedInstanceConfigs, (value) => value.toMap());
    map['upgradeSettings'] = pulumi.Input.encodeList<
        GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting,
        Map<String, dynamic>>(upgradeSettings, (value) => value.toMap());
    return map;
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefault.fromMap(
      Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefault(
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      diskSize: map['diskSize'] as int,
      diskType: map['diskType'] as String,
      imageType: map['imageType'] as String,
      managements: pulumi.Input.decodeList<
              GetClusterClusterAutoscalingAutoProvisioningDefaultManagement>(
          map['managements'],
          (value) =>
              GetClusterClusterAutoscalingAutoProvisioningDefaultManagement
                  .fromMap((value as Map).cast<String, dynamic>())),
      minCpuPlatform: map['minCpuPlatform'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      serviceAccount: map['serviceAccount'] as String,
      shieldedInstanceConfigs: pulumi.Input.decodeList<
              GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig>(
          map['shieldedInstanceConfigs'],
          (value) =>
              GetClusterClusterAutoscalingAutoProvisioningDefaultShieldedInstanceConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      upgradeSettings: pulumi.Input.decodeList<
              GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting>(
          map['upgradeSettings'],
          (value) =>
              GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
