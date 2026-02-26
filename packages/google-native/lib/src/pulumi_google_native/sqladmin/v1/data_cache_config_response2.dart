// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfigResponse2 {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  DataCacheConfigResponse2({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheEnabled'] = dataCacheEnabled;
    return map;
  }

  factory DataCacheConfigResponse2.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponse2(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
