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
    pulumi.Output<String>? arn,
    pulumi.Output<ServerlessCacheCacheUsageLimits>? cacheUsageLimits,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dailySnapshotTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<ServerlessCacheEndpoint>>? endpoints,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? fullEngineVersion,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? majorEngineVersion,
    pulumi.Output<String>? name,
    pulumi.Output<List<ServerlessCacheReaderEndpoint>>? readerEndpoints,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? snapshotArnsToRestores,
    pulumi.Output<int>? snapshotRetentionLimit,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ServerlessCacheTimeouts>? timeouts,
    pulumi.Output<String>? userGroupId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cacheUsageLimits = pulumi.Input.asOptionalInput<ServerlessCacheCacheUsageLimits>(cacheUsageLimits),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dailySnapshotTime = pulumi.Input.asOptionalInput<String>(dailySnapshotTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoints = pulumi.Input.asOptionalInput<List<ServerlessCacheEndpoint>>(endpoints),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      fullEngineVersion = pulumi.Input.asOptionalInput<String>(fullEngineVersion),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      majorEngineVersion = pulumi.Input.asOptionalInput<String>(majorEngineVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      readerEndpoints = pulumi.Input.asOptionalInput<List<ServerlessCacheReaderEndpoint>>(readerEndpoints),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      snapshotArnsToRestores = pulumi.Input.asOptionalInput<List<String>>(snapshotArnsToRestores),
      snapshotRetentionLimit = pulumi.Input.asOptionalInput<int>(snapshotRetentionLimit),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ServerlessCacheTimeouts>(timeouts),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cacheUsageLimits: map['cacheUsageLimits'] == null ? null : pulumi.Output.create<ServerlessCacheCacheUsageLimits>(ServerlessCacheCacheUsageLimits.fromMap((map['cacheUsageLimits'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dailySnapshotTime: map['dailySnapshotTime'] == null ? null : pulumi.Output.create<String>(map['dailySnapshotTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<ServerlessCacheEndpoint>>(pulumi.Input.decodeList<ServerlessCacheEndpoint>(map['endpoints'], (value) => ServerlessCacheEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      fullEngineVersion: map['fullEngineVersion'] == null ? null : pulumi.Output.create<String>(map['fullEngineVersion'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      majorEngineVersion: map['majorEngineVersion'] == null ? null : pulumi.Output.create<String>(map['majorEngineVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      readerEndpoints: map['readerEndpoints'] == null ? null : pulumi.Output.create<List<ServerlessCacheReaderEndpoint>>(pulumi.Input.decodeList<ServerlessCacheReaderEndpoint>(map['readerEndpoints'], (value) => ServerlessCacheReaderEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      snapshotArnsToRestores: map['snapshotArnsToRestores'] == null ? null : pulumi.Output.create<List<String>>((map['snapshotArnsToRestores'] as List).cast<String>()),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null ? null : pulumi.Output.create<int>(map['snapshotRetentionLimit'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ServerlessCacheTimeouts>(ServerlessCacheTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
    );
  }
}

