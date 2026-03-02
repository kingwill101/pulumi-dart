// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_level_metrics_behavior_enum_value.dart';
import 'operation_level_metrics_config_enum_value.dart';
import 'resolver_level_metrics_behavior_enum_value.dart';

/// Definition of EnhancedMetricsConfig
class EnhancedMetricsConfig {
  /// <p>Controls how data source metrics will be emitted to CloudWatch. Data source metrics include:</p> <ul> <li> <p>Requests: The number of invocations that occured during a request.</p> </li> <li> <p>Latency: The time to complete a data source invocation.</p> </li> <li> <p>Errors: The number of errors that occurred during a data source invocation.</p> </li> </ul> <p>These metrics can be emitted to CloudWatch per data source or for all data sources in the request. Metrics will be recorded by API ID and data source name. <code>dataSourceLevelMetricsBehavior</code> accepts one of these values at a time:</p> <ul> <li> <p> <code>FULL_REQUEST_DATA_SOURCE_METRICS</code>: Records and emits metric data for all data sources in the request.</p> </li> <li> <p> <code>PER_DATA_SOURCE_METRICS</code>: Records and emits metric data for data sources that have the <code>metricsConfig</code> value set to <code>ENABLED</code>.</p> </li> </ul>
  final pulumi.Input<DataSourceLevelMetricsBehaviorEnumValue>? dataSourceLevelMetricsBehavior;
  /// <p> Controls how operation metrics will be emitted to CloudWatch. Operation metrics include:</p> <ul> <li> <p>Requests: The number of times a specified GraphQL operation was called.</p> </li> <li> <p>GraphQL errors: The number of GraphQL errors that occurred during a specified GraphQL operation.</p> </li> </ul> <p>Metrics will be recorded by API ID and operation name. You can set the value to <code>ENABLED</code> or <code>DISABLED</code>.</p>
  final pulumi.Input<OperationLevelMetricsConfigEnumValue>? operationLevelMetricsConfig;
  /// <p>Controls how resolver metrics will be emitted to CloudWatch. Resolver metrics include:</p> <ul> <li> <p>GraphQL errors: The number of GraphQL errors that occurred.</p> </li> <li> <p>Requests: The number of invocations that occurred during a request. </p> </li> <li> <p>Latency: The time to complete a resolver invocation.</p> </li> <li> <p>Cache hits: The number of cache hits during a request.</p> </li> <li> <p>Cache misses: The number of cache misses during a request.</p> </li> </ul> <p>These metrics can be emitted to CloudWatch per resolver or for all resolvers in the request. Metrics will be recorded by API ID and resolver name. <code>resolverLevelMetricsBehavior</code> accepts one of these values at a time:</p> <ul> <li> <p> <code>FULL_REQUEST_RESOLVER_METRICS</code>: Records and emits metric data for all resolvers in the request.</p> </li> <li> <p> <code>PER_RESOLVER_METRICS</code>: Records and emits metric data for resolvers that have the <code>metricsConfig</code> value set to <code>ENABLED</code>.</p> </li> </ul>
  final pulumi.Input<ResolverLevelMetricsBehaviorEnumValue>? resolverLevelMetricsBehavior;

  /// Creates a new [EnhancedMetricsConfig].
  /// [dataSourceLevelMetricsBehavior] <p>Controls how data source metrics will be emitted to CloudWatch. Data source metrics include:</p> <ul> <li> <p>Requests: The number of invocations that occured during a request.</p> </li> <li> <p>Latency: The time to complete a data source invocation.</p> </li> <li> <p>Errors: The number of errors that occurred during a data source invocation.</p> </li> </ul> <p>These metrics can be emitted to CloudWatch per data source or for all data sources in the request. Metrics will be recorded by API ID and data source name. <code>dataSourceLevelMetricsBehavior</code> accepts one of these values at a time:</p> <ul> <li> <p> <code>FULL_REQUEST_DATA_SOURCE_METRICS</code>: Records and emits metric data for all data sources in the request.</p> </li> <li> <p> <code>PER_DATA_SOURCE_METRICS</code>: Records and emits metric data for data sources that have the <code>metricsConfig</code> value set to <code>ENABLED</code>.</p> </li> </ul>
  /// [operationLevelMetricsConfig] <p> Controls how operation metrics will be emitted to CloudWatch. Operation metrics include:</p> <ul> <li> <p>Requests: The number of times a specified GraphQL operation was called.</p> </li> <li> <p>GraphQL errors: The number of GraphQL errors that occurred during a specified GraphQL operation.</p> </li> </ul> <p>Metrics will be recorded by API ID and operation name. You can set the value to <code>ENABLED</code> or <code>DISABLED</code>.</p>
  /// [resolverLevelMetricsBehavior] <p>Controls how resolver metrics will be emitted to CloudWatch. Resolver metrics include:</p> <ul> <li> <p>GraphQL errors: The number of GraphQL errors that occurred.</p> </li> <li> <p>Requests: The number of invocations that occurred during a request. </p> </li> <li> <p>Latency: The time to complete a resolver invocation.</p> </li> <li> <p>Cache hits: The number of cache hits during a request.</p> </li> <li> <p>Cache misses: The number of cache misses during a request.</p> </li> </ul> <p>These metrics can be emitted to CloudWatch per resolver or for all resolvers in the request. Metrics will be recorded by API ID and resolver name. <code>resolverLevelMetricsBehavior</code> accepts one of these values at a time:</p> <ul> <li> <p> <code>FULL_REQUEST_RESOLVER_METRICS</code>: Records and emits metric data for all resolvers in the request.</p> </li> <li> <p> <code>PER_RESOLVER_METRICS</code>: Records and emits metric data for resolvers that have the <code>metricsConfig</code> value set to <code>ENABLED</code>.</p> </li> </ul>
  EnhancedMetricsConfig({
    this.dataSourceLevelMetricsBehavior,
    this.operationLevelMetricsConfig,
    this.resolverLevelMetricsBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceLevelMetricsBehavior': ?pulumi.Input.mapOptionalInputValue<DataSourceLevelMetricsBehaviorEnumValue, Map<String, dynamic>>(dataSourceLevelMetricsBehavior, (value) => value.toMap()),
      'operationLevelMetricsConfig': ?pulumi.Input.mapOptionalInputValue<OperationLevelMetricsConfigEnumValue, Map<String, dynamic>>(operationLevelMetricsConfig, (value) => value.toMap()),
      'resolverLevelMetricsBehavior': ?pulumi.Input.mapOptionalInputValue<ResolverLevelMetricsBehaviorEnumValue, Map<String, dynamic>>(resolverLevelMetricsBehavior, (value) => value.toMap()),
    };
  }

  factory EnhancedMetricsConfig.fromMap(Map<String, dynamic> map) {
    return EnhancedMetricsConfig(
      dataSourceLevelMetricsBehavior: map['dataSourceLevelMetricsBehavior'] == null ? null : (DataSourceLevelMetricsBehaviorEnumValue.fromMap((map['dataSourceLevelMetricsBehavior']! as Map).cast<String, dynamic>())).input(),
      operationLevelMetricsConfig: map['operationLevelMetricsConfig'] == null ? null : (OperationLevelMetricsConfigEnumValue.fromMap((map['operationLevelMetricsConfig']! as Map).cast<String, dynamic>())).input(),
      resolverLevelMetricsBehavior: map['resolverLevelMetricsBehavior'] == null ? null : (ResolverLevelMetricsBehaviorEnumValue.fromMap((map['resolverLevelMetricsBehavior']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

