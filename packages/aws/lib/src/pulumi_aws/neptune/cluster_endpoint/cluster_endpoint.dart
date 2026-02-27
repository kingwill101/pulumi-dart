import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_args.dart';

/// Provides an Neptune Cluster Endpoint Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.ClusterEndpoint` using the `cluster-identifier:endpoint-identfier`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterEndpoint:ClusterEndpoint example my-cluster:my-endpoint
/// ```
class ClusterEndpoint extends pulumi.CustomResource {
  /// The Neptune Cluster Endpoint Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// The identifier of the endpoint.
  late final pulumi.Output<String> clusterEndpointIdentifier;

  /// The DB cluster identifier of the DB cluster associated with the endpoint.
  late final pulumi.Output<String> clusterIdentifier;

  /// The DNS address of the endpoint.
  late final pulumi.Output<String> endpoint;

  /// The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
  late final pulumi.Output<String> endpointType;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
  late final pulumi.Output<List<String>?> excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of DB instance identifiers that are part of the custom endpoint group.
  late final pulumi.Output<List<String>?> staticMembers;

  /// A map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterEndpoint(
    String name, {
    ClusterEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterEndpoint:ClusterEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterEndpointIdentifier =
        registerOutput<String>('clusterEndpointIdentifier');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointType = registerOutput<String>('endpointType');
    this.excludedMembers = registerOutput<List<String>?>('excludedMembers');
    this.region = registerOutput<String>('region');
    this.staticMembers = registerOutput<List<String>?>('staticMembers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
