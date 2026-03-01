// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy.dart';
import 'get_instance_maintenance_schedule.dart';
import 'get_instance_node.dart';
import 'get_instance_persistence_config.dart';
import 'get_instance_server_ca_cert.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
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
  final List<GetInstanceMaintenancePolicy> maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule> maintenanceSchedules;
  final String maintenanceVersion;
  final int memorySizeGb;
  final String name;
  final List<GetInstanceNode> nodes;
  final List<GetInstancePersistenceConfig> persistenceConfigs;
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

  /// Creates a new [GetInstanceResult].
  /// [alternativeLocationId] Required.
  /// [authEnabled] Required.
  /// [authString] Required.
  /// [authorizedNetwork] Required.
  /// [connectMode] Required.
  /// [createTime] Required.
  /// [currentLocationId] Required.
  /// [customerManagedKey] Required.
  /// [deletionProtection] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [effectiveReservedIpRange] Required.
  /// [host] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [locationId] Required.
  /// [maintenancePolicies] Required.
  /// [maintenanceSchedules] Required.
  /// [maintenanceVersion] Required.
  /// [memorySizeGb] Required.
  /// [name] Required.
  /// [nodes] Required.
  /// [persistenceConfigs] Required.
  /// [persistenceIamIdentity] Required.
  /// [port] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [readEndpoint] Required.
  /// [readEndpointPort] Required.
  /// [readReplicasMode] Required.
  /// [redisConfigs] Required.
  /// [redisVersion] Required.
  /// [region] Optional.
  /// [replicaCount] Required.
  /// [reservedIpRange] Required.
  /// [secondaryIpRange] Required.
  /// [serverCaCerts] Required.
  /// [tier] Required.
  /// [transitEncryptionMode] Required.
  GetInstanceResult({
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
    return <String, dynamic>{
      'alternativeLocationId': alternativeLocationId,
      'authEnabled': authEnabled,
      'authString': authString,
      'authorizedNetwork': authorizedNetwork,
      'connectMode': connectMode,
      'createTime': createTime,
      'currentLocationId': currentLocationId,
      'customerManagedKey': customerManagedKey,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'effectiveReservedIpRange': effectiveReservedIpRange,
      'host': host,
      'id': id,
      'labels': labels,
      'locationId': locationId,
      'maintenancePolicies':
          pulumi.Input.encodeList<
            GetInstanceMaintenancePolicy,
            Map<String, dynamic>
          >(maintenancePolicies, (value) => value.toMap()),
      'maintenanceSchedules':
          pulumi.Input.encodeList<
            GetInstanceMaintenanceSchedule,
            Map<String, dynamic>
          >(maintenanceSchedules, (value) => value.toMap()),
      'maintenanceVersion': maintenanceVersion,
      'memorySizeGb': memorySizeGb,
      'name': name,
      'nodes': pulumi.Input.encodeList<GetInstanceNode, Map<String, dynamic>>(
        nodes,
        (value) => value.toMap(),
      ),
      'persistenceConfigs':
          pulumi.Input.encodeList<
            GetInstancePersistenceConfig,
            Map<String, dynamic>
          >(persistenceConfigs, (value) => value.toMap()),
      'persistenceIamIdentity': persistenceIamIdentity,
      'port': port,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'readEndpoint': readEndpoint,
      'readEndpointPort': readEndpointPort,
      'readReplicasMode': readReplicasMode,
      'redisConfigs': redisConfigs,
      'redisVersion': redisVersion,
      'region': ?region,
      'replicaCount': replicaCount,
      'reservedIpRange': reservedIpRange,
      'secondaryIpRange': secondaryIpRange,
      'serverCaCerts':
          pulumi.Input.encodeList<
            GetInstanceServerCaCert,
            Map<String, dynamic>
          >(serverCaCerts, (value) => value.toMap()),
      'tier': tier,
      'transitEncryptionMode': transitEncryptionMode,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
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
      maintenancePolicies:
          pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(
            map['maintenancePolicies'],
            (value) => GetInstanceMaintenancePolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      maintenanceSchedules:
          pulumi.Input.decodeList<GetInstanceMaintenanceSchedule>(
            map['maintenanceSchedules'],
            (value) => GetInstanceMaintenanceSchedule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      maintenanceVersion: map['maintenanceVersion'] as String,
      memorySizeGb: map['memorySizeGb'] as int,
      name: map['name'] as String,
      nodes: pulumi.Input.decodeList<GetInstanceNode>(
        map['nodes'],
        (value) =>
            GetInstanceNode.fromMap((value as Map).cast<String, dynamic>()),
      ),
      persistenceConfigs: pulumi.Input.decodeList<GetInstancePersistenceConfig>(
        map['persistenceConfigs'],
        (value) => GetInstancePersistenceConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
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
      serverCaCerts: pulumi.Input.decodeList<GetInstanceServerCaCert>(
        map['serverCaCerts'],
        (value) => GetInstanceServerCaCert.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tier: map['tier'] as String,
      transitEncryptionMode: map['transitEncryptionMode'] as String,
    );
  }
}
