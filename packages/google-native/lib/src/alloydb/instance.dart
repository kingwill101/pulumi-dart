import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config_response.dart';
import 'instance_args.dart';
import 'machine_config_response.dart';
import 'node_response.dart';
import 'query_insights_instance_config_response.dart';
import 'read_pool_config_response.dart';

/// Creates a new Instance in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Instance extends pulumi.CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  late final pulumi.Output<Map<String, String>> annotations;

  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  late final pulumi.Output<String> availabilityType;

  /// Optional. Client connection specific configurations
  late final pulumi.Output<ClientConnectionConfigResponse>
  clientConnectionConfig;
  late final pulumi.Output<String> clusterId;

  /// Create time stamp
  late final pulumi.Output<String> createTime;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  late final pulumi.Output<Map<String, String>> databaseFlags;

  /// Delete time stamp
  late final pulumi.Output<String> deleteTime;

  /// User-settable and human-readable display name for the Instance.
  late final pulumi.Output<String> displayName;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String> etag;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  late final pulumi.Output<String> gceZone;

  /// Required. ID of the requesting object.
  late final pulumi.Output<String> instanceId;

  /// The type of the instance. Specified at creation time.
  late final pulumi.Output<String> instanceType;

  /// The IP address for the Instance. This is the connection endpoint for an end-user application.
  late final pulumi.Output<String> ipAddress;

  /// Labels as key value pairs
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Configurations for the machines that host the underlying database engine.
  late final pulumi.Output<MachineConfigResponse> machineConfig;

  /// The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}/instances/{instance_id} where the cluster and instance ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the instance resource name is the name of the parent resource: * projects/{project}/locations/{region}/clusters/{cluster_id}
  late final pulumi.Output<String> name;

  /// List of available read-only VMs in this instance, including the standby for a PRIMARY instance.
  late final pulumi.Output<List<NodeResponse>> nodes;
  late final pulumi.Output<String> project;

  /// Configuration for query insights.
  late final pulumi.Output<QueryInsightsInstanceConfigResponse>
  queryInsightsConfig;

  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  late final pulumi.Output<ReadPoolConfigResponse> readPoolConfig;

  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Instance does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The current serving state of the instance.
  late final pulumi.Output<String> state;

  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  late final pulumi.Output<String> uid;

  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// This is set for the read-write VM of the PRIMARY instance only.
  late final pulumi.Output<NodeResponse> writableNode;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_alloydb_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:alloydb/v1:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.availabilityType = registerOutput<String>('availabilityType');
    this.clientConnectionConfig =
        registerOutput<ClientConnectionConfigResponse>(
          'clientConnectionConfig',
        );
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.databaseFlags = registerOutput<Map<String, String>>('databaseFlags');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.gceZone = registerOutput<String>('gceZone');
    this.instanceId = registerOutput<String>('instanceId');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.machineConfig = registerOutput<MachineConfigResponse>('machineConfig');
    this.name = registerOutput<String>('name');
    this.nodes = registerOutput<List<NodeResponse>>('nodes');
    this.project = registerOutput<String>('project');
    this.queryInsightsConfig =
        registerOutput<QueryInsightsInstanceConfigResponse>(
          'queryInsightsConfig',
        );
    this.readPoolConfig = registerOutput<ReadPoolConfigResponse>(
      'readPoolConfig',
    );
    this.reconciling = registerOutput<bool>('reconciling');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.writableNode = registerOutput<NodeResponse>('writableNode');
  }
}
