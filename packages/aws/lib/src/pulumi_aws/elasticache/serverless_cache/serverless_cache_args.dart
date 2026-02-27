// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../serverless_cache_cache_usage_limits/serverless_cache_cache_usage_limits.dart';
import '../serverless_cache_timeouts/serverless_cache_timeouts.dart';

/// The set of arguments for ServerlessCache.
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

  ServerlessCacheArgs({
    this.cacheUsageLimits,
    this.dailySnapshotTime,
    this.description,
    required this.engine,
    this.kmsKeyId,
    this.majorEngineVersion,
    this.name,
    this.region,
    this.securityGroupIds,
    this.snapshotArnsToRestores,
    this.snapshotRetentionLimit,
    this.subnetIds,
    this.tags,
    this.timeouts,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cacheUsageLimitsValue = cacheUsageLimits;
    if (cacheUsageLimitsValue != null) {
      map['cacheUsageLimits'] = pulumi.Input.mapOptionalInputValue<
              ServerlessCacheCacheUsageLimits, Map<String, dynamic>>(
          cacheUsageLimitsValue, (value) => value.toMap());
    }
    final dailySnapshotTimeValue = dailySnapshotTime;
    if (dailySnapshotTimeValue != null) {
      map['dailySnapshotTime'] = dailySnapshotTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['engine'] = engine;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final majorEngineVersionValue = majorEngineVersion;
    if (majorEngineVersionValue != null) {
      map['majorEngineVersion'] = majorEngineVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final snapshotArnsToRestoresValue = snapshotArnsToRestores;
    if (snapshotArnsToRestoresValue != null) {
      map['snapshotArnsToRestores'] = snapshotArnsToRestoresValue;
    }
    final snapshotRetentionLimitValue = snapshotRetentionLimit;
    if (snapshotRetentionLimitValue != null) {
      map['snapshotRetentionLimit'] = snapshotRetentionLimitValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ServerlessCacheTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final userGroupIdValue = userGroupId;
    if (userGroupIdValue != null) {
      map['userGroupId'] = userGroupIdValue;
    }
    return map;
  }

  factory ServerlessCacheArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheArgs(
      cacheUsageLimits:
          pulumi.Input.asOptionalInput<ServerlessCacheCacheUsageLimits>(
              map['cacheUsageLimits']),
      dailySnapshotTime:
          pulumi.Input.asOptionalInput<String>(map['dailySnapshotTime']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      engine: pulumi.Input.asInput<String>(map['engine']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      majorEngineVersion:
          pulumi.Input.asOptionalInput<String>(map['majorEngineVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      snapshotArnsToRestores: pulumi.Input.asOptionalInput<List<String>>(
          map['snapshotArnsToRestores']),
      snapshotRetentionLimit:
          pulumi.Input.asOptionalInput<int>(map['snapshotRetentionLimit']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ServerlessCacheTimeouts>(
          map['timeouts']),
      userGroupId: pulumi.Input.asOptionalInput<String>(map['userGroupId']),
    );
  }
}
