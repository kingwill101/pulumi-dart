import 'package:pulumi/pulumi.dart' as pulumi;
import '../serverless_cache_cache_usage_limits/serverless_cache_cache_usage_limits.dart';
import '../serverless_cache_endpoint/serverless_cache_endpoint.dart';
import '../serverless_cache_reader_endpoint/serverless_cache_reader_endpoint.dart';
import '../serverless_cache_timeouts/serverless_cache_timeouts.dart';
import 'serverless_cache_args.dart';

/// Provides an ElastiCache Serverless Cache resource which manages memcached, redis or valkey.
///
/// ## Example Usage
///
/// ### Memcached Serverless
///
///
///
/// ### Redis OSS Serverless
///
///
///
/// ### Valkey Serverless
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Serverless Cache using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/serverlessCache:ServerlessCache my_cluster my_cluster
/// ```
class ServerlessCache extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the serverless cache.
  late final pulumi.Output<String> arn;

  /// Sets the cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  late final pulumi.Output<ServerlessCacheCacheUsageLimits?> cacheUsageLimits;

  /// Timestamp of when the serverless cache was created.
  late final pulumi.Output<String> createTime;

  /// The daily time that snapshots will be created from the new serverless cache. Only supported for engine types `"redis"` or `"valkey"`. Defaults to `0`.
  late final pulumi.Output<String> dailySnapshotTime;

  /// User-provided description for the serverless cache. The default is NULL.
  late final pulumi.Output<String> description;

  /// Represents the information required for client programs to connect to a cache node. See `endpoint` Block for details.
  late final pulumi.Output<List<ServerlessCacheEndpoint>> endpoints;

  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` or `valkey`.
  late final pulumi.Output<String> engine;

  /// The name and version number of the engine the serverless cache is compatible with.
  late final pulumi.Output<String> fullEngineVersion;

  /// ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.
  late final pulumi.Output<String?> kmsKeyId;

  /// The version of the cache engine that will be used to create the serverless cache.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  late final pulumi.Output<String> majorEngineVersion;

  /// The Cluster name which serves as a unique identifier to the serverless cache
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Represents the information required for client programs to connect to a cache node. See `reader_endpoint` Block for details.
  late final pulumi.Output<List<ServerlessCacheReaderEndpoint>> readerEndpoints;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of the one or more VPC security groups to be associated with the serverless cache. The security group will authorize traffic access for the VPC end-point (private-link). If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC end-point.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// The list of ARN(s) of the snapshot that the new serverless cache will be created from. Only supported for engine types `"redis"` or `"valkey"`.
  late final pulumi.Output<List<String>?> snapshotArnsToRestores;

  /// The number of snapshots that will be retained for the serverless cache that is being created. As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Only supported for engine types `"redis"` or `"valkey"`.
  late final pulumi.Output<int> snapshotRetentionLimit;

  /// The current status of the serverless cache. The allowed values are CREATING, AVAILABLE, DELETING, CREATE-FAILED and MODIFYING.
  late final pulumi.Output<String> status;

  /// A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. All the subnetIds must belong to the same VPC.
  late final pulumi.Output<List<String>> subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ServerlessCacheTimeouts?> timeouts;

  /// The identifier of the UserGroup to be associated with the serverless cache. Available for Redis and Valkey. Default is NULL.
  late final pulumi.Output<String?> userGroupId;

  ServerlessCache(
    String name, {
    ServerlessCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/serverlessCache:ServerlessCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cacheUsageLimits =
        registerOutput<ServerlessCacheCacheUsageLimits?>('cacheUsageLimits');
    this.createTime = registerOutput<String>('createTime');
    this.dailySnapshotTime = registerOutput<String>('dailySnapshotTime');
    this.description = registerOutput<String>('description');
    this.endpoints = registerOutput<List<ServerlessCacheEndpoint>>('endpoints');
    this.engine = registerOutput<String>('engine');
    this.fullEngineVersion = registerOutput<String>('fullEngineVersion');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.name = registerOutput<String>('name');
    this.readerEndpoints =
        registerOutput<List<ServerlessCacheReaderEndpoint>>('readerEndpoints');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.snapshotArnsToRestores =
        registerOutput<List<String>?>('snapshotArnsToRestores');
    this.snapshotRetentionLimit = registerOutput<int>('snapshotRetentionLimit');
    this.status = registerOutput<String>('status');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ServerlessCacheTimeouts?>('timeouts');
    this.userGroupId = registerOutput<String?>('userGroupId');
  }
}
