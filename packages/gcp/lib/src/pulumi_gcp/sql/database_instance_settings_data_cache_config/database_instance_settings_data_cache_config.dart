// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsDataCacheConfig {
  /// Whether data cache is enabled for the instance. Defaults to `true` for MYSQL Enterprise Plus and PostgreSQL Enterprise Plus instances only. For SQL Server Enterprise Plus instances it defaults to `false`.
  final bool? dataCacheEnabled;

  DatabaseInstanceSettingsDataCacheConfig({
    this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataCacheEnabledValue = dataCacheEnabled;
    if (dataCacheEnabledValue != null) {
      map['dataCacheEnabled'] = dataCacheEnabledValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsDataCacheConfig.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsDataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] == null
          ? null
          : map['dataCacheEnabled'] as bool,
    );
  }
}
