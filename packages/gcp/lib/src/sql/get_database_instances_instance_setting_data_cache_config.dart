// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingDataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  /// Creates a new [GetDatabaseInstancesInstanceSettingDataCacheConfig].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  GetDatabaseInstancesInstanceSettingDataCacheConfig({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataCacheEnabled': dataCacheEnabled};
  }

  factory GetDatabaseInstancesInstanceSettingDataCacheConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingDataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
