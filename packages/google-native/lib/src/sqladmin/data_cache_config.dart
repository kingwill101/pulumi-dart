// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfig {
  /// Whether data cache is enabled for the instance.
  final bool? dataCacheEnabled;

  /// Creates a new [DataCacheConfig].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
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
