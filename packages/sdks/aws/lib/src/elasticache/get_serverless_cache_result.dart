// ignore_for_file: unused_element, unnecessary_cast

import 'get_serverless_cache_cache_usage_limits.dart';
import 'get_serverless_cache_endpoint.dart';
import 'get_serverless_cache_reader_endpoint.dart';

/// Result data returned by getServerlessCache.
class GetServerlessCacheResult {
  /// The Amazon Resource Name (ARN) of the serverless cache.
  final String arn;
  /// The cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  final GetServerlessCacheCacheUsageLimits cacheUsageLimits;
  /// Timestamp of when the serverless cache was created.
  final String createTime;
  /// The daily time that snapshots will be created from the new serverless cache. Only available for engine types `"redis"` and `"valkey"`.
  final String dailySnapshotTime;
  /// Description of the serverless cache.
  final String description;
  /// Represents the information required for client programs to connect to the cache. See `endpoint` Block for details.
  final GetServerlessCacheEndpoint endpoint;
  /// Name of the cache engine.
  final String engine;
  /// The name and version number of the engine the serverless cache is compatible with.
  final String fullEngineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN of the customer managed key for encrypting the data at rest.
  final String kmsKeyId;
  /// The version number of the engine the serverless cache is compatible with.
  final String majorEngineVersion;
  final String name;
  /// Represents the information required for client programs to connect to a cache node. See `reader_endpoint` Block for details.
  final GetServerlessCacheReaderEndpoint readerEndpoint;
  final String region;
  /// A list of the one or more VPC security groups associated with the serverless cache.
  final List<String> securityGroupIds;
  /// The number of snapshots that will be retained for the serverless cache. Available for Redis only.
  final int snapshotRetentionLimit;
  /// The current status of the serverless cache.
  final String status;
  /// A list of the identifiers of the subnets where the VPC endpoint for the serverless cache are deployed.
  final List<String> subnetIds;
  /// The identifier of the UserGroup associated with the serverless cache. Available for Redis only.
  final String userGroupId;

  /// Creates a new [GetServerlessCacheResult].
  /// [arn] The Amazon Resource Name (ARN) of the serverless cache.
  /// [cacheUsageLimits] The cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  /// [createTime] Timestamp of when the serverless cache was created.
  /// [dailySnapshotTime] The daily time that snapshots will be created from the new serverless cache. Only available for engine types `"redis"` and `"valkey"`.
  /// [description] Description of the serverless cache.
  /// [endpoint] Represents the information required for client programs to connect to the cache. See `endpoint` Block for details.
  /// [engine] Name of the cache engine.
  /// [fullEngineVersion] The name and version number of the engine the serverless cache is compatible with.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN of the customer managed key for encrypting the data at rest.
  /// [majorEngineVersion] The version number of the engine the serverless cache is compatible with.
  /// [name] Required.
  /// [readerEndpoint] Represents the information required for client programs to connect to a cache node. See `reader_endpoint` Block for details.
  /// [region] Required.
  /// [securityGroupIds] A list of the one or more VPC security groups associated with the serverless cache.
  /// [snapshotRetentionLimit] The number of snapshots that will be retained for the serverless cache. Available for Redis only.
  /// [status] The current status of the serverless cache.
  /// [subnetIds] A list of the identifiers of the subnets where the VPC endpoint for the serverless cache are deployed.
  /// [userGroupId] The identifier of the UserGroup associated with the serverless cache. Available for Redis only.
  GetServerlessCacheResult({
    required this.arn,
    required this.cacheUsageLimits,
    required this.createTime,
    required this.dailySnapshotTime,
    required this.description,
    required this.endpoint,
    required this.engine,
    required this.fullEngineVersion,
    required this.id,
    required this.kmsKeyId,
    required this.majorEngineVersion,
    required this.name,
    required this.readerEndpoint,
    required this.region,
    required this.securityGroupIds,
    required this.snapshotRetentionLimit,
    required this.status,
    required this.subnetIds,
    required this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'cacheUsageLimits': cacheUsageLimits.toMap(),
      'createTime': createTime,
      'dailySnapshotTime': dailySnapshotTime,
      'description': description,
      'endpoint': endpoint.toMap(),
      'engine': engine,
      'fullEngineVersion': fullEngineVersion,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'majorEngineVersion': majorEngineVersion,
      'name': name,
      'readerEndpoint': readerEndpoint.toMap(),
      'region': region,
      'securityGroupIds': securityGroupIds,
      'snapshotRetentionLimit': snapshotRetentionLimit,
      'status': status,
      'subnetIds': subnetIds,
      'userGroupId': userGroupId,
    };
  }

  factory GetServerlessCacheResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheResult(
      arn: map['arn'] as String,
      cacheUsageLimits: GetServerlessCacheCacheUsageLimits.fromMap((map['cacheUsageLimits']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dailySnapshotTime: map['dailySnapshotTime'] as String,
      description: map['description'] as String,
      endpoint: GetServerlessCacheEndpoint.fromMap((map['endpoint']! as Map).cast<String, dynamic>()),
      engine: map['engine'] as String,
      fullEngineVersion: map['fullEngineVersion'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      majorEngineVersion: map['majorEngineVersion'] as String,
      name: map['name'] as String,
      readerEndpoint: GetServerlessCacheReaderEndpoint.fromMap((map['readerEndpoint']! as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] as int,
      status: map['status'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      userGroupId: map['userGroupId'] as String,
    );
  }
}

