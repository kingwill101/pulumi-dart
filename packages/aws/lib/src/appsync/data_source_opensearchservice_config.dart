// ignore_for_file: unused_element, unnecessary_cast


class DataSourceOpensearchserviceConfig {
  /// HTTP endpoint of the OpenSearch domain.
  final String endpoint;
  /// AWS region of the OpenSearch domain. Defaults to current region.
  final String? region;

  /// Creates a new [DataSourceOpensearchserviceConfig].
  /// [endpoint] HTTP endpoint of the OpenSearch domain.
  /// [region] AWS region of the OpenSearch domain. Defaults to current region.
  DataSourceOpensearchserviceConfig({
    required this.endpoint,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'region': ?region,
    };
  }

  factory DataSourceOpensearchserviceConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceOpensearchserviceConfig(
      endpoint: map['endpoint'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

