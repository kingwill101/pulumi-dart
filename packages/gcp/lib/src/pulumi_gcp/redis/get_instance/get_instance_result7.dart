// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_maintenance_policy/get_instance_maintenance_policy3.dart';
import '../get_instance_maintenance_schedule/get_instance_maintenance_schedule3.dart';
import '../get_instance_node/get_instance_node.dart';
import '../get_instance_persistence_config/get_instance_persistence_config2.dart';
import '../get_instance_server_ca_cert/get_instance_server_ca_cert.dart';

/// Result data returned by getInstance.
class GetInstanceResult7 {
  final String alternativeLocationId;
  final bool authEnabled;
  final String authString;
  final String authorizedNetwork;
  final String connectMode;
  final String createTime;
  final String currentLocationId;
  final String customerManagedKey;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String effectiveReservedIpRange;
  final String host;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String locationId;
  final List<GetInstanceMaintenancePolicy3> maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule3> maintenanceSchedules;
  final String maintenanceVersion;
  final int memorySizeGb;
  final String name;
  final List<GetInstanceNode> nodes;
  final List<GetInstancePersistenceConfig2> persistenceConfigs;
  final String persistenceIamIdentity;
  final int port;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String readEndpoint;
  final int readEndpointPort;
  final String readReplicasMode;
  final Map<String, String> redisConfigs;
  final String redisVersion;
  final String? region;
  final int replicaCount;
  final String reservedIpRange;
  final String secondaryIpRange;
  final List<GetInstanceServerCaCert> serverCaCerts;
  final String tier;
  final String transitEncryptionMode;

  GetInstanceResult7({
    required this.alternativeLocationId,
    required this.authEnabled,
    required this.authString,
    required this.authorizedNetwork,
    required this.connectMode,
    required this.createTime,
    required this.currentLocationId,
    required this.customerManagedKey,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.effectiveReservedIpRange,
    required this.host,
    required this.id,
    required this.labels,
    required this.locationId,
    required this.maintenancePolicies,
    required this.maintenanceSchedules,
    required this.maintenanceVersion,
    required this.memorySizeGb,
    required this.name,
    required this.nodes,
    required this.persistenceConfigs,
    required this.persistenceIamIdentity,
    required this.port,
    this.project,
    required this.pulumiLabels,
    required this.readEndpoint,
    required this.readEndpointPort,
    required this.readReplicasMode,
    required this.redisConfigs,
    required this.redisVersion,
    this.region,
    required this.replicaCount,
    required this.reservedIpRange,
    required this.secondaryIpRange,
    required this.serverCaCerts,
    required this.tier,
    required this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alternativeLocationId'] = alternativeLocationId;
    map['authEnabled'] = authEnabled;
    map['authString'] = authString;
    map['authorizedNetwork'] = authorizedNetwork;
    map['connectMode'] = connectMode;
    map['createTime'] = createTime;
    map['currentLocationId'] = currentLocationId;
    map['customerManagedKey'] = customerManagedKey;
    map['deletionProtection'] = deletionProtection;
    map['displayName'] = displayName;
    map['effectiveLabels'] = effectiveLabels;
    map['effectiveReservedIpRange'] = effectiveReservedIpRange;
    map['host'] = host;
    map['id'] = id;
    map['labels'] = labels;
    map['locationId'] = locationId;
    map['maintenancePolicies'] =
        Input.encodeList<GetInstanceMaintenancePolicy3, Map<String, dynamic>>(
            maintenancePolicies, (value) => value.toMap());
    map['maintenanceSchedules'] =
        Input.encodeList<GetInstanceMaintenanceSchedule3, Map<String, dynamic>>(
            maintenanceSchedules, (value) => value.toMap());
    map['maintenanceVersion'] = maintenanceVersion;
    map['memorySizeGb'] = memorySizeGb;
    map['name'] = name;
    map['nodes'] = Input.encodeList<GetInstanceNode, Map<String, dynamic>>(
        nodes, (value) => value.toMap());
    map['persistenceConfigs'] =
        Input.encodeList<GetInstancePersistenceConfig2, Map<String, dynamic>>(
            persistenceConfigs, (value) => value.toMap());
    map['persistenceIamIdentity'] = persistenceIamIdentity;
    map['port'] = port;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['readEndpoint'] = readEndpoint;
    map['readEndpointPort'] = readEndpointPort;
    map['readReplicasMode'] = readReplicasMode;
    map['redisConfigs'] = redisConfigs;
    map['redisVersion'] = redisVersion;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicaCount'] = replicaCount;
    map['reservedIpRange'] = reservedIpRange;
    map['secondaryIpRange'] = secondaryIpRange;
    map['serverCaCerts'] =
        Input.encodeList<GetInstanceServerCaCert, Map<String, dynamic>>(
            serverCaCerts, (value) => value.toMap());
    map['tier'] = tier;
    map['transitEncryptionMode'] = transitEncryptionMode;
    return map;
  }

  factory GetInstanceResult7.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult7(
      alternativeLocationId: map['alternativeLocationId'] as String,
      authEnabled: map['authEnabled'] as bool,
      authString: map['authString'] as String,
      authorizedNetwork: map['authorizedNetwork'] as String,
      connectMode: map['connectMode'] as String,
      createTime: map['createTime'] as String,
      currentLocationId: map['currentLocationId'] as String,
      customerManagedKey: map['customerManagedKey'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveReservedIpRange: map['effectiveReservedIpRange'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      locationId: map['locationId'] as String,
      maintenancePolicies: Input.decodeList<GetInstanceMaintenancePolicy3>(
          map['maintenancePolicies'],
          (value) => GetInstanceMaintenancePolicy3.fromMap(
              (value as Map).cast<String, dynamic>())),
      maintenanceSchedules: Input.decodeList<GetInstanceMaintenanceSchedule3>(
          map['maintenanceSchedules'],
          (value) => GetInstanceMaintenanceSchedule3.fromMap(
              (value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      memorySizeGb: map['memorySizeGb'] as int,
      name: map['name'] as String,
      nodes: Input.decodeList<GetInstanceNode>(
          map['nodes'],
          (value) =>
              GetInstanceNode.fromMap((value as Map).cast<String, dynamic>())),
      persistenceConfigs: Input.decodeList<GetInstancePersistenceConfig2>(
          map['persistenceConfigs'],
          (value) => GetInstancePersistenceConfig2.fromMap(
              (value as Map).cast<String, dynamic>())),
      persistenceIamIdentity: map['persistenceIamIdentity'] as String,
      port: map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      readEndpoint: map['readEndpoint'] as String,
      readEndpointPort: map['readEndpointPort'] as int,
      readReplicasMode: map['readReplicasMode'] as String,
      redisConfigs: (map['redisConfigs'] as Map).cast<String, String>(),
      redisVersion: map['redisVersion'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicaCount: map['replicaCount'] as int,
      reservedIpRange: map['reservedIpRange'] as String,
      secondaryIpRange: map['secondaryIpRange'] as String,
      serverCaCerts: Input.decodeList<GetInstanceServerCaCert>(
          map['serverCaCerts'],
          (value) => GetInstanceServerCaCert.fromMap(
              (value as Map).cast<String, dynamic>())),
      tier: map['tier'] as String,
      transitEncryptionMode: map['transitEncryptionMode'] as String,
    );
  }
}
