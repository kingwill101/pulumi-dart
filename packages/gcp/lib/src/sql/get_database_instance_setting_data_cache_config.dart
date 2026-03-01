// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstanceSettingDataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  /// Creates a new [GetDatabaseInstanceSettingDataCacheConfig].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  GetDatabaseInstanceSettingDataCacheConfig({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheEnabled': dataCacheEnabled,
    };
  }

  factory GetDatabaseInstanceSettingDataCacheConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingDataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}

