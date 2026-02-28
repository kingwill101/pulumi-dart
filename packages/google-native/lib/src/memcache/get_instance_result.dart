// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_memcache_v1_maintenance_policy_response.dart';
import 'instance_message_response.dart';
import 'maintenance_schedule_response.dart';
import 'memcache_parameters_response.dart';
import 'node_config_response.dart';
import 'node_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the `default` network will be used.
  final String authorizedNetwork;

  /// The time the instance was created.
  final String createTime;

  /// Endpoint for the Discovery API.
  final String discoveryEndpoint;

  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  final String displayName;

  /// List of messages that describe the current state of the Memcached instance.
  final List<InstanceMessageResponse> instanceMessages;

  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  final GoogleCloudMemcacheV1MaintenancePolicyResponse maintenancePolicy;

  /// Published maintenance schedule.
  final MaintenanceScheduleResponse maintenanceSchedule;

  /// The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  final String memcacheFullVersion;

  /// List of Memcached nodes. Refer to Node message for more details.
  final List<NodeResponse> memcacheNodes;

  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  final String memcacheVersion;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  final String name;

  /// Configuration for Memcached nodes.
  final NodeConfigResponse nodeConfig;

  /// Number of nodes in the Memcached instance.
  final int nodeCount;

  /// User defined parameters to apply to the memcached process on each node.
  final MemcacheParametersResponse parameters;

  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  final List<String> reservedIpRangeId;

  /// The state of this Memcached instance.
  final String state;

  /// The time the instance was updated.
  final String updateTime;

  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  final List<String> zones;

  /// Creates a new [GetInstanceResult].
  /// [authorizedNetwork] The full name of the Google Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. If left unspecified, the `default` network will be used.
  /// [createTime] The time the instance was created.
  /// [discoveryEndpoint] Endpoint for the Discovery API.
  /// [displayName] User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  /// [instanceMessages] List of messages that describe the current state of the Memcached instance.
  /// [labels] Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [maintenancePolicy] The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  /// [maintenanceSchedule] Published maintenance schedule.
  /// [memcacheFullVersion] The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  /// [memcacheNodes] List of Memcached nodes. Refer to Node message for more details.
  /// [memcacheVersion] The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  /// [name] Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  /// [nodeConfig] Configuration for Memcached nodes.
  /// [nodeCount] Number of nodes in the Memcached instance.
  /// [parameters] User defined parameters to apply to the memcached process on each node.
  /// [reservedIpRangeId] Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  /// [state] The state of this Memcached instance.
  /// [updateTime] The time the instance was updated.
  /// [zones] Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  GetInstanceResult({
    required this.authorizedNetwork,
    required this.createTime,
    required this.discoveryEndpoint,
    required this.displayName,
    required this.instanceMessages,
    required this.labels,
    required this.maintenancePolicy,
    required this.maintenanceSchedule,
    required this.memcacheFullVersion,
    required this.memcacheNodes,
    required this.memcacheVersion,
    required this.name,
    required this.nodeConfig,
    required this.nodeCount,
    required this.parameters,
    required this.reservedIpRangeId,
    required this.state,
    required this.updateTime,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizedNetwork'] = authorizedNetwork;
    map['createTime'] = createTime;
    map['discoveryEndpoint'] = discoveryEndpoint;
    map['displayName'] = displayName;
    map['instanceMessages'] =
        pulumi.Input.encodeList<InstanceMessageResponse, Map<String, dynamic>>(
            instanceMessages, (value) => value.toMap());
    map['labels'] = labels;
    map['maintenancePolicy'] = maintenancePolicy.toMap();
    map['maintenanceSchedule'] = maintenanceSchedule.toMap();
    map['memcacheFullVersion'] = memcacheFullVersion;
    map['memcacheNodes'] =
        pulumi.Input.encodeList<NodeResponse, Map<String, dynamic>>(
            memcacheNodes, (value) => value.toMap());
    map['memcacheVersion'] = memcacheVersion;
    map['name'] = name;
    map['nodeConfig'] = nodeConfig.toMap();
    map['nodeCount'] = nodeCount;
    map['parameters'] = parameters.toMap();
    map['reservedIpRangeId'] = reservedIpRangeId;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['zones'] = zones;
    return map;
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      authorizedNetwork: map['authorizedNetwork'] as String,
      createTime: map['createTime'] as String,
      discoveryEndpoint: map['discoveryEndpoint'] as String,
      displayName: map['displayName'] as String,
      instanceMessages: pulumi.Input.decodeList<InstanceMessageResponse>(
          map['instanceMessages'],
          (value) => InstanceMessageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenancePolicy: GoogleCloudMemcacheV1MaintenancePolicyResponse.fromMap(
          (map['maintenancePolicy'] as Map).cast<String, dynamic>()),
      maintenanceSchedule: MaintenanceScheduleResponse.fromMap(
          (map['maintenanceSchedule'] as Map).cast<String, dynamic>()),
      memcacheFullVersion: map['memcacheFullVersion'] as String,
      memcacheNodes: pulumi.Input.decodeList<NodeResponse>(
          map['memcacheNodes'],
          (value) =>
              NodeResponse.fromMap((value as Map).cast<String, dynamic>())),
      memcacheVersion: map['memcacheVersion'] as String,
      name: map['name'] as String,
      nodeConfig: NodeConfigResponse.fromMap(
          (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as int,
      parameters: MemcacheParametersResponse.fromMap(
          (map['parameters'] as Map).cast<String, dynamic>()),
      reservedIpRangeId: (map['reservedIpRangeId'] as List).cast<String>(),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
