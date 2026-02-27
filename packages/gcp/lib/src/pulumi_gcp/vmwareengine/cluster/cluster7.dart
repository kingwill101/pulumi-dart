import 'package:pulumi/pulumi.dart';
import '../cluster_autoscaling_settings/cluster_autoscaling_settings.dart';
import '../cluster_node_type_config/cluster_node_type_config.dart';
import 'cluster_args7.dart';

/// A cluster in a private cloud.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
///
/// ## Example Usage
///
/// ### Vmware Engine Cluster Basic
///
///
///
/// ### Vmware Engine Cluster Full
///
///
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `{{parent}}/clusters/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/cluster:Cluster default {{parent}}/clusters/{{name}}
/// ```
class Cluster7 extends CustomResource {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  late final Output<ClusterAutoscalingSettings?> autoscalingSettings;

  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// True if the cluster is a management cluster; false otherwise.
  /// There can only be one management cluster in a private cloud and it has to be the first one.
  late final Output<bool> management;

  /// The ID of the Cluster.
  late final Output<String> name;

  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  late final Output<List<ClusterNodeTypeConfig>?> nodeTypeConfigs;

  /// The resource name of the private cloud to create a new cluster in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final Output<String> parent;

  /// State of the Cluster.
  late final Output<String> state;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  Cluster7(
    String name, {
    ClusterArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingSettings =
        registerOutput<ClusterAutoscalingSettings?>('autoscalingSettings');
    this.createTime = registerOutput<String>('createTime');
    this.management = registerOutput<bool>('management');
    this.name = registerOutput<String>('name');
    this.nodeTypeConfigs =
        registerOutput<List<ClusterNodeTypeConfig>?>('nodeTypeConfigs');
    this.parent = registerOutput<String>('parent');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
