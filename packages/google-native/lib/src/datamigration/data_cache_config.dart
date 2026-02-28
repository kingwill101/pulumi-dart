// ignore_for_file: unused_element, unnecessary_cast

/// Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
class DataCacheConfig {
  /// Optional. Whether data cache is enabled for the instance.
  final bool? dataCacheEnabled;

  /// Creates a new [DataCacheConfig].
  /// [dataCacheEnabled] Optional. Whether data cache is enabled for the instance.
  DataCacheConfig({
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

  factory DataCacheConfig.fromMap(Map<String, dynamic> map) {
    return DataCacheConfig(
      dataCacheEnabled: map['dataCacheEnabled'] == null
          ? null
          : map['dataCacheEnabled'] as bool,
    );
  }
}
