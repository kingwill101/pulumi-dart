// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cache_cache_usage_limits.dart';
import 'serverless_cache_endpoint.dart';
import 'serverless_cache_reader_endpoint.dart';
import 'serverless_cache_timeouts.dart';

/// Input properties used for looking up and filtering ServerlessCache resources.
class ServerlessCacheState {
  /// The Amazon Resource Name (ARN) of the serverless cache.
  final pulumi.Input<String>? arn;
  /// Sets the cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  final pulumi.Input<ServerlessCacheCacheUsageLimits>? cacheUsageLimits;
  /// Timestamp of when the serverless cache was created.
  final pulumi.Input<String>? createTime;
  /// The daily time that snapshots will be created from the new serverless cache. Only supported for engine types `"redis"` or `"valkey"`. Defaults to `0`.
  final pulumi.Input<String>? dailySnapshotTime;
  /// User-provided description for the serverless cache. The default is NULL.
  final pulumi.Input<String>? description;
  /// Represents the information required for client programs to connect to a cache node. See `endpoint` Block for details.
  final pulumi.Input<List<ServerlessCacheEndpoint>>? endpoints;
  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` or `valkey`.
  final pulumi.Input<String>? engine;
  /// The name and version number of the engine the serverless cache is compatible with.
  final pulumi.Input<String>? fullEngineVersion;
  /// ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.
  final pulumi.Input<String>? kmsKeyId;
  /// The version of the cache engine that will be used to create the serverless cache.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  final pulumi.Input<String>? majorEngineVersion;
  /// The Cluster name which serves as a unique identifier to the serverless cache
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Represents the information required for client programs to connect to a cache node. See `reader_endpoint` Block for details.
  final pulumi.Input<List<ServerlessCacheReaderEndpoint>>? readerEndpoints;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of the one or more VPC security groups to be associated with the serverless cache. The security group will authorize traffic access for the VPC end-point (private-link). If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC end-point.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The list of ARN(s) of the snapshot that the new serverless cache will be created from. Only supported for engine types `"redis"` or `"valkey"`.
  final pulumi.Input<List<String>>? snapshotArnsToRestores;
  /// The number of snapshots that will be retained for the serverless cache that is being created. As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Only supported for engine types `"redis"` or `"valkey"`.
  final pulumi.Input<int>? snapshotRetentionLimit;
  /// The current status of the serverless cache. The allowed values are CREATING, AVAILABLE, DELETING, CREATE-FAILED and MODIFYING.
  final pulumi.Input<String>? status;
  /// A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. All the subnetIds must belong to the same VPC.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ServerlessCacheTimeouts>? timeouts;
  /// The identifier of the UserGroup to be associated with the serverless cache. Available for Redis and Valkey. Default is NULL.
  final pulumi.Input<String>? userGroupId;

  /// Creates a new [ServerlessCacheState].
  /// [arn] The Amazon Resource Name (ARN) of the serverless cache.
  /// [cacheUsageLimits] Sets the cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  /// [createTime] Timestamp of when the serverless cache was created.
  /// [dailySnapshotTime] The daily time that snapshots will be created from the new serverless cache. Only supported for engine types `"redis"` or `"valkey"`. Defaults to `0`.
  /// [description] User-provided description for the serverless cache. The default is NULL.
  /// [endpoints] Represents the information required for client programs to connect to a cache node. See `endpoint` Block for details.
  /// [engine] Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` or `valkey`.
  /// [fullEngineVersion] The name and version number of the engine the serverless cache is compatible with.
  /// [kmsKeyId] ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.
  /// [majorEngineVersion] The version of the cache engine that will be used to create the serverless cache.
  /// [name] The Cluster name which serves as a unique identifier to the serverless cache
  /// [readerEndpoints] Represents the information required for client programs to connect to a cache node. See `reader_endpoint` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] A list of the one or more VPC security groups to be associated with the serverless cache. The security group will authorize traffic access for the VPC end-point (private-link). If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC end-point.
  /// [snapshotArnsToRestores] The list of ARN(s) of the snapshot that the new serverless cache will be created from. Only supported for engine types `"redis"` or `"valkey"`.
  /// [snapshotRetentionLimit] The number of snapshots that will be retained for the serverless cache that is being created. As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Only supported for engine types `"redis"` or `"valkey"`.
  /// [status] The current status of the serverless cache. The allowed values are CREATING, AVAILABLE, DELETING, CREATE-FAILED and MODIFYING.
  /// [subnetIds] A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. All the subnetIds must belong to the same VPC.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [userGroupId] The identifier of the UserGroup to be associated with the serverless cache. Available for Redis and Valkey. Default is NULL.
  ServerlessCacheState({
    this.arn,
    this.cacheUsageLimits,
    this.createTime,
    this.dailySnapshotTime,
    this.description,
    this.endpoints,
    this.engine,
    this.fullEngineVersion,
    this.kmsKeyId,
    this.majorEngineVersion,
    this.name,
    this.readerEndpoints,
    this.region,
    this.securityGroupIds,
    this.snapshotArnsToRestores,
    this.snapshotRetentionLimit,
    this.status,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cacheUsageLimits': ?pulumi.Input.mapOptionalInputValue<ServerlessCacheCacheUsageLimits, Map<String, dynamic>>(cacheUsageLimits, (value) => value.toMap()),
      'createTime': ?createTime,
      'dailySnapshotTime': ?dailySnapshotTime,
      'description': ?description,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCacheEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ServerlessCacheEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engine': ?engine,
      'fullEngineVersion': ?fullEngineVersion,
      'kmsKeyId': ?kmsKeyId,
      'majorEngineVersion': ?majorEngineVersion,
      'name': ?name,
      'readerEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCacheReaderEndpoint>, List<Map<String, dynamic>>>(readerEndpoints, (value) => pulumi.Input.encodeList<ServerlessCacheReaderEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'snapshotArnsToRestores': ?snapshotArnsToRestores,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'status': ?status,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServerlessCacheTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'userGroupId': ?userGroupId,
    };
  }

  factory ServerlessCacheState.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheUsageLimits: (() { final guardedValue = map['cacheUsageLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessCacheCacheUsageLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dailySnapshotTime: (() { final guardedValue = map['dailySnapshotTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCacheEndpoint>(guardedValue, (value) => ServerlessCacheEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullEngineVersion: (() { final guardedValue = map['fullEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      majorEngineVersion: (() { final guardedValue = map['majorEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readerEndpoints: (() { final guardedValue = map['readerEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCacheReaderEndpoint>(guardedValue, (value) => ServerlessCacheReaderEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotArnsToRestores: (() { final guardedValue = map['snapshotArnsToRestores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessCacheTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

