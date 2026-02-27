import 'package:pulumi/pulumi.dart';
import 'cluster_endpoint_args2.dart';

/// Manages an RDS Aurora Cluster Custom Endpoint.
/// You can refer to the [User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html#Aurora.Endpoints.Cluster).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Clusters Endpoint using the `cluster_endpoint_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterEndpoint:ClusterEndpoint custom_reader aurora-prod-cluster-custom-reader
/// ```
///
/// [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html#Aurora.Endpoints.Cluster
class ClusterEndpoint2 extends CustomResource {
  /// Amazon Resource Name (ARN) of cluster
  late final Output<String> arn;

  /// The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  late final Output<String> clusterEndpointIdentifier;

  /// The cluster identifier.
  late final Output<String> clusterIdentifier;

  /// The type of the endpoint. One of: READER , ANY .
  late final Output<String> customEndpointType;

  /// A custom endpoint for the Aurora cluster
  late final Output<String> endpoint;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with `static_members`.
  late final Output<List<String>?> excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of DB instance identifiers that are part of the custom endpoint group. Conflicts with `excluded_members`.
  late final Output<List<String>?> staticMembers;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster-endpoint.html).
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterEndpoint2(
    String name, {
    ClusterEndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterEndpoint:ClusterEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterEndpointIdentifier =
        registerOutput<String>('clusterEndpointIdentifier');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.customEndpointType = registerOutput<String>('customEndpointType');
    this.endpoint = registerOutput<String>('endpoint');
    this.excludedMembers = registerOutput<List<String>?>('excludedMembers');
    this.region = registerOutput<String>('region');
    this.staticMembers = registerOutput<List<String>?>('staticMembers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
