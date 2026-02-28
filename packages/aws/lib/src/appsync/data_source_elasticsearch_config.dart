// ignore_for_file: unused_element, unnecessary_cast

class DataSourceElasticsearchConfig {
  /// HTTP endpoint of the Elasticsearch domain.
  final String endpoint;

  /// AWS region of Elasticsearch domain. Defaults to current region.
  final String? region;

  /// Creates a new [DataSourceElasticsearchConfig].
  /// [endpoint] HTTP endpoint of the Elasticsearch domain.
  /// [region] AWS region of Elasticsearch domain. Defaults to current region.
  DataSourceElasticsearchConfig({
    required this.endpoint,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DataSourceElasticsearchConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceElasticsearchConfig(
      endpoint: map['endpoint'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
