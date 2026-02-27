// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../serverless_cache_cache_usage_limits_data_storage/serverless_cache_cache_usage_limits_data_storage.dart';
import '../serverless_cache_cache_usage_limits_ecpu_per_second/serverless_cache_cache_usage_limits_ecpu_per_second.dart';

class ServerlessCacheCacheUsageLimits {
  /// The maximum data storage limit in the cache, expressed in Gigabytes. See `data_storage` Block for details.
  final ServerlessCacheCacheUsageLimitsDataStorage? dataStorage;

  /// The configuration for the number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpu_per_second` Block for details.
  final List<ServerlessCacheCacheUsageLimitsEcpuPerSecond>? ecpuPerSeconds;

  ServerlessCacheCacheUsageLimits({
    this.dataStorage,
    this.ecpuPerSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataStorageValue = dataStorage;
    if (dataStorageValue != null) {
      map['dataStorage'] = dataStorageValue.toMap();
    }
    final ecpuPerSecondsValue = ecpuPerSeconds;
    if (ecpuPerSecondsValue != null) {
      map['ecpuPerSeconds'] = pulumi.Input.encodeList<
          ServerlessCacheCacheUsageLimitsEcpuPerSecond,
          Map<String, dynamic>>(ecpuPerSecondsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServerlessCacheCacheUsageLimits.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheCacheUsageLimits(
      dataStorage: map['dataStorage'] == null
          ? null
          : ServerlessCacheCacheUsageLimitsDataStorage.fromMap(
              (map['dataStorage'] as Map).cast<String, dynamic>()),
      ecpuPerSeconds: map['ecpuPerSeconds'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServerlessCacheCacheUsageLimitsEcpuPerSecond>(
              map['ecpuPerSeconds'],
              (value) => ServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
