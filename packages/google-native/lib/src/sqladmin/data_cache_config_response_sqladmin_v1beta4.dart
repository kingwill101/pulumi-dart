// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfigResponseSqladminV1beta4 {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  /// Creates a new [DataCacheConfigResponseSqladminV1beta4].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfigResponseSqladminV1beta4({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheEnabled'] = dataCacheEnabled;
    return map;
  }

  factory DataCacheConfigResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return DataCacheConfigResponseSqladminV1beta4(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
