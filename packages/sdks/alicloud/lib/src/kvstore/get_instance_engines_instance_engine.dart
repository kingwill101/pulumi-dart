// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceEnginesInstanceEngine {
  /// Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  final String engine;
  /// Database version required by the user. Value options of Redis can refer to the latest docs [detail info](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createinstance-redis) `EngineVersion`. Value of Memcache should be empty.
  final String engineVersion;
  /// The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final String zoneId;

  /// Creates a new [GetInstanceEnginesInstanceEngine].
  /// [engine] Database type. Options are `Redis`, `Memcache`. Default to `Redis`.
  /// [engineVersion] Database version required by the user. Value options of Redis can refer to the latest docs [detail info](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-createinstance-redis) `EngineVersion`. Value of Memcache should be empty.
  /// [zoneId] The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  GetInstanceEnginesInstanceEngine({
    required this.engine,
    required this.engineVersion,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'engineVersion': engineVersion,
      'zoneId': zoneId,
    };
  }

  factory GetInstanceEnginesInstanceEngine.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesInstanceEngine(
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

