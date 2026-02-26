// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_automated_backup_config/get_cluster_automated_backup_config.dart';
import '../get_cluster_cross_cluster_replication_config/get_cluster_cross_cluster_replication_config.dart';
import '../get_cluster_discovery_endpoint/get_cluster_discovery_endpoint.dart';
import '../get_cluster_gcs_source/get_cluster_gcs_source.dart';
import '../get_cluster_maintenance_policy/get_cluster_maintenance_policy2.dart';
import '../get_cluster_maintenance_schedule/get_cluster_maintenance_schedule.dart';
import '../get_cluster_managed_backup_source/get_cluster_managed_backup_source.dart';
import '../get_cluster_managed_server_ca/get_cluster_managed_server_ca.dart';
import '../get_cluster_persistence_config/get_cluster_persistence_config.dart';
import '../get_cluster_psc_config/get_cluster_psc_config2.dart';
import '../get_cluster_psc_connection/get_cluster_psc_connection.dart';
import '../get_cluster_psc_service_attachment/get_cluster_psc_service_attachment.dart';
import '../get_cluster_state_info/get_cluster_state_info.dart';
import '../get_cluster_zone_distribution_config/get_cluster_zone_distribution_config.dart';

/// Result data returned by getCluster.
class GetClusterResult3 {
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
  final List<GetClusterMaintenancePolicy2> maintenancePolicies;
  final List<GetClusterMaintenanceSchedule> maintenanceSchedules;
  final String maintenanceVersion;
  final List<GetClusterManagedBackupSource> managedBackupSources;
  final List<GetClusterManagedServerCa> managedServerCas;
  final String name;
  final String nodeType;
  final List<GetClusterPersistenceConfig> persistenceConfigs;
  final double preciseSizeGb;
  final String? project;
  final List<GetClusterPscConfig2> pscConfigs;
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

  GetClusterResult3({
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
    map['automatedBackupConfigs'] =
        Input.encodeList<GetClusterAutomatedBackupConfig, Map<String, dynamic>>(
            automatedBackupConfigs, (value) => value.toMap());
    map['availableMaintenanceVersions'] = availableMaintenanceVersions;
    map['backupCollection'] = backupCollection;
    map['createTime'] = createTime;
    map['crossClusterReplicationConfigs'] = Input.encodeList<
            GetClusterCrossClusterReplicationConfig, Map<String, dynamic>>(
        crossClusterReplicationConfigs, (value) => value.toMap());
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['discoveryEndpoints'] =
        Input.encodeList<GetClusterDiscoveryEndpoint, Map<String, dynamic>>(
            discoveryEndpoints, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['effectiveMaintenanceVersion'] = effectiveMaintenanceVersion;
    map['gcsSources'] =
        Input.encodeList<GetClusterGcsSource, Map<String, dynamic>>(
            gcsSources, (value) => value.toMap());
    map['id'] = id;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['maintenancePolicies'] =
        Input.encodeList<GetClusterMaintenancePolicy2, Map<String, dynamic>>(
            maintenancePolicies, (value) => value.toMap());
    map['maintenanceSchedules'] =
        Input.encodeList<GetClusterMaintenanceSchedule, Map<String, dynamic>>(
            maintenanceSchedules, (value) => value.toMap());
    map['maintenanceVersion'] = maintenanceVersion;
    map['managedBackupSources'] =
        Input.encodeList<GetClusterManagedBackupSource, Map<String, dynamic>>(
            managedBackupSources, (value) => value.toMap());
    map['managedServerCas'] =
        Input.encodeList<GetClusterManagedServerCa, Map<String, dynamic>>(
            managedServerCas, (value) => value.toMap());
    map['name'] = name;
    map['nodeType'] = nodeType;
    map['persistenceConfigs'] =
        Input.encodeList<GetClusterPersistenceConfig, Map<String, dynamic>>(
            persistenceConfigs, (value) => value.toMap());
    map['preciseSizeGb'] = preciseSizeGb;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscConfigs'] =
        Input.encodeList<GetClusterPscConfig2, Map<String, dynamic>>(
            pscConfigs, (value) => value.toMap());
    map['pscConnections'] =
        Input.encodeList<GetClusterPscConnection, Map<String, dynamic>>(
            pscConnections, (value) => value.toMap());
    map['pscServiceAttachments'] =
        Input.encodeList<GetClusterPscServiceAttachment, Map<String, dynamic>>(
            pscServiceAttachments, (value) => value.toMap());
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
        Input.encodeList<GetClusterStateInfo, Map<String, dynamic>>(
            stateInfos, (value) => value.toMap());
    map['transitEncryptionMode'] = transitEncryptionMode;
    map['uid'] = uid;
    map['zoneDistributionConfigs'] = Input.encodeList<
            GetClusterZoneDistributionConfig, Map<String, dynamic>>(
        zoneDistributionConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterResult3.fromMap(Map<String, dynamic> map) {
    return GetClusterResult3(
      authorizationMode: map['authorizationMode'] as String,
      automatedBackupConfigs: Input.decodeList<GetClusterAutomatedBackupConfig>(
          map['automatedBackupConfigs'],
          (value) => GetClusterAutomatedBackupConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      availableMaintenanceVersions:
          (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupCollection: map['backupCollection'] as String,
      createTime: map['createTime'] as String,
      crossClusterReplicationConfigs:
          Input.decodeList<GetClusterCrossClusterReplicationConfig>(
              map['crossClusterReplicationConfigs'],
              (value) => GetClusterCrossClusterReplicationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      discoveryEndpoints: Input.decodeList<GetClusterDiscoveryEndpoint>(
          map['discoveryEndpoints'],
          (value) => GetClusterDiscoveryEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] as String,
      gcsSources: Input.decodeList<GetClusterGcsSource>(
          map['gcsSources'],
          (value) => GetClusterGcsSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenancePolicies: Input.decodeList<GetClusterMaintenancePolicy2>(
          map['maintenancePolicies'],
          (value) => GetClusterMaintenancePolicy2.fromMap(
              (value as Map).cast<String, dynamic>())),
      maintenanceSchedules: Input.decodeList<GetClusterMaintenanceSchedule>(
          map['maintenanceSchedules'],
          (value) => GetClusterMaintenanceSchedule.fromMap(
              (value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      managedBackupSources: Input.decodeList<GetClusterManagedBackupSource>(
          map['managedBackupSources'],
          (value) => GetClusterManagedBackupSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      managedServerCas: Input.decodeList<GetClusterManagedServerCa>(
          map['managedServerCas'],
          (value) => GetClusterManagedServerCa.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      persistenceConfigs: Input.decodeList<GetClusterPersistenceConfig>(
          map['persistenceConfigs'],
          (value) => GetClusterPersistenceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      preciseSizeGb: map['preciseSizeGb'] as double,
      project: map['project'] == null ? null : map['project'] as String,
      pscConfigs: Input.decodeList<GetClusterPscConfig2>(
          map['pscConfigs'],
          (value) => GetClusterPscConfig2.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscConnections: Input.decodeList<GetClusterPscConnection>(
          map['pscConnections'],
          (value) => GetClusterPscConnection.fromMap(
              (value as Map).cast<String, dynamic>())),
      pscServiceAttachments: Input.decodeList<GetClusterPscServiceAttachment>(
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
      stateInfos: Input.decodeList<GetClusterStateInfo>(
          map['stateInfos'],
          (value) => GetClusterStateInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
      zoneDistributionConfigs:
          Input.decodeList<GetClusterZoneDistributionConfig>(
              map['zoneDistributionConfigs'],
              (value) => GetClusterZoneDistributionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
