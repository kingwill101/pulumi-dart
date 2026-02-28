/// This field is deprecated. Use health_status_aggregation_policy instead. Policy for how the results from multiple health checks for the same endpoint are aggregated. - NO_AGGREGATION. An EndpointHealth message is returned for each backend in the health check service. - AND. If any backend's health check reports UNHEALTHY, then UNHEALTHY is the HealthState of the entire health check service. If all backend's are healthy, the HealthState of the health check service is HEALTHY. .
enum RegionHealthCheckServiceHealthStatusAggregationStrategyComputeBeta {
  and("AND"),
  noAggregation("NO_AGGREGATION");

  const RegionHealthCheckServiceHealthStatusAggregationStrategyComputeBeta(this.value);
  final String value;

  static RegionHealthCheckServiceHealthStatusAggregationStrategyComputeBeta fromValue(String value) {
    for (final item in RegionHealthCheckServiceHealthStatusAggregationStrategyComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionHealthCheckServiceHealthStatusAggregationStrategyComputeBeta value: $value');
  }
}

