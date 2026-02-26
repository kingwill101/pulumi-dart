// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingDataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  GetDatabaseInstanceSettingDataCacheConfig({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheEnabled'] = dataCacheEnabled;
    return map;
  }

  factory GetDatabaseInstanceSettingDataCacheConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingDataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
