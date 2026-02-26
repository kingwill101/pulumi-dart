// ignore_for_file: unused_element, unnecessary_cast

/// Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
class DataCacheConfigResponse {
  /// Optional. Whether data cache is enabled for the instance.
  final bool dataCacheEnabled;

  DataCacheConfigResponse({
    required this.dataCacheEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheEnabled'] = dataCacheEnabled;
    return map;
  }

  factory DataCacheConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataCacheConfigResponse(
      dataCacheEnabled: map['dataCacheEnabled'] as bool,
    );
  }
}
