import 'package:pulumi/pulumi.dart';
import '../fleet_default_cluster_config/fleet_default_cluster_config.dart';
import '../fleet_state/fleet_state.dart';
import 'fleet_args.dart';

/// Fleet contains information about a group of clusters.
///
///
/// To get more information about Fleet, see:
///
/// * [API documentation](https://cloud.google.com/anthos/multicluster-management/reference/rest/v1/projects.locations.fleets)
/// * How-to Guides
/// * [Registering a Cluster to a Fleet](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Fleet Basic
///
///
///
///
/// ## Import
///
/// Fleet can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/fleets/default`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Fleet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/fleet:Fleet default projects/{{project}}/locations/global/fleets/default
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/fleet:Fleet default {{project}}
/// ```
class Fleet extends CustomResource {
  /// The time the fleet was created, in RFC3339 text format.
  late final Output<String> createTime;

  /// The default cluster configurations to apply across the fleet.
  /// Structure is documented below.
  late final Output<FleetDefaultClusterConfig?> defaultClusterConfig;

  /// The time the fleet was deleted, in RFC3339 text format.
  late final Output<String> deleteTime;

  /// A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters.
  /// Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.
  late final Output<String?> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The state of the fleet resource.
  /// Structure is documented below.
  late final Output<List<FleetState>> states;

  /// Google-generated UUID for this resource. This is unique across all
  /// Fleet resources. If a Fleet resource is deleted and another
  /// resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// The time the fleet was last updated, in RFC3339 text format.
  late final Output<String> updateTime;

  Fleet(
    String name, {
    FleetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.defaultClusterConfig =
        registerOutput<FleetDefaultClusterConfig?>('defaultClusterConfig');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.project = registerOutput<String>('project');
    this.states = registerOutput<List<FleetState>>('states');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
