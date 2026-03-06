// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceOpensearchserviceConfig {
  /// HTTP endpoint of the OpenSearch domain.
  final pulumi.Input<String> endpoint;
  /// AWS region of the OpenSearch domain. Defaults to current region.
  final pulumi.Input<String>? region;

  /// Creates a new [DataSourceOpensearchserviceConfig].
  /// [endpoint] HTTP endpoint of the OpenSearch domain.
  /// [region] AWS region of the OpenSearch domain. Defaults to current region.
  const DataSourceOpensearchserviceConfig({
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
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

