// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_automated_backup_config/get_cluster_automated_backup_config.dart';
import '../get_cluster_cross_cluster_replication_config/get_cluster_cross_cluster_replication_config.dart';
import '../get_cluster_discovery_endpoint/get_cluster_discovery_endpoint.dart';
import '../get_cluster_gcs_source/get_cluster_gcs_source.dart';
import '../get_cluster_maintenance_policy/get_cluster_maintenance_policy_redis.dart';
import '../get_cluster_maintenance_schedule/get_cluster_maintenance_schedule.dart';
import '../get_cluster_managed_backup_source/get_cluster_managed_backup_source.dart';
import '../get_cluster_managed_server_ca/get_cluster_managed_server_ca.dart';
import '../get_cluster_persistence_config/get_cluster_persistence_config.dart';
import '../get_cluster_psc_config/get_cluster_psc_config_redis.dart';
import '../get_cluster_psc_connection/get_cluster_psc_connection.dart';
import '../get_cluster_psc_service_attachment/get_cluster_psc_service_attachment.dart';
import '../get_cluster_state_info/get_cluster_state_info.dart';
import '../get_cluster_zone_distribution_config/get_cluster_zone_distribution_config.dart';

/// Result data returned by getCluster.
class GetClusterRedisResult {
  final String authorizationMode;
  final List<GetClusterAutomatedBackupConfig> automatedBackupConfigs;
  final List<String> availableMaintenanceVersions;
  final String backupCollection;
  final String createTime;
  final List<GetClusterCrossClusterReplicationConfig>
      crossClusterReplicationConfigs;
  final bool deletionProtectionEnabled;
  final List<GetClusterDiscoveryEndpoint> discoveryEndpoints;
  final Map<String, String> effectiveLabels;
  final String effectiveMaintenanceVersion;
  final List<GetClusterGcsSource> gcsSources;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKey;
  final Map<String, String> labels;
  final List<GetClusterMaintenancePolicyRedis> maintenancePolicies;
  final List<GetClusterMaintenanceSchedule> maintenanceSchedules;
  final String maintenanceVersion;
  final List<GetClusterManagedBackupSource> managedBackupSources;
  final List<GetClusterManagedServerCa> managedServerCas;
  final String name;
  final String nodeType;
  final List<GetClusterPersistenceConfig> persistenceConfigs;
  final double preciseSizeGb;
  final String? project;
  final List<GetClusterPscConfigRedis> pscConfigs;
  final List<GetClusterPscConnection> pscConnections;
  final List<GetClusterPscServiceAttachment> pscServiceAttachments;
  final Map<String, String> pulumiLabels;
  final Map<String, String> redisConfigs;
  final String? region;
  final int replicaCount;
  final int shardCount;
  final int sizeGb;
  final String state;
  final List<GetClusterStateInfo> stateInfos;
  final String transitEncryptionMode;
  final String uid;
  final List<GetClusterZoneDistributionConfig> zoneDistributionConfigs;

  GetClusterRedisResult({
    required this.authorizationMode,
    required this.automatedBackupConfigs,
    required this.availableMaintenanceVersions,
    required this.backupCollection,
    required this.createTime,
    required this.crossClusterReplicationConfigs,
    required this.deletionProtectionEnabled,
    required this.discoveryEndpoints,
    required this.effectiveLabels,
    required this.effectiveMaintenanceVersion,
    required this.gcsSources,
    required this.id,
    required this.kmsKey,
    required this.labels,
    required this.maintenancePolicies,
    required this.maintenanceSchedules,
    required this.maintenanceVersion,
    required this.managedBackupSources,
    required this.managedServerCas,
    required this.name,
    required this.nodeType,
    required this.persistenceConfigs,
    required this.preciseSizeGb,
    this.project,
    required this.pscConfigs,
    required this.pscConnections,
    required this.pscServiceAttachments,
    required this.pulumiLabels,
    required this.redisConfigs,
    this.region,
    required this.replicaCount,
    required this.shardCount,
    required this.sizeGb,
    required this.state,
    required this.stateInfos,
    required this.transitEncryptionMode,
    required this.uid,
    required this.zoneDistributionConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationMode'] = authorizationMode;
    map['automatedBackupConfigs'] = pulumi.Input.encodeList<
        GetClusterAutomatedBackupConfig,
        Map<String, dynamic>>(automatedBackupConfigs, (value) => value.toMap());
    map['availableMaintenanceVersions'] = availableMaintenanceVersions;
    map['backupCollection'] = backupCollection;
    map['createTime'] = createTime;
    map['crossClusterReplicationConfigs'] = pulumi.Input.encodeList<
            GetClusterCrossClusterReplicationConfig, Map<String, dynamic>>(
        crossClusterReplicationConfigs, (value) => value.toMap());
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['discoveryEndpoints'] = pulumi.Input.encodeList<
        GetClusterDiscoveryEndpoint,
        Map<String, dynamic>>(discoveryEndpoints, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['effectiveMaintenanceVersion'] = effectiveMaintenanceVersion;
    map['gcsSources'] =
        pulumi.Input.encodeList<GetClusterGcsSource, Map<String, dynamic>>(
            gcsSources, (value) => value.toMap());
    map['id'] = id;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['maintenancePolicies'] = pulumi.Input.encodeList<
        GetClusterMaintenancePolicyRedis,
        Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap());
    map['maintenanceSchedules'] = pulumi.Input.encodeList<
        GetClusterMaintenanceSchedule,
        Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap());
    map['maintenanceVersion'] = maintenanceVersion;
    map['managedBackupSources'] = pulumi.Input.encodeList<
        GetClusterManagedBackupSource,
        Map<String, dynamic>>(managedBackupSources, (value) => value.toMap());
    map['managedServerCas'] = pulumi.Input.encodeList<GetClusterManagedServerCa,
        Map<String, dynamic>>(managedServerCas, (value) => value.toMap());
    map['name'] = name;
    map['nodeType'] = nodeType;
    map['persistenceConfigs'] = pulumi.Input.encodeList<
        GetClusterPersistenceConfig,
        Map<String, dynamic>>(persistenceConfigs, (value) => value.toMap());
    map['preciseSizeGb'] = preciseSizeGb;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscConfigs'] =
        pulumi.Input.encodeList<GetClusterPscConfigRedis, Map<String, dynamic>>(
            pscConfigs, (value) => value.toMap());
    map['pscConnections'] =
        pulumi.Input.encodeList<GetClusterPscConnection, Map<String, dynamic>>(
            pscConnections, (value) => value.toMap());
    map['pscServiceAttachments'] = pulumi.Input.encodeList<
        GetClusterPscServiceAttachment,
        Map<String, dynamic>>(pscServiceAttachments, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    map['redisConfigs'] = redisConfigs;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicaCount'] = replicaCount;
    map['shardCount'] = shardCount;
    map['sizeGb'] = sizeGb;
    map['state'] = state;
    map['stateInfos'] =
        pulumi.Input.encodeList<GetClusterStateInfo, Map<String, dynamic>>(
            stateInfos, (value) => value.toMap());
    map['transitEncryptionMode'] = transitEncryptionMode;
    map['uid'] = uid;
    map['zoneDistributionConfigs'] = pulumi.Input.encodeList<
            GetClusterZoneDistributionConfig, Map<String, dynamic>>(
        zoneDistributionConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterRedisResult.fromMap(Map<String, dynamic> map) {
    return GetClusterRedisResult(
      authorizationMode: map['authorizationMode'] as String,
      automatedBackupConfigs:
          pulumi.Input.decodeList<GetClusterAutomatedBackupConfig>(
              map['automatedBackupConfigs'],
              (value) => GetClusterAutomatedBackupConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      availableMaintenanceVersions:
          (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupCollection: map['backupCollection'] as String,
      createTime: map['createTime'] as String,
      crossClusterReplicationConfigs:
          pulumi.Input.decodeList<GetClusterCrossClusterReplicationConfig>(
              map['crossClusterReplicationConfigs'],
              (value) => GetClusterCrossClusterReplicationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      discoveryEndpoints: pulumi.Input.decodeList<GetClusterDiscoveryEndpoint>(
          map['discoveryEndpoints'],
          (value) => GetClusterDiscoveryEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] as String,
      gcsSources: pulumi.Input.decodeList<GetClusterGcsSource>(
          map['gcsSources'],
          (value) => GetClusterGcsSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenancePolicies:
          pulumi.Input.decodeList<GetClusterMaintenancePolicyRedis>(
              map['maintenancePolicies'],
              (value) => GetClusterMaintenancePolicyRedis.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceSchedules:
          pulumi.Input.decodeList<GetClusterMaintenanceSchedule>(
              map['maintenanceSchedules'],
              (value) => GetClusterMaintenanceSchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      managedBackupSources:
          pulumi.Input.decodeList<GetClusterManagedBackupSource>(
              map['managedBackupSources'],
              (value) => GetClusterManagedBackupSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      managedServerCas: pulumi.Input.decodeList<GetClusterManagedServerCa>(
          map['managedServerCas'],
          (value) => GetClusterManagedServerCa.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      persistenceConfigs: pulumi.Input.decodeList<GetClusterPersistenceConfig>(
          map['persistenceConfigs'],
          (value) => GetClusterPersistenceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      preciseSizeGb: map['preciseSizeGb'] as double,
      project: map['project'] == null ? null : map['project'] as String,
      pscConfigs: pulumi.Input.decodeList<GetClusterPscConfigRedis>(
          map['pscConfigs'],
          (value) => GetClusterPscConfigRedis.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscConnections: pulumi.Input.decodeList<GetClusterPscConnection>(
          map['pscConnections'],
          (value) => GetClusterPscConnection.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscServiceAttachments:
          pulumi.Input.decodeList<GetClusterPscServiceAttachment>(
              map['pscServiceAttachments'],
              (value) => GetClusterPscServiceAttachment.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      redisConfigs: (map['redisConfigs'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      replicaCount: map['replicaCount'] as int,
      shardCount: map['shardCount'] as int,
      sizeGb: map['sizeGb'] as int,
      state: map['state'] as String,
      stateInfos: pulumi.Input.decodeList<GetClusterStateInfo>(
          map['stateInfos'],
          (value) => GetClusterStateInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
      zoneDistributionConfigs:
          pulumi.Input.decodeList<GetClusterZoneDistributionConfig>(
              map['zoneDistributionConfigs'],
              (value) => GetClusterZoneDistributionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
