// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfig2 {
  /// Whether data cache is enabled for the instance.
  final bool? dataCacheEnabled;

  DataCacheConfig2({
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

  factory DataCacheConfig2.fromMap(Map<String, dynamic> map) {
    return DataCacheConfig2(
      dataCacheEnabled: map['dataCacheEnabled'] == null
          ? null
          : map['dataCacheEnabled'] as bool,
    );
  }
}
