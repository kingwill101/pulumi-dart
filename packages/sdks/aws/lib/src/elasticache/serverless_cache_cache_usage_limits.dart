// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cache_cache_usage_limits_data_storage.dart';
import 'serverless_cache_cache_usage_limits_ecpu_per_second.dart';

class ServerlessCacheCacheUsageLimits {
  /// The maximum data storage limit in the cache, expressed in Gigabytes. See `dataStorage` Block for details.
  final pulumi.Input<ServerlessCacheCacheUsageLimitsDataStorage>? dataStorage;
  /// The configuration for the number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpuPerSecond` Block for details.
  final pulumi.Input<List<ServerlessCacheCacheUsageLimitsEcpuPerSecond>>? ecpuPerSeconds;

  /// Creates a new [ServerlessCacheCacheUsageLimits].
  /// [dataStorage] The maximum data storage limit in the cache, expressed in Gigabytes. See `dataStorage` Block for details.
  /// [ecpuPerSeconds] The configuration for the number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpuPerSecond` Block for details.
  const ServerlessCacheCacheUsageLimits({
    this.dataStorage,
    this.ecpuPerSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStorage': ?pulumi.Input.mapOptionalInputValue<ServerlessCacheCacheUsageLimitsDataStorage, Map<String, dynamic>>(dataStorage, (value) => value.toMap()),
      'ecpuPerSeconds': ?pulumi.Input.mapOptionalInputValue<List<ServerlessCacheCacheUsageLimitsEcpuPerSecond>, List<Map<String, dynamic>>>(ecpuPerSeconds, (value) => pulumi.Input.encodeList<ServerlessCacheCacheUsageLimitsEcpuPerSecond, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessCacheCacheUsageLimits.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheCacheUsageLimits(
      dataStorage: (() { final guardedValue = map['dataStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessCacheCacheUsageLimitsDataStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ecpuPerSeconds: (() { final guardedValue = map['ecpuPerSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessCacheCacheUsageLimitsEcpuPerSecond>(guardedValue, (value) => ServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
