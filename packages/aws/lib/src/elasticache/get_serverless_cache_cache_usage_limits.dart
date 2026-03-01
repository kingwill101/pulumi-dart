// ignore_for_file: unused_element, unnecessary_cast

import 'get_serverless_cache_cache_usage_limits_data_storage.dart';
import 'get_serverless_cache_cache_usage_limits_ecpu_per_second.dart';

class GetServerlessCacheCacheUsageLimits {
  /// The maximum data storage limit in the cache, expressed in Gigabytes. See `data_storage` Block for details.
  final GetServerlessCacheCacheUsageLimitsDataStorage dataStorage;

  /// The configured number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpu_per_second` Block for details.
  final GetServerlessCacheCacheUsageLimitsEcpuPerSecond ecpuPerSecond;

  /// Creates a new [GetServerlessCacheCacheUsageLimits].
  /// [dataStorage] The maximum data storage limit in the cache, expressed in Gigabytes. See `data_storage` Block for details.
  /// [ecpuPerSecond] The configured number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpu_per_second` Block for details.
  GetServerlessCacheCacheUsageLimits({
    required this.dataStorage,
    required this.ecpuPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStorage': dataStorage.toMap(),
      'ecpuPerSecond': ecpuPerSecond.toMap(),
    };
  }

  factory GetServerlessCacheCacheUsageLimits.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheCacheUsageLimits(
      dataStorage: GetServerlessCacheCacheUsageLimitsDataStorage.fromMap(
        (map['dataStorage'] as Map).cast<String, dynamic>(),
      ),
      ecpuPerSecond: GetServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
        (map['ecpuPerSecond'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
