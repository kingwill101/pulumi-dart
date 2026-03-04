/// Property value
enum ResolverLevelMetricsBehavior {
  fULLREQUESTRESOLVERMETRICS("FULL_REQUEST_RESOLVER_METRICS"),
  pERRESOLVERMETRICS("PER_RESOLVER_METRICS");

  const ResolverLevelMetricsBehavior(this.wireValue);
  final String wireValue;

  static ResolverLevelMetricsBehavior fromValue(String value) {
    for (final item in ResolverLevelMetricsBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolverLevelMetricsBehavior value: $value');
  }
}
