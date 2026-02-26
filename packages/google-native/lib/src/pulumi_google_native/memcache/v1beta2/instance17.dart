import 'package:pulumi/pulumi.dart';
import 'google_cloud_memcache_v1beta2_maintenance_policy_response.dart';
import 'instance_args17.dart';
import 'instance_message_response2.dart';
import 'maintenance_schedule_response3.dart';
import 'memcache_parameters_response2.dart';
import 'node_config_response7.dart';
import 'node_response5.dart';

/// Creates a new Instance in a given location.
class Instance17 extends CustomResource {
  /// The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  late final Output<String> authorizedNetwork;

  /// The time the instance was created.
  late final Output<String> createTime;

  /// Endpoint for the Discovery API.
  late final Output<String> discoveryEndpoint;

  /// User provided name for the instance, which is only used for display purposes. Cannot be more than 80 characters.
  late final Output<String> displayName;

  /// Required. The logical name of the Memcached instance in the user project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the user project / location. If any of the above are not met, the API raises an invalid argument error.
  late final Output<String> instanceId;

  /// List of messages that describe the current state of the Memcached instance.
  late final Output<List<InstanceMessageResponse2>> instanceMessages;

  /// Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The maintenance policy for the instance. If not provided, the maintenance event will be performed based on Memorystore internal rollout schedule.
  late final Output<GoogleCloudMemcacheV1beta2MaintenancePolicyResponse>
      maintenancePolicy;

  /// Published maintenance schedule.
  late final Output<MaintenanceScheduleResponse3> maintenanceSchedule;

  /// The full version of memcached server running on this instance. System automatically determines the full memcached version for an instance based on the input MemcacheVersion. The full version format will be "memcached-1.5.16".
  late final Output<String> memcacheFullVersion;

  /// List of Memcached nodes. Refer to Node message for more details.
  late final Output<List<NodeResponse5>> memcacheNodes;

  /// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
  late final Output<String> memcacheVersion;

  /// Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Memcached instances are managed and addressed at the regional level so `location_id` here refers to a Google Cloud region; however, users may choose which zones Memcached nodes should be provisioned in within an instance. Refer to zones field for more details.
  late final Output<String> name;

  /// Configuration for Memcached nodes.
  late final Output<NodeConfigResponse7> nodeConfig;

  /// Number of nodes in the Memcached instance.
  late final Output<int> nodeCount;

  /// User defined parameters to apply to the memcached process on each node.
  late final Output<MemcacheParametersResponse2> parameters;
  late final Output<String> project;

  /// Optional. Contains the id of allocated IP address ranges associated with the private service access connection for example, "test-default" associated with IP range 10.0.0.0/29.
  late final Output<List<String>> reservedIpRangeId;

  /// The state of this Memcached instance.
  late final Output<String> state;

  /// Returns true if there is an update waiting to be applied
  late final Output<bool> updateAvailable;

  /// The time the instance was updated.
  late final Output<String> updateTime;

  /// Zones in which Memcached nodes should be provisioned. Memcached nodes will be equally distributed across these zones. If not provided, the service will by default create nodes in all zones in the region for the instance.
  late final Output<List<String>> zones;

  Instance17(
    String name, {
    InstanceArgs17? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:memcache/v1beta2:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizedNetwork = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.discoveryEndpoint = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.instanceId = Output.createUnknown<String>();
    this.instanceMessages =
        Output.createUnknown<List<InstanceMessageResponse2>>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.maintenancePolicy = Output.createUnknown<
        GoogleCloudMemcacheV1beta2MaintenancePolicyResponse>();
    this.maintenanceSchedule =
        Output.createUnknown<MaintenanceScheduleResponse3>();
    this.memcacheFullVersion = Output.createUnknown<String>();
    this.memcacheNodes = Output.createUnknown<List<NodeResponse5>>();
    this.memcacheVersion = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nodeConfig = Output.createUnknown<NodeConfigResponse7>();
    this.nodeCount = Output.createUnknown<int>();
    this.parameters = Output.createUnknown<MemcacheParametersResponse2>();
    this.project = Output.createUnknown<String>();
    this.reservedIpRangeId = Output.createUnknown<List<String>>();
    this.state = Output.createUnknown<String>();
    this.updateAvailable = Output.createUnknown<bool>();
    this.updateTime = Output.createUnknown<String>();
    this.zones = Output.createUnknown<List<String>>();
  }
}
