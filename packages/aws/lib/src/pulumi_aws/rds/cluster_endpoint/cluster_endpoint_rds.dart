import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_rds_args.dart';

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
class ClusterEndpointRds extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of cluster
  late final pulumi.Output<String> arn;

  /// The identifier to use for the new endpoint. This parameter is stored as a lowercase string.
  late final pulumi.Output<String> clusterEndpointIdentifier;

  /// The cluster identifier.
  late final pulumi.Output<String> clusterIdentifier;

  /// The type of the endpoint. One of: READER , ANY .
  late final pulumi.Output<String> customEndpointType;

  /// A custom endpoint for the Aurora cluster
  late final pulumi.Output<String> endpoint;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with `static_members`.
  late final pulumi.Output<List<String>?> excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of DB instance identifiers that are part of the custom endpoint group. Conflicts with `excluded_members`.
  late final pulumi.Output<List<String>?> staticMembers;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster-endpoint.html).
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterEndpointRds(
    String name, {
    ClusterEndpointRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
