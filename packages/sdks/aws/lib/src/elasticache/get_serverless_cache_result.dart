// ignore_for_file: unused_element, unnecessary_cast

import 'get_serverless_cache_cache_usage_limits.dart';
import 'get_serverless_cache_endpoint.dart';
import 'get_serverless_cache_reader_endpoint.dart';

/// Result data returned by getServerlessCache.
class GetServerlessCacheResult {
  /// ARN of the serverless cache.
  final String? arn;
  /// The cache usage limits for storage and ElastiCache Processing Units for the cache. See `cacheUsageLimits` Block for details.
  final GetServerlessCacheCacheUsageLimits? cacheUsageLimits;
  /// Timestamp of when the serverless cache was created.
  final String? createTime;
  /// The daily time that snapshots will be created from the new serverless cache. Only available for engine types `"redis"` and `"valkey"`.
  final String? dailySnapshotTime;
  /// Description of the serverless cache.
  final String? description;
  /// Represents the information required for client programs to connect to the cache. See `endpoint` Block for details.
  final GetServerlessCacheEndpoint? endpoint;
  /// Name of the cache engine.
  final String? engine;
  /// The name and version number of the engine the serverless cache is compatible with.
  final String? fullEngineVersion;
  /// ARN of the customer managed key for encrypting the data at rest.
  final String? kmsKeyId;
  /// The version number of the engine the serverless cache is compatible with.
  final String? majorEngineVersion;
  final String? name;
  /// Represents the information required for client programs to connect to a cache node. See `readerEndpoint` Block for details.
  final GetServerlessCacheReaderEndpoint? readerEndpoint;
  final String? region;
  /// A list of the one or more VPC security groups associated with the serverless cache.
  final List<String>? securityGroupIds;
  /// The number of snapshots that will be retained for the serverless cache. Available for Redis only.
  final int? snapshotRetentionLimit;
  /// The current status of the serverless cache.
  final String? status;
  /// A list of the identifiers of the subnets where the VPC endpoint for the serverless cache are deployed.
  final List<String>? subnetIds;
  /// The identifier of the UserGroup associated with the serverless cache. Available for Redis and Valkey.
  final String? userGroupId;

  /// Creates a new [GetServerlessCacheResult].
  /// [arn] ARN of the serverless cache.
  /// [cacheUsageLimits] The cache usage limits for storage and ElastiCache Processing Units for the cache. See `cacheUsageLimits` Block for details.
  /// [createTime] Timestamp of when the serverless cache was created.
  /// [dailySnapshotTime] The daily time that snapshots will be created from the new serverless cache. Only available for engine types `"redis"` and `"valkey"`.
  /// [description] Description of the serverless cache.
  /// [endpoint] Represents the information required for client programs to connect to the cache. See `endpoint` Block for details.
  /// [engine] Name of the cache engine.
  /// [fullEngineVersion] The name and version number of the engine the serverless cache is compatible with.
  /// [kmsKeyId] ARN of the customer managed key for encrypting the data at rest.
  /// [majorEngineVersion] The version number of the engine the serverless cache is compatible with.
  /// [name] Optional.
  /// [readerEndpoint] Represents the information required for client programs to connect to a cache node. See `readerEndpoint` Block for details.
  /// [region] Optional.
  /// [securityGroupIds] A list of the one or more VPC security groups associated with the serverless cache.
  /// [snapshotRetentionLimit] The number of snapshots that will be retained for the serverless cache. Available for Redis only.
  /// [status] The current status of the serverless cache.
  /// [subnetIds] A list of the identifiers of the subnets where the VPC endpoint for the serverless cache are deployed.
  /// [userGroupId] The identifier of the UserGroup associated with the serverless cache. Available for Redis and Valkey.
  const GetServerlessCacheResult({
    this.arn,
    this.cacheUsageLimits,
    this.createTime,
    this.dailySnapshotTime,
    this.description,
    this.endpoint,
    this.engine,
    this.fullEngineVersion,
    this.kmsKeyId,
    this.majorEngineVersion,
    this.name,
    this.readerEndpoint,
    this.region,
    this.securityGroupIds,
    this.snapshotRetentionLimit,
    this.status,
    this.subnetIds,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cacheUsageLimits': ?cacheUsageLimits?.toMap(),
      'createTime': ?createTime,
      'dailySnapshotTime': ?dailySnapshotTime,
      'description': ?description,
      'endpoint': ?endpoint?.toMap(),
      'engine': ?engine,
      'fullEngineVersion': ?fullEngineVersion,
      'kmsKeyId': ?kmsKeyId,
      'majorEngineVersion': ?majorEngineVersion,
      'name': ?name,
      'readerEndpoint': ?readerEndpoint?.toMap(),
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'status': ?status,
      'subnetIds': ?subnetIds,
      'userGroupId': ?userGroupId,
    };
  }

  factory GetServerlessCacheResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cacheUsageLimits: (() { final guardedValue = map['cacheUsageLimits']; if (guardedValue == null) return null; return GetServerlessCacheCacheUsageLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dailySnapshotTime: (() { final guardedValue = map['dailySnapshotTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return GetServerlessCacheEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fullEngineVersion: (() { final guardedValue = map['fullEngineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      majorEngineVersion: (() { final guardedValue = map['majorEngineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readerEndpoint: (() { final guardedValue = map['readerEndpoint']; if (guardedValue == null) return null; return GetServerlessCacheReaderEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
