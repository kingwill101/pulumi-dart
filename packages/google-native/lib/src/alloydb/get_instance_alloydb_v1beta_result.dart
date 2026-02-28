// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_response_alloydb_v1beta.dart';
import 'machine_config_response_alloydb_v1beta.dart';
import 'node_response_alloydb_v1beta.dart';
import 'query_insights_instance_config_response_alloydb_v1beta.dart';
import 'read_pool_config_response_alloydb_v1beta.dart';
import 'update_policy_response_alloydb_v1beta.dart';

/// Result data returned by getInstance.
class GetInstanceAlloydbV1betaResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String> annotations;

  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final String availabilityType;

  /// Optional. Client connection specific configurations
  final ClientConnectionConfigResponseAlloydbV1beta clientConnectionConfig;

  /// Create time stamp
  final String createTime;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  final Map<String, String> databaseFlags;

  /// Delete time stamp
  final String deleteTime;

  /// User-settable and human-readable display name for the Instance.
  final String displayName;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final String etag;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final String gceZone;

  /// The type of the instance. Specified at creation time.
  final String instanceType;

  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  final String ipAddress;

  /// Labels as key value pairs
  final Map<String, String> labels;

  /// Configurations for the machines that host the underlying database engine.
  final MachineConfigResponseAlloydbV1beta machineConfig;

  /// The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String name;

  /// List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  final List<NodeResponseAlloydbV1beta> nodes;

  /// Configuration for query insights.
  final QueryInsightsInstanceConfigResponseAlloydbV1beta queryInsightsConfig;

  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final ReadPoolConfigResponseAlloydbV1beta readPoolConfig;

  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool reconciling;

  /// The current serving state of the instance.
  final String state;

  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String uid;

  /// Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  final UpdatePolicyResponseAlloydbV1beta updatePolicy;

  /// Update time stamp
  final String updateTime;

  /// This is set for the read-write VM of the PRIMARY instance only.
  final NodeResponseAlloydbV1beta writableNode;

  /// Creates a new [GetInstanceAlloydbV1betaResult].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [availabilityType] Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  /// [clientConnectionConfig] Optional. Client connection specific configurations
  /// [createTime] Create time stamp
  /// [databaseFlags] Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  /// [deleteTime] Delete time stamp
  /// [displayName] User-settable and human-readable display name for the Instance.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [gceZone] The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  /// [instanceType] The type of the instance. Specified at creation time.
  /// [ipAddress] The IP address for the Instance. This is the connection endpoint for an end-user application.
  /// [labels] Labels as key value pairs
  /// [machineConfig] Configurations for the machines that host the underlying database engine.
  /// [name] The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  /// [nodes] List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  /// [queryInsightsConfig] Configuration for query insights.
  /// [readPoolConfig] Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  /// [reconciling] Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  /// [state] The current serving state of the instance.
  /// [uid] The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  /// [updatePolicy] Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  /// [updateTime] Update time stamp
  /// [writableNode] This is set for the read-write VM of the PRIMARY instance only.
  GetInstanceAlloydbV1betaResult({
    required this.annotations,
    required this.availabilityType,
    required this.clientConnectionConfig,
    required this.createTime,
    required this.databaseFlags,
    required this.deleteTime,
    required this.displayName,
    required this.etag,
    required this.gceZone,
    required this.instanceType,
    required this.ipAddress,
    required this.labels,
    required this.machineConfig,
    required this.name,
    required this.nodes,
    required this.queryInsightsConfig,
    required this.readPoolConfig,
    required this.reconciling,
    required this.state,
    required this.uid,
    required this.updatePolicy,
    required this.updateTime,
    required this.writableNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['availabilityType'] = availabilityType;
    map['clientConnectionConfig'] = clientConnectionConfig.toMap();
    map['createTime'] = createTime;
    map['databaseFlags'] = databaseFlags;
    map['deleteTime'] = deleteTime;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['gceZone'] = gceZone;
    map['instanceType'] = instanceType;
    map['ipAddress'] = ipAddress;
    map['labels'] = labels;
    map['machineConfig'] = machineConfig.toMap();
    map['name'] = name;
    map['nodes'] = pulumi.Input.encodeList<NodeResponseAlloydbV1beta,
        Map<String, dynamic>>(nodes, (value) => value.toMap());
    map['queryInsightsConfig'] = queryInsightsConfig.toMap();
    map['readPoolConfig'] = readPoolConfig.toMap();
    map['reconciling'] = reconciling;
    map['state'] = state;
    map['uid'] = uid;
    map['updatePolicy'] = updatePolicy.toMap();
    map['updateTime'] = updateTime;
    map['writableNode'] = writableNode.toMap();
    return map;
  }

  factory GetInstanceAlloydbV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceAlloydbV1betaResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      availabilityType: map['availabilityType'] as String,
      clientConnectionConfig:
          ClientConnectionConfigResponseAlloydbV1beta.fromMap(
              (map['clientConnectionConfig'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      databaseFlags: (map['databaseFlags'] as Map).cast<String, String>(),
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      gceZone: map['gceZone'] as String,
      instanceType: map['instanceType'] as String,
      ipAddress: map['ipAddress'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineConfig: MachineConfigResponseAlloydbV1beta.fromMap(
          (map['machineConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodes: pulumi.Input.decodeList<NodeResponseAlloydbV1beta>(
          map['nodes'],
          (value) => NodeResponseAlloydbV1beta.fromMap(
              (value as Map).cast<String, dynamic>())),
      queryInsightsConfig:
          QueryInsightsInstanceConfigResponseAlloydbV1beta.fromMap(
              (map['queryInsightsConfig'] as Map).cast<String, dynamic>()),
      readPoolConfig: ReadPoolConfigResponseAlloydbV1beta.fromMap(
          (map['readPoolConfig'] as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updatePolicy: UpdatePolicyResponseAlloydbV1beta.fromMap(
          (map['updatePolicy'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
      writableNode: NodeResponseAlloydbV1beta.fromMap(
          (map['writableNode'] as Map).cast<String, dynamic>()),
    );
  }
}
