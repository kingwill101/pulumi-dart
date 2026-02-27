// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfigSqladminV1 {
  /// Whether data cache is enabled for the instance.
  final bool? dataCacheEnabled;

  DataCacheConfigSqladminV1({
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

  factory DataCacheConfigSqladminV1.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigSqladminV1(
      dataCacheEnabled: map['dataCacheEnabled'] == null
          ? null
          : map['dataCacheEnabled'] as bool,
    );
  }
}
