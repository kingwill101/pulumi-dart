// ignore_for_file: unused_element, unnecessary_cast

/// Data cache configurations.
class DataCacheConfigResponse {
  /// Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  /// Creates a new [DataCacheConfigResponse].
  /// [dataCacheEnabled] Whether data cache is enabled for the instance.
  DataCacheConfigResponse({required this.dataCacheEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataCacheEnabled': dataCacheEnabled};
  }

  factory DataCacheConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponse(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
