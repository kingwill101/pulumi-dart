import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_maintenance_policy/instance_maintenance_policy.dart';
import '../instance_maintenance_schedule/instance_maintenance_schedule.dart';
import '../instance_memcache_node/instance_memcache_node.dart';
import '../instance_memcache_parameters/instance_memcache_parameters.dart';
import '../instance_node_config/instance_node_config.dart';
import 'instance_memcache_args.dart';

/// A Google Cloud Memcache instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/memcached/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memcache/docs/creating-instances)
///
/// ## Example Usage
///
/// ### Memcache Instance Basic
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memcache/instance:Instance default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memcache/instance:Instance default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memcache/instance:Instance default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memcache/instance:Instance default {{name}}
/// ```
class InstanceMemcache extends pulumi.CustomResource {
  /// The full name of the GCE network to connect the instance to.  If not provided,
  /// 'default' will be used.
  late final pulumi.Output<String> authorizedNetwork;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// Endpoint for Discovery API
  late final pulumi.Output<String> discoveryEndpoint;

  /// A user-visible name for the instance.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Maintenance policy for an instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMaintenancePolicy?> maintenancePolicy;

  /// Output only. Published maintenance schedule.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceMaintenanceSchedule>>
      maintenanceSchedules;

  /// The full version of memcached server running on this instance.
  late final pulumi.Output<String> memcacheFullVersion;

  /// Additional information about the instance state, if available.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceMemcacheNode>> memcacheNodes;

  /// User-specified parameters for this memcache instance.
  /// Structure is documented below.
  late final pulumi.Output<InstanceMemcacheParameters?> memcacheParameters;

  /// The major version of Memcached software. If not provided, latest supported version will be used.
  /// Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
  /// determined by our system based on the latest supported minor version.
  /// Default value is `MEMCACHE_1_5`.
  /// Possible values are: `MEMCACHE_1_5`, `MEMCACHE_1_6_15`.
  late final pulumi.Output<String?> memcacheVersion;

  /// The resource name of the instance.
  late final pulumi.Output<String> name;

  /// Configuration for memcache nodes.
  /// Structure is documented below.
  late final pulumi.Output<InstanceNodeConfig> nodeConfig;

  /// Number of nodes in the memcache instance.
  late final pulumi.Output<int> nodeCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the Memcache instance. If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// Contains the name of allocated IP address ranges associated with
  /// the private service access connection for example, "test-default"
  /// associated with IP range 10.0.0.0/29.
  late final pulumi.Output<List<String>?> reservedIpRangeIds;

  /// Zones where memcache nodes should be provisioned.  If not
  /// provided, all zones will be used.
  late final pulumi.Output<List<String>> zones;

  InstanceMemcache(
    String name, {
    InstanceMemcacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:memcache/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizedNetwork = registerOutput<String>('authorizedNetwork');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.discoveryEndpoint = registerOutput<String>('discoveryEndpoint');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maintenancePolicy =
        registerOutput<InstanceMaintenancePolicy?>('maintenancePolicy');
    this.maintenanceSchedules =
        registerOutput<List<InstanceMaintenanceSchedule>>(
            'maintenanceSchedules');
    this.memcacheFullVersion = registerOutput<String>('memcacheFullVersion');
    this.memcacheNodes =
        registerOutput<List<InstanceMemcacheNode>>('memcacheNodes');
    this.memcacheParameters =
        registerOutput<InstanceMemcacheParameters?>('memcacheParameters');
    this.memcacheVersion = registerOutput<String?>('memcacheVersion');
    this.name = registerOutput<String>('name');
    this.nodeConfig = registerOutput<InstanceNodeConfig>('nodeConfig');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.reservedIpRangeIds =
        registerOutput<List<String>?>('reservedIpRangeIds');
    this.zones = registerOutput<List<String>>('zones');
  }
}
