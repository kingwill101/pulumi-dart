// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../serverless_cache_cache_usage_limits_data_storage/serverless_cache_cache_usage_limits_data_storage.dart';
import '../serverless_cache_cache_usage_limits_ecpu_per_second/serverless_cache_cache_usage_limits_ecpu_per_second.dart';

class ServerlessCacheCacheUsageLimits {
  /// The maximum data storage limit in the cache, expressed in Gigabytes. See <span pulumi-lang-nodejs="`dataStorage`" pulumi-lang-dotnet="`DataStorage`" pulumi-lang-go="`dataStorage`" pulumi-lang-python="`data_storage`" pulumi-lang-yaml="`dataStorage`" pulumi-lang-java="`dataStorage`">`data_storage`</span> Block for details.
  final ServerlessCacheCacheUsageLimitsDataStorage? dataStorage;

  /// The configuration for the number of ElastiCache Processing Units (ECPU) the cache can consume per second. See <span pulumi-lang-nodejs="`ecpuPerSecond`" pulumi-lang-dotnet="`EcpuPerSecond`" pulumi-lang-go="`ecpuPerSecond`" pulumi-lang-python="`ecpu_per_second`" pulumi-lang-yaml="`ecpuPerSecond`" pulumi-lang-java="`ecpuPerSecond`">`ecpu_per_second`</span> Block for details.
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
      map['ecpuPerSeconds'] = Input.encodeList<
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
          : Input.decodeList<ServerlessCacheCacheUsageLimitsEcpuPerSecond>(
              map['ecpuPerSeconds'],
              (value) => ServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
