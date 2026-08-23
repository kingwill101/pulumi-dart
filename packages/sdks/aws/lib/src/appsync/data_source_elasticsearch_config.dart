// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceElasticsearchConfig {
  /// HTTP endpoint of the Elasticsearch domain.
  final pulumi.Input<String> endpoint;
  /// AWS region of Elasticsearch domain. Defaults to current region.
  final pulumi.Input<String>? region;

  /// Creates a new [DataSourceElasticsearchConfig].
  /// [endpoint] HTTP endpoint of the Elasticsearch domain.
  /// [region] AWS region of Elasticsearch domain. Defaults to current region.
  const DataSourceElasticsearchConfig({
    required this.endpoint,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'region': ?region,
    };
  }

  factory DataSourceElasticsearchConfig.fromMap(Map<String, dynamic> map) {
    return DataSourceElasticsearchConfig(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
