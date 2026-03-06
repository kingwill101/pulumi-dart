// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphQLApiEnhancedMetricsConfig {
  /// How data source metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_DATA_SOURCE_METRICS`, `PER_DATA_SOURCE_METRICS`
  final pulumi.Input<String> dataSourceLevelMetricsBehavior;
  /// How operation metrics will be emitted to CloudWatch. Valid values: `ENABLED`, `DISABLED`
  final pulumi.Input<String> operationLevelMetricsConfig;
  /// How resolver metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_RESOLVER_METRICS`, `PER_RESOLVER_METRICS`
  final pulumi.Input<String> resolverLevelMetricsBehavior;

  /// Creates a new [GraphQLApiEnhancedMetricsConfig].
  /// [dataSourceLevelMetricsBehavior] How data source metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_DATA_SOURCE_METRICS`, `PER_DATA_SOURCE_METRICS`
  /// [operationLevelMetricsConfig] How operation metrics will be emitted to CloudWatch. Valid values: `ENABLED`, `DISABLED`
  /// [resolverLevelMetricsBehavior] How resolver metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_RESOLVER_METRICS`, `PER_RESOLVER_METRICS`
  const GraphQLApiEnhancedMetricsConfig({
    required this.dataSourceLevelMetricsBehavior,
    required this.operationLevelMetricsConfig,
    required this.resolverLevelMetricsBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceLevelMetricsBehavior': dataSourceLevelMetricsBehavior,
      'operationLevelMetricsConfig': operationLevelMetricsConfig,
      'resolverLevelMetricsBehavior': resolverLevelMetricsBehavior,
    };
  }

  factory GraphQLApiEnhancedMetricsConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiEnhancedMetricsConfig(
      dataSourceLevelMetricsBehavior: pulumi.Input.fromValue(map['dataSourceLevelMetricsBehavior'] as String),
      operationLevelMetricsConfig: pulumi.Input.fromValue(map['operationLevelMetricsConfig'] as String),
      resolverLevelMetricsBehavior: pulumi.Input.fromValue(map['resolverLevelMetricsBehavior'] as String),
    );
  }
}

