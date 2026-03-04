// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_cache_cache_usage_limits_data_storage.dart';
import 'get_serverless_cache_cache_usage_limits_ecpu_per_second.dart';

class GetServerlessCacheCacheUsageLimits {
  /// The maximum data storage limit in the cache, expressed in Gigabytes. See `data_storage` Block for details.
  final pulumi.Input<GetServerlessCacheCacheUsageLimitsDataStorage> dataStorage;

  /// The configured number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpu_per_second` Block for details.
  final pulumi.Input<GetServerlessCacheCacheUsageLimitsEcpuPerSecond>
  ecpuPerSecond;

  /// Creates a new [GetServerlessCacheCacheUsageLimits].
  /// [dataStorage] The maximum data storage limit in the cache, expressed in Gigabytes. See `data_storage` Block for details.
  /// [ecpuPerSecond] The configured number of ElastiCache Processing Units (ECPU) the cache can consume per second. See `ecpu_per_second` Block for details.
  GetServerlessCacheCacheUsageLimits({
    required this.dataStorage,
    required this.ecpuPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStorage':
          pulumi.Input.mapInputValue<
            GetServerlessCacheCacheUsageLimitsDataStorage,
            Map<String, dynamic>
          >(dataStorage, (value) => value.toMap()),
      'ecpuPerSecond':
          pulumi.Input.mapInputValue<
            GetServerlessCacheCacheUsageLimitsEcpuPerSecond,
            Map<String, dynamic>
          >(ecpuPerSecond, (value) => value.toMap()),
    };
  }

  factory GetServerlessCacheCacheUsageLimits.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheCacheUsageLimits(
      dataStorage: pulumi.Input.fromValue(
        GetServerlessCacheCacheUsageLimitsDataStorage.fromMap(
          (map['dataStorage']! as Map).cast<String, dynamic>(),
        ),
      ),
      ecpuPerSecond: pulumi.Input.fromValue(
        GetServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
          (map['ecpuPerSecond']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
