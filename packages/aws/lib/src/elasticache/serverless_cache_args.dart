// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cache_cache_usage_limits.dart';
import 'serverless_cache_timeouts.dart';

/// {@template pulumi_elasticache_serverless_cache_serverless_cache_args_doc}
/// The set of arguments for ServerlessCache.
/// {@endtemplate}
/// {@macro pulumi_elasticache_serverless_cache_serverless_cache_args_doc}
class ServerlessCacheArgs {
  /// Sets the cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  final pulumi.Input<ServerlessCacheCacheUsageLimits>? cacheUsageLimits;

  /// The daily time that snapshots will be created from the new serverless cache. Only supported for engine types `"redis"` or `"valkey"`. Defaults to `0`.
  final pulumi.Input<String>? dailySnapshotTime;

  /// User-provided description for the serverless cache. The default is NULL.
  final pulumi.Input<String>? description;

  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` or `valkey`.
  final pulumi.Input<String> engine;

  /// ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.
  final pulumi.Input<String>? kmsKeyId;

  /// The version of the cache engine that will be used to create the serverless cache.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  final pulumi.Input<String>? majorEngineVersion;

  /// The Cluster name which serves as a unique identifier to the serverless cache
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of the one or more VPC security groups to be associated with the serverless cache. The security group will authorize traffic access for the VPC end-point (private-link). If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC end-point.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// The list of ARN(s) of the snapshot that the new serverless cache will be created from. Only supported for engine types `"redis"` or `"valkey"`.
  final pulumi.Input<List<String>>? snapshotArnsToRestores;

  /// The number of snapshots that will be retained for the serverless cache that is being created. As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Only supported for engine types `"redis"` or `"valkey"`.
  final pulumi.Input<int>? snapshotRetentionLimit;

  /// A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. All the subnetIds must belong to the same VPC.
  final pulumi.Input<List<String>>? subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ServerlessCacheTimeouts>? timeouts;

  /// The identifier of the UserGroup to be associated with the serverless cache. Available for Redis and Valkey. Default is NULL.
  final pulumi.Input<String>? userGroupId;

  /// Creates a new [ServerlessCacheArgs].
  /// [cacheUsageLimits] Sets the cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  /// [dailySnapshotTime] The daily time that snapshots will be created from the new serverless cache. Only supported for engine types `"redis"` or `"valkey"`. Defaults to `0`.
  /// [description] User-provided description for the serverless cache. The default is NULL.
  /// [engine] Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` or `valkey`.
  /// [kmsKeyId] ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.
  /// [majorEngineVersion] The version of the cache engine that will be used to create the serverless cache.
  /// [name] The Cluster name which serves as a unique identifier to the serverless cache
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] A list of the one or more VPC security groups to be associated with the serverless cache. The security group will authorize traffic access for the VPC end-point (private-link). If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC end-point.
  /// [snapshotArnsToRestores] The list of ARN(s) of the snapshot that the new serverless cache will be created from. Only supported for engine types `"redis"` or `"valkey"`.
  /// [snapshotRetentionLimit] The number of snapshots that will be retained for the serverless cache that is being created. As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Only supported for engine types `"redis"` or `"valkey"`.
  /// [subnetIds] A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. All the subnetIds must belong to the same VPC.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [userGroupId] The identifier of the UserGroup to be associated with the serverless cache. Available for Redis and Valkey. Default is NULL.
  ServerlessCacheArgs({
    ServerlessCacheCacheUsageLimits? cacheUsageLimits,
    String? dailySnapshotTime,
    String? description,
    required String engine,
    String? kmsKeyId,
    String? majorEngineVersion,
    String? name,
    String? region,
    List<String>? securityGroupIds,
    List<String>? snapshotArnsToRestores,
    int? snapshotRetentionLimit,
    List<String>? subnetIds,
    Map<String, String>? tags,
    ServerlessCacheTimeouts? timeouts,
    String? userGroupId,
  }) : cacheUsageLimits =
           pulumi.Input.asOptionalInput<ServerlessCacheCacheUsageLimits>(
             cacheUsageLimits,
           ),
       dailySnapshotTime = pulumi.Input.asOptionalInput<String>(
         dailySnapshotTime,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       engine = pulumi.Input.asInput<String>(engine),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       majorEngineVersion = pulumi.Input.asOptionalInput<String>(
         majorEngineVersion,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(
         securityGroupIds,
       ),
       snapshotArnsToRestores = pulumi.Input.asOptionalInput<List<String>>(
         snapshotArnsToRestores,
       ),
       snapshotRetentionLimit = pulumi.Input.asOptionalInput<int>(
         snapshotRetentionLimit,
       ),
       subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<ServerlessCacheTimeouts>(
         timeouts,
       ),
       userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheUsageLimits':
          ?pulumi.Input.mapOptionalInputValue<
            ServerlessCacheCacheUsageLimits,
            Map<String, dynamic>
          >(cacheUsageLimits, (value) => value.toMap()),
      'dailySnapshotTime': ?dailySnapshotTime,
      'description': ?description,
      'engine': engine,
      'kmsKeyId': ?kmsKeyId,
      'majorEngineVersion': ?majorEngineVersion,
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'snapshotArnsToRestores': ?snapshotArnsToRestores,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ServerlessCacheTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'userGroupId': ?userGroupId,
    };
  }

  factory ServerlessCacheArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheArgs(
      cacheUsageLimits: map['cacheUsageLimits'] == null
          ? null
          : ServerlessCacheCacheUsageLimits.fromMap(
              (map['cacheUsageLimits'] as Map).cast<String, dynamic>(),
            ),
      dailySnapshotTime: map['dailySnapshotTime'] == null
          ? null
          : map['dailySnapshotTime'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      engine: map['engine'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      majorEngineVersion: map['majorEngineVersion'] == null
          ? null
          : map['majorEngineVersion'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      snapshotArnsToRestores: map['snapshotArnsToRestores'] == null
          ? null
          : (map['snapshotArnsToRestores'] as List).cast<String>(),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null
          ? null
          : map['snapshotRetentionLimit'] as int,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ServerlessCacheTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      userGroupId: map['userGroupId'] == null
          ? null
          : map['userGroupId'] as String,
    );
  }
}
