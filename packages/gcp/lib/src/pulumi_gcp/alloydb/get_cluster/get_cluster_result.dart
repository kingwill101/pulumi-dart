// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_automated_backup_policy/get_cluster_automated_backup_policy.dart';
import '../get_cluster_backup_source/get_cluster_backup_source.dart';
import '../get_cluster_continuous_backup_config/get_cluster_continuous_backup_config.dart';
import '../get_cluster_continuous_backup_info/get_cluster_continuous_backup_info.dart';
import '../get_cluster_encryption_config/get_cluster_encryption_config.dart';
import '../get_cluster_encryption_info/get_cluster_encryption_info.dart';
import '../get_cluster_initial_user/get_cluster_initial_user.dart';
import '../get_cluster_maintenance_update_policy/get_cluster_maintenance_update_policy.dart';
import '../get_cluster_migration_source/get_cluster_migration_source.dart';
import '../get_cluster_network_config/get_cluster_network_config.dart';
import '../get_cluster_psc_config/get_cluster_psc_config.dart';
import '../get_cluster_restore_backup_source/get_cluster_restore_backup_source.dart';
import '../get_cluster_restore_continuous_backup_source/get_cluster_restore_continuous_backup_source.dart';
import '../get_cluster_secondary_config/get_cluster_secondary_config.dart';
import '../get_cluster_trial_metadata/get_cluster_trial_metadata.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final Map<String, String> annotations;
  final List<GetClusterAutomatedBackupPolicy> automatedBackupPolicies;
  final List<GetClusterBackupSource> backupSources;
  final String clusterId;
  final String clusterType;
  final List<GetClusterContinuousBackupConfig> continuousBackupConfigs;
  final List<GetClusterContinuousBackupInfo> continuousBackupInfos;
  final String databaseVersion;
  final String deletionPolicy;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final List<GetClusterEncryptionConfig> encryptionConfigs;
  final List<GetClusterEncryptionInfo> encryptionInfos;
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetClusterInitialUser> initialUsers;
  final Map<String, String> labels;
  final String? location;
  final List<GetClusterMaintenanceUpdatePolicy> maintenanceUpdatePolicies;
  final List<GetClusterMigrationSource> migrationSources;
  final String name;
  final List<GetClusterNetworkConfig> networkConfigs;
  final String? project;
  final List<GetClusterPscConfig> pscConfigs;
  final Map<String, String> pulumiLabels;
  final bool reconciling;
  final List<GetClusterRestoreBackupSource> restoreBackupSources;
  final List<GetClusterRestoreContinuousBackupSource>
      restoreContinuousBackupSources;
  final List<GetClusterSecondaryConfig> secondaryConfigs;
  final bool skipAwaitMajorVersionUpgrade;
  final String state;
  final String subscriptionType;
  final List<GetClusterTrialMetadata> trialMetadatas;
  final String uid;

  GetClusterResult({
    required this.annotations,
    required this.automatedBackupPolicies,
    required this.backupSources,
    required this.clusterId,
    required this.clusterType,
    required this.continuousBackupConfigs,
    required this.continuousBackupInfos,
    required this.databaseVersion,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.encryptionConfigs,
    required this.encryptionInfos,
    required this.etag,
    required this.id,
    required this.initialUsers,
    required this.labels,
    this.location,
    required this.maintenanceUpdatePolicies,
    required this.migrationSources,
    required this.name,
    required this.networkConfigs,
    this.project,
    required this.pscConfigs,
    required this.pulumiLabels,
    required this.reconciling,
    required this.restoreBackupSources,
    required this.restoreContinuousBackupSources,
    required this.secondaryConfigs,
    required this.skipAwaitMajorVersionUpgrade,
    required this.state,
    required this.subscriptionType,
    required this.trialMetadatas,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['automatedBackupPolicies'] =
        Input.encodeList<GetClusterAutomatedBackupPolicy, Map<String, dynamic>>(
            automatedBackupPolicies, (value) => value.toMap());
    map['backupSources'] =
        Input.encodeList<GetClusterBackupSource, Map<String, dynamic>>(
            backupSources, (value) => value.toMap());
    map['clusterId'] = clusterId;
    map['clusterType'] = clusterType;
    map['continuousBackupConfigs'] = Input.encodeList<
            GetClusterContinuousBackupConfig, Map<String, dynamic>>(
        continuousBackupConfigs, (value) => value.toMap());
    map['continuousBackupInfos'] =
        Input.encodeList<GetClusterContinuousBackupInfo, Map<String, dynamic>>(
            continuousBackupInfos, (value) => value.toMap());
    map['databaseVersion'] = databaseVersion;
    map['deletionPolicy'] = deletionPolicy;
    map['deletionProtection'] = deletionProtection;
    map['displayName'] = displayName;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['encryptionConfigs'] =
        Input.encodeList<GetClusterEncryptionConfig, Map<String, dynamic>>(
            encryptionConfigs, (value) => value.toMap());
    map['encryptionInfos'] =
        Input.encodeList<GetClusterEncryptionInfo, Map<String, dynamic>>(
            encryptionInfos, (value) => value.toMap());
    map['etag'] = etag;
    map['id'] = id;
    map['initialUsers'] =
        Input.encodeList<GetClusterInitialUser, Map<String, dynamic>>(
            initialUsers, (value) => value.toMap());
    map['labels'] = labels;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['maintenanceUpdatePolicies'] = Input.encodeList<
            GetClusterMaintenanceUpdatePolicy, Map<String, dynamic>>(
        maintenanceUpdatePolicies, (value) => value.toMap());
    map['migrationSources'] =
        Input.encodeList<GetClusterMigrationSource, Map<String, dynamic>>(
            migrationSources, (value) => value.toMap());
    map['name'] = name;
    map['networkConfigs'] =
        Input.encodeList<GetClusterNetworkConfig, Map<String, dynamic>>(
            networkConfigs, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscConfigs'] =
        Input.encodeList<GetClusterPscConfig, Map<String, dynamic>>(
            pscConfigs, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    map['reconciling'] = reconciling;
    map['restoreBackupSources'] =
        Input.encodeList<GetClusterRestoreBackupSource, Map<String, dynamic>>(
            restoreBackupSources, (value) => value.toMap());
    map['restoreContinuousBackupSources'] = Input.encodeList<
            GetClusterRestoreContinuousBackupSource, Map<String, dynamic>>(
        restoreContinuousBackupSources, (value) => value.toMap());
    map['secondaryConfigs'] =
        Input.encodeList<GetClusterSecondaryConfig, Map<String, dynamic>>(
            secondaryConfigs, (value) => value.toMap());
    map['skipAwaitMajorVersionUpgrade'] = skipAwaitMajorVersionUpgrade;
    map['state'] = state;
    map['subscriptionType'] = subscriptionType;
    map['trialMetadatas'] =
        Input.encodeList<GetClusterTrialMetadata, Map<String, dynamic>>(
            trialMetadatas, (value) => value.toMap());
    map['uid'] = uid;
    return map;
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      automatedBackupPolicies:
          Input.decodeList<GetClusterAutomatedBackupPolicy>(
              map['automatedBackupPolicies'],
              (value) => GetClusterAutomatedBackupPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      backupSources: Input.decodeList<GetClusterBackupSource>(
          map['backupSources'],
          (value) => GetClusterBackupSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      clusterType: map['clusterType'] as String,
      continuousBackupConfigs:
          Input.decodeList<GetClusterContinuousBackupConfig>(
              map['continuousBackupConfigs'],
              (value) => GetClusterContinuousBackupConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      continuousBackupInfos: Input.decodeList<GetClusterContinuousBackupInfo>(
          map['continuousBackupInfos'],
          (value) => GetClusterContinuousBackupInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      databaseVersion: map['databaseVersion'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      encryptionConfigs: Input.decodeList<GetClusterEncryptionConfig>(
          map['encryptionConfigs'],
          (value) => GetClusterEncryptionConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      encryptionInfos: Input.decodeList<GetClusterEncryptionInfo>(
          map['encryptionInfos'],
          (value) => GetClusterEncryptionInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      initialUsers: Input.decodeList<GetClusterInitialUser>(
          map['initialUsers'],
          (value) => GetClusterInitialUser.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceUpdatePolicies:
          Input.decodeList<GetClusterMaintenanceUpdatePolicy>(
              map['maintenanceUpdatePolicies'],
              (value) => GetClusterMaintenanceUpdatePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      migrationSources: Input.decodeList<GetClusterMigrationSource>(
          map['migrationSources'],
          (value) => GetClusterMigrationSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkConfigs: Input.decodeList<GetClusterNetworkConfig>(
          map['networkConfigs'],
          (value) => GetClusterNetworkConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      pscConfigs: Input.decodeList<GetClusterPscConfig>(
          map['pscConfigs'],
          (value) => GetClusterPscConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reconciling: map['reconciling'] as bool,
      restoreBackupSources: Input.decodeList<GetClusterRestoreBackupSource>(
          map['restoreBackupSources'],
          (value) => GetClusterRestoreBackupSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      restoreContinuousBackupSources:
          Input.decodeList<GetClusterRestoreContinuousBackupSource>(
              map['restoreContinuousBackupSources'],
              (value) => GetClusterRestoreContinuousBackupSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secondaryConfigs: Input.decodeList<GetClusterSecondaryConfig>(
          map['secondaryConfigs'],
          (value) => GetClusterSecondaryConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      skipAwaitMajorVersionUpgrade: map['skipAwaitMajorVersionUpgrade'] as bool,
      state: map['state'] as String,
      subscriptionType: map['subscriptionType'] as String,
      trialMetadatas: Input.decodeList<GetClusterTrialMetadata>(
          map['trialMetadatas'],
          (value) => GetClusterTrialMetadata.fromMap(
              (value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
    );
  }
}
