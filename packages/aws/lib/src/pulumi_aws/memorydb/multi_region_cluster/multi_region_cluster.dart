import 'package:pulumi/pulumi.dart' as pulumi;
import '../multi_region_cluster_timeouts/multi_region_cluster_timeouts.dart';
import 'multi_region_cluster_args.dart';

/// Provides a MemoryDB Multi Region Cluster.
///
/// More information about MemoryDB can be found in the [Developer Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/what-is-memorydb-for-redis.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a cluster using the `multi_region_cluster_name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/multiRegionCluster:MultiRegionCluster example virxk-example
/// ```
class MultiRegionCluster extends pulumi.CustomResource {
  /// The ARN of the multi-region cluster.
  late final pulumi.Output<String> arn;

  /// description for the multi-region cluster.
  late final pulumi.Output<String?> description;

  /// The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  late final pulumi.Output<String> engine;

  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  late final pulumi.Output<String> engineVersion;

  /// The name of the multi-region cluster.
  late final pulumi.Output<String> multiRegionClusterName;

  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  late final pulumi.Output<String> multiRegionClusterNameSuffix;

  /// The name of the multi-region parameter group to be associated with the cluster.
  late final pulumi.Output<String> multiRegionParameterGroupName;

  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> nodeType;

  /// The number of shards for the multi-region cluster.
  late final pulumi.Output<int> numShards;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MultiRegionClusterTimeouts?> timeouts;

  /// A flag to enable in-transit encryption on the cluster.
  late final pulumi.Output<bool> tlsEnabled;
  late final pulumi.Output<String?> updateStrategy;

  MultiRegionCluster(
    String name, {
    MultiRegionClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/multiRegionCluster:MultiRegionCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.multiRegionClusterName =
        registerOutput<String>('multiRegionClusterName');
    this.multiRegionClusterNameSuffix =
        registerOutput<String>('multiRegionClusterNameSuffix');
    this.multiRegionParameterGroupName =
        registerOutput<String>('multiRegionParameterGroupName');
    this.nodeType = registerOutput<String>('nodeType');
    this.numShards = registerOutput<int>('numShards');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<MultiRegionClusterTimeouts?>('timeouts');
    this.tlsEnabled = registerOutput<bool>('tlsEnabled');
    this.updateStrategy = registerOutput<String?>('updateStrategy');
  }
}
