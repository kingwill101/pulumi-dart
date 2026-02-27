// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfigResponseSqladminV1 {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  DataCacheConfigResponseSqladminV1({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheEnabled'] = dataCacheEnabled;
    return map;
  }

  factory DataCacheConfigResponseSqladminV1.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponseSqladminV1(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
