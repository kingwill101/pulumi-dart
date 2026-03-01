/// Property value
enum ResolverLevelMetricsBehavior {
  fULLREQUESTRESOLVERMETRICS("FULL_REQUEST_RESOLVER_METRICS"),
  pERRESOLVERMETRICS("PER_RESOLVER_METRICS");

  const ResolverLevelMetricsBehavior(this.value);
  final String value;

  static ResolverLevelMetricsBehavior fromValue(String value) {
    for (final item in ResolverLevelMetricsBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResolverLevelMetricsBehavior value: $value');
  }
}

