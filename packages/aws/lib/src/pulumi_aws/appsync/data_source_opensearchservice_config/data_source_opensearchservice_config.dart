// ignore_for_file: unused_element, unnecessary_cast

class DataSourceOpensearchserviceConfig {
  /// HTTP endpoint of the OpenSearch domain.
  final String endpoint;

  /// AWS region of the OpenSearch domain. Defaults to current region.
  final String? region;

  DataSourceOpensearchserviceConfig({
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

  factory DataSourceOpensearchserviceConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceOpensearchserviceConfig(
      endpoint: map['endpoint'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
