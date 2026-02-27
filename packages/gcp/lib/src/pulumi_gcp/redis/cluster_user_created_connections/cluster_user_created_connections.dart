import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_user_created_connections_cluster_endpoint/cluster_user_created_connections_cluster_endpoint.dart';
import 'cluster_user_created_connections_args.dart';

/// ## Example Usage
///
/// ### Redis Cluster User Created Connections
///
///
///
/// ### Redis Cluster User And Auto Created Connections
///
///
///
///
/// ## Import
///
/// ClusterUserCreatedConnections can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/clusters/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ClusterUserCreatedConnections can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default projects/{{project}}/locations/{{region}}/clusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections default {{name}}
/// ```
class ClusterUserCreatedConnections extends pulumi.CustomResource {
  /// A list of cluster endpoints
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterUserCreatedConnectionsClusterEndpoint>?>
      clusterEndpoints;

  /// The name of the Redis cluster these endpoints should be added to.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The name of the region of the Redis cluster these endpoints should be added to.
  late final pulumi.Output<String> region;

  ClusterUserCreatedConnections(
    String name, {
    ClusterUserCreatedConnectionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:redis/clusterUserCreatedConnections:ClusterUserCreatedConnections',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterEndpoints =
        registerOutput<List<ClusterUserCreatedConnectionsClusterEndpoint>?>(
            'clusterEndpoints');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
