// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingDataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  GetDatabaseInstancesInstanceSettingDataCacheConfig({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheEnabled'] = dataCacheEnabled;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingDataCacheConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingDataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
