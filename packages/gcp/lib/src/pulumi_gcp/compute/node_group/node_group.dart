import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_group_autoscaling_policy/node_group_autoscaling_policy.dart';
import '../node_group_maintenance_window/node_group_maintenance_window.dart';
import '../node_group_share_settings/node_group_share_settings.dart';
import 'node_group_args.dart';

/// Represents a NodeGroup resource to manage a group of sole-tenant nodes.
///
///
/// To get more information about NodeGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups)
/// * How-to Guides
/// * [Sole-Tenant Nodes](https://cloud.google.com/compute/docs/nodes/)
///
/// > **Warning:** Due to limitations of the API, this provider cannot update the
/// number of nodes in a node group and changes to node group size either
/// through provider config or through external changes will cause
/// the provider to delete and recreate the node group.
///
/// ## Example Usage
///
/// ### Node Group Basic
///
///
///
/// ### Node Group Maintenance Interval
///
///
///
/// ### Node Group Autoscaling Policy
///
///
///
/// ### Node Group Share Settings
///
///
///
///
/// ## Import
///
/// NodeGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NodeGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{name}}
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// If you use sole-tenant nodes for your workloads, you can use the node
  /// group autoscaler to automatically manage the sizes of your node groups.
  /// One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  /// Structure is documented below.
  late final pulumi.Output<NodeGroupAutoscalingPolicy> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional textual description of the resource.
  late final pulumi.Output<String?> description;

  /// The initial number of nodes in the node group. One of `initial_size` or `autoscaling_policy` must be configured on resource creation.
  late final pulumi.Output<int?> initialSize;

  /// Specifies the frequency of planned maintenance events. Set to one of the following:
  /// - AS_NEEDED: Hosts are eligible to receive infrastructure and hypervisor updates as they become available.
  /// - RECURRENT: Hosts receive planned infrastructure and hypervisor updates on a periodic basis, but not more frequently than every 28 days. This minimizes the number of planned maintenance operations on individual hosts and reduces the frequency of disruptions, both live migrations and terminations, on individual VMs.
  /// Possible values are: `AS_NEEDED`, `RECURRENT`.
  late final pulumi.Output<String> maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  late final pulumi.Output<String?> maintenancePolicy;

  /// contains properties for the timeframe of maintenance
  /// Structure is documented below.
  late final pulumi.Output<NodeGroupMaintenanceWindow?> maintenanceWindow;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// The URL of the node template to which this node group belongs.
  late final pulumi.Output<String> nodeTemplate;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Share settings for the node group.
  /// Structure is documented below.
  late final pulumi.Output<NodeGroupShareSettings> shareSettings;

  /// The total number of nodes in the node group.
  late final pulumi.Output<int> size;

  /// Zone where this node group is located
  late final pulumi.Output<String> zone;

  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingPolicy =
        registerOutput<NodeGroupAutoscalingPolicy>('autoscalingPolicy');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.initialSize = registerOutput<int?>('initialSize');
    this.maintenanceInterval = registerOutput<String>('maintenanceInterval');
    this.maintenancePolicy = registerOutput<String?>('maintenancePolicy');
    this.maintenanceWindow =
        registerOutput<NodeGroupMaintenanceWindow?>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.nodeTemplate = registerOutput<String>('nodeTemplate');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.shareSettings =
        registerOutput<NodeGroupShareSettings>('shareSettings');
    this.size = registerOutput<int>('size');
    this.zone = registerOutput<String>('zone');
  }
}
