// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfigSqladminV1beta4 {
  /// Whether data cache is enabled for the instance.
  final bool? dataCacheEnabled;

  /// Creates a new [DataCacheConfigSqladminV1beta4].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfigSqladminV1beta4({
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

  factory DataCacheConfigSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigSqladminV1beta4(
      dataCacheEnabled: map['dataCacheEnabled'] == null
          ? null
          : map['dataCacheEnabled'] as bool,
    );
  }
}
