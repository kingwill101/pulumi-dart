// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_automated_backup_config/get_instance_automated_backup_config.dart';
import '../get_instance_cross_instance_replication_config/get_instance_cross_instance_replication_config.dart';
import '../get_instance_desired_auto_created_endpoint/get_instance_desired_auto_created_endpoint.dart';
import '../get_instance_desired_psc_auto_connection/get_instance_desired_psc_auto_connection.dart';
import '../get_instance_discovery_endpoint/get_instance_discovery_endpoint.dart';
import '../get_instance_endpoint/get_instance_endpoint.dart';
import '../get_instance_gcs_source/get_instance_gcs_source.dart';
import '../get_instance_maintenance_policy/get_instance_maintenance_policy_memorystore.dart';
import '../get_instance_maintenance_schedule/get_instance_maintenance_schedule_memorystore.dart';
import '../get_instance_managed_backup_source/get_instance_managed_backup_source.dart';
import '../get_instance_managed_server_ca/get_instance_managed_server_ca.dart';
import '../get_instance_node_config/get_instance_node_config_memorystore.dart';
import '../get_instance_persistence_config/get_instance_persistence_config.dart';
import '../get_instance_psc_attachment_detail/get_instance_psc_attachment_detail.dart';
import '../get_instance_psc_auto_connection/get_instance_psc_auto_connection.dart';
import '../get_instance_state_info/get_instance_state_info.dart';
import '../get_instance_zone_distribution_config/get_instance_zone_distribution_config.dart';

/// Result data returned by getInstance.
class GetInstanceMemorystoreResult {
  final String authorizationMode;
  final List<GetInstanceAutomatedBackupConfig> automatedBackupConfigs;
  final List<String> availableMaintenanceVersions;
  final String backupCollection;
  final String createTime;
  final List<GetInstanceCrossInstanceReplicationConfig>
      crossInstanceReplicationConfigs;
  final bool deletionProtectionEnabled;
  final List<GetInstanceDesiredAutoCreatedEndpoint> desiredAutoCreatedEndpoints;
  final List<GetInstanceDesiredPscAutoConnection> desiredPscAutoConnections;
  final List<GetInstanceDiscoveryEndpoint> discoveryEndpoints;
  final Map<String, String> effectiveLabels;
  final String effectiveMaintenanceVersion;
  final List<GetInstanceEndpoint> endpoints;
  final Map<String, String> engineConfigs;
  final String engineVersion;
  final List<GetInstanceGcsSource> gcsSources;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String kmsKey;
  final Map<String, String> labels;
  final String? location;
  final List<GetInstanceMaintenancePolicyMemorystore> maintenancePolicies;
  final List<GetInstanceMaintenanceScheduleMemorystore> maintenanceSchedules;
  final String maintenanceVersion;
  final List<GetInstanceManagedBackupSource> managedBackupSources;
  final List<GetInstanceManagedServerCa> managedServerCas;
  final String mode;
  final String name;
  final List<GetInstanceNodeConfigMemorystore> nodeConfigs;
  final String nodeType;
  final List<GetInstancePersistenceConfig> persistenceConfigs;
  final String? project;
  final List<GetInstancePscAttachmentDetail> pscAttachmentDetails;
  final List<GetInstancePscAutoConnection> pscAutoConnections;
  final Map<String, String> pulumiLabels;
  final int replicaCount;
  final int shardCount;
  final String state;
  final List<GetInstanceStateInfo> stateInfos;
  final String transitEncryptionMode;
  final String uid;
  final String updateTime;
  final List<GetInstanceZoneDistributionConfig> zoneDistributionConfigs;

  GetInstanceMemorystoreResult({
    required this.authorizationMode,
    required this.automatedBackupConfigs,
    required this.availableMaintenanceVersions,
    required this.backupCollection,
    required this.createTime,
    required this.crossInstanceReplicationConfigs,
    required this.deletionProtectionEnabled,
    required this.desiredAutoCreatedEndpoints,
    required this.desiredPscAutoConnections,
    required this.discoveryEndpoints,
    required this.effectiveLabels,
    required this.effectiveMaintenanceVersion,
    required this.endpoints,
    required this.engineConfigs,
    required this.engineVersion,
    required this.gcsSources,
    required this.id,
    required this.instanceId,
    required this.kmsKey,
    required this.labels,
    this.location,
    required this.maintenancePolicies,
    required this.maintenanceSchedules,
    required this.maintenanceVersion,
    required this.managedBackupSources,
    required this.managedServerCas,
    required this.mode,
    required this.name,
    required this.nodeConfigs,
    required this.nodeType,
    required this.persistenceConfigs,
    this.project,
    required this.pscAttachmentDetails,
    required this.pscAutoConnections,
    required this.pulumiLabels,
    required this.replicaCount,
    required this.shardCount,
    required this.state,
    required this.stateInfos,
    required this.transitEncryptionMode,
    required this.uid,
    required this.updateTime,
    required this.zoneDistributionConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationMode'] = authorizationMode;
    map['automatedBackupConfigs'] = pulumi.Input.encodeList<
        GetInstanceAutomatedBackupConfig,
        Map<String, dynamic>>(automatedBackupConfigs, (value) => value.toMap());
    map['availableMaintenanceVersions'] = availableMaintenanceVersions;
    map['backupCollection'] = backupCollection;
    map['createTime'] = createTime;
    map['crossInstanceReplicationConfigs'] = pulumi.Input.encodeList<
            GetInstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(
        crossInstanceReplicationConfigs, (value) => value.toMap());
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['desiredAutoCreatedEndpoints'] = pulumi.Input.encodeList<
            GetInstanceDesiredAutoCreatedEndpoint, Map<String, dynamic>>(
        desiredAutoCreatedEndpoints, (value) => value.toMap());
    map['desiredPscAutoConnections'] = pulumi.Input.encodeList<
            GetInstanceDesiredPscAutoConnection, Map<String, dynamic>>(
        desiredPscAutoConnections, (value) => value.toMap());
    map['discoveryEndpoints'] = pulumi.Input.encodeList<
        GetInstanceDiscoveryEndpoint,
        Map<String, dynamic>>(discoveryEndpoints, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['effectiveMaintenanceVersion'] = effectiveMaintenanceVersion;
    map['endpoints'] =
        pulumi.Input.encodeList<GetInstanceEndpoint, Map<String, dynamic>>(
            endpoints, (value) => value.toMap());
    map['engineConfigs'] = engineConfigs;
    map['engineVersion'] = engineVersion;
    map['gcsSources'] =
        pulumi.Input.encodeList<GetInstanceGcsSource, Map<String, dynamic>>(
            gcsSources, (value) => value.toMap());
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['maintenancePolicies'] = pulumi.Input.encodeList<
        GetInstanceMaintenancePolicyMemorystore,
        Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap());
    map['maintenanceSchedules'] = pulumi.Input.encodeList<
        GetInstanceMaintenanceScheduleMemorystore,
        Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap());
    map['maintenanceVersion'] = maintenanceVersion;
    map['managedBackupSources'] = pulumi.Input.encodeList<
        GetInstanceManagedBackupSource,
        Map<String, dynamic>>(managedBackupSources, (value) => value.toMap());
    map['managedServerCas'] = pulumi.Input.encodeList<
        GetInstanceManagedServerCa,
        Map<String, dynamic>>(managedServerCas, (value) => value.toMap());
    map['mode'] = mode;
    map['name'] = name;
    map['nodeConfigs'] = pulumi.Input.encodeList<
        GetInstanceNodeConfigMemorystore,
        Map<String, dynamic>>(nodeConfigs, (value) => value.toMap());
    map['nodeType'] = nodeType;
    map['persistenceConfigs'] = pulumi.Input.encodeList<
        GetInstancePersistenceConfig,
        Map<String, dynamic>>(persistenceConfigs, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscAttachmentDetails'] = pulumi.Input.encodeList<
        GetInstancePscAttachmentDetail,
        Map<String, dynamic>>(pscAttachmentDetails, (value) => value.toMap());
    map['pscAutoConnections'] = pulumi.Input.encodeList<
        GetInstancePscAutoConnection,
        Map<String, dynamic>>(pscAutoConnections, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    map['replicaCount'] = replicaCount;
    map['shardCount'] = shardCount;
    map['state'] = state;
    map['stateInfos'] =
        pulumi.Input.encodeList<GetInstanceStateInfo, Map<String, dynamic>>(
            stateInfos, (value) => value.toMap());
    map['transitEncryptionMode'] = transitEncryptionMode;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['zoneDistributionConfigs'] = pulumi.Input.encodeList<
            GetInstanceZoneDistributionConfig, Map<String, dynamic>>(
        zoneDistributionConfigs, (value) => value.toMap());
    return map;
  }

  factory GetInstanceMemorystoreResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemorystoreResult(
      authorizationMode: map['authorizationMode'] as String,
      automatedBackupConfigs:
          pulumi.Input.decodeList<GetInstanceAutomatedBackupConfig>(
              map['automatedBackupConfigs'],
              (value) => GetInstanceAutomatedBackupConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      availableMaintenanceVersions:
          (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupCollection: map['backupCollection'] as String,
      createTime: map['createTime'] as String,
      crossInstanceReplicationConfigs:
          pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfig>(
              map['crossInstanceReplicationConfigs'],
              (value) => GetInstanceCrossInstanceReplicationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      desiredAutoCreatedEndpoints:
          pulumi.Input.decodeList<GetInstanceDesiredAutoCreatedEndpoint>(
              map['desiredAutoCreatedEndpoints'],
              (value) => GetInstanceDesiredAutoCreatedEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      desiredPscAutoConnections:
          pulumi.Input.decodeList<GetInstanceDesiredPscAutoConnection>(
              map['desiredPscAutoConnections'],
              (value) => GetInstanceDesiredPscAutoConnection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      discoveryEndpoints: pulumi.Input.decodeList<GetInstanceDiscoveryEndpoint>(
          map['discoveryEndpoints'],
          (value) => GetInstanceDiscoveryEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] as String,
      endpoints: pulumi.Input.decodeList<GetInstanceEndpoint>(
          map['endpoints'],
          (value) => GetInstanceEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      engineConfigs: (map['engineConfigs'] as Map).cast<String, String>(),
      engineVersion: map['engineVersion'] as String,
      gcsSources: pulumi.Input.decodeList<GetInstanceGcsSource>(
          map['gcsSources'],
          (value) => GetInstanceGcsSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maintenancePolicies:
          pulumi.Input.decodeList<GetInstanceMaintenancePolicyMemorystore>(
              map['maintenancePolicies'],
              (value) => GetInstanceMaintenancePolicyMemorystore.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceSchedules:
          pulumi.Input.decodeList<GetInstanceMaintenanceScheduleMemorystore>(
              map['maintenanceSchedules'],
              (value) => GetInstanceMaintenanceScheduleMemorystore.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      managedBackupSources:
          pulumi.Input.decodeList<GetInstanceManagedBackupSource>(
              map['managedBackupSources'],
              (value) => GetInstanceManagedBackupSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      managedServerCas: pulumi.Input.decodeList<GetInstanceManagedServerCa>(
          map['managedServerCas'],
          (value) => GetInstanceManagedServerCa.fromMap(
              (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      name: map['name'] as String,
      nodeConfigs: pulumi.Input.decodeList<GetInstanceNodeConfigMemorystore>(
          map['nodeConfigs'],
          (value) => GetInstanceNodeConfigMemorystore.fromMap(
              (value as Map).cast<String, dynamic>())),
      nodeType: map['nodeType'] as String,
      persistenceConfigs: pulumi.Input.decodeList<GetInstancePersistenceConfig>(
          map['persistenceConfigs'],
          (value) => GetInstancePersistenceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      pscAttachmentDetails:
          pulumi.Input.decodeList<GetInstancePscAttachmentDetail>(
              map['pscAttachmentDetails'],
              (value) => GetInstancePscAttachmentDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pscAutoConnections: pulumi.Input.decodeList<GetInstancePscAutoConnection>(
          map['pscAutoConnections'],
          (value) => GetInstancePscAutoConnection.fromMap(
              (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      replicaCount: map['replicaCount'] as int,
      shardCount: map['shardCount'] as int,
      state: map['state'] as String,
      stateInfos: pulumi.Input.decodeList<GetInstanceStateInfo>(
          map['stateInfos'],
          (value) => GetInstanceStateInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      zoneDistributionConfigs:
          pulumi.Input.decodeList<GetInstanceZoneDistributionConfig>(
              map['zoneDistributionConfigs'],
              (value) => GetInstanceZoneDistributionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
