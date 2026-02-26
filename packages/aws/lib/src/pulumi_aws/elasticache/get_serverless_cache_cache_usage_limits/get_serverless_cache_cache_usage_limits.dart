// ignore_for_file: unused_element, unnecessary_cast

import '../get_serverless_cache_cache_usage_limits_data_storage/get_serverless_cache_cache_usage_limits_data_storage.dart';
import '../get_serverless_cache_cache_usage_limits_ecpu_per_second/get_serverless_cache_cache_usage_limits_ecpu_per_second.dart';

class GetServerlessCacheCacheUsageLimits {
  /// The maximum data storage limit in the cache, expressed in Gigabytes. See <span pulumi-lang-nodejs="`dataStorage`" pulumi-lang-dotnet="`DataStorage`" pulumi-lang-go="`dataStorage`" pulumi-lang-python="`data_storage`" pulumi-lang-yaml="`dataStorage`" pulumi-lang-java="`dataStorage`">`data_storage`</span> Block for details.
  final GetServerlessCacheCacheUsageLimitsDataStorage dataStorage;

  /// The configured number of ElastiCache Processing Units (ECPU) the cache can consume per second. See <span pulumi-lang-nodejs="`ecpuPerSecond`" pulumi-lang-dotnet="`EcpuPerSecond`" pulumi-lang-go="`ecpuPerSecond`" pulumi-lang-python="`ecpu_per_second`" pulumi-lang-yaml="`ecpuPerSecond`" pulumi-lang-java="`ecpuPerSecond`">`ecpu_per_second`</span> Block for details.
  final GetServerlessCacheCacheUsageLimitsEcpuPerSecond ecpuPerSecond;

  GetServerlessCacheCacheUsageLimits({
    required this.dataStorage,
    required this.ecpuPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStorage'] = dataStorage.toMap();
    map['ecpuPerSecond'] = ecpuPerSecond.toMap();
    return map;
  }

  factory GetServerlessCacheCacheUsageLimits.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheCacheUsageLimits(
      dataStorage: GetServerlessCacheCacheUsageLimitsDataStorage.fromMap(
          (map['dataStorage'] as Map).cast<String, dynamic>()),
      ecpuPerSecond: GetServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
          (map['ecpuPerSecond'] as Map).cast<String, dynamic>()),
    );
  }
}
