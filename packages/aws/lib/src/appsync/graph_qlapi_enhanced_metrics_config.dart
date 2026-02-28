// ignore_for_file: unused_element, unnecessary_cast

class GraphQLApiEnhancedMetricsConfig {
  /// How data source metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_DATA_SOURCE_METRICS`, `PER_DATA_SOURCE_METRICS`
  final String dataSourceLevelMetricsBehavior;

  /// How operation metrics will be emitted to CloudWatch. Valid values: `ENABLED`, `DISABLED`
  final String operationLevelMetricsConfig;

  /// How resolver metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_RESOLVER_METRICS`, `PER_RESOLVER_METRICS`
  final String resolverLevelMetricsBehavior;

  /// Creates a new [GraphQLApiEnhancedMetricsConfig].
  /// [dataSourceLevelMetricsBehavior] How data source metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_DATA_SOURCE_METRICS`, `PER_DATA_SOURCE_METRICS`
  /// [operationLevelMetricsConfig] How operation metrics will be emitted to CloudWatch. Valid values: `ENABLED`, `DISABLED`
  /// [resolverLevelMetricsBehavior] How resolver metrics will be emitted to CloudWatch. Valid values: `FULL_REQUEST_RESOLVER_METRICS`, `PER_RESOLVER_METRICS`
  GraphQLApiEnhancedMetricsConfig({
    required this.dataSourceLevelMetricsBehavior,
    required this.operationLevelMetricsConfig,
    required this.resolverLevelMetricsBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSourceLevelMetricsBehavior'] = dataSourceLevelMetricsBehavior;
    map['operationLevelMetricsConfig'] = operationLevelMetricsConfig;
    map['resolverLevelMetricsBehavior'] = resolverLevelMetricsBehavior;
    return map;
  }

  factory GraphQLApiEnhancedMetricsConfig.fromMap(Map<String, dynamic> map) {
    return GraphQLApiEnhancedMetricsConfig(
      dataSourceLevelMetricsBehavior:
          map['dataSourceLevelMetricsBehavior'] as String,
      operationLevelMetricsConfig: map['operationLevelMetricsConfig'] as String,
      resolverLevelMetricsBehavior:
          map['resolverLevelMetricsBehavior'] as String,
    );
  }
}
