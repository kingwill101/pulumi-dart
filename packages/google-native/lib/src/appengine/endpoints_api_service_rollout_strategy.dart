/// Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.
enum EndpointsApiServiceRolloutStrategy {
  unspecifiedRolloutStrategy("UNSPECIFIED_ROLLOUT_STRATEGY"),
  fixed("FIXED"),
  managed("MANAGED");

  const EndpointsApiServiceRolloutStrategy(this.value);
  final String value;

  static EndpointsApiServiceRolloutStrategy fromValue(String value) {
    for (final item in EndpointsApiServiceRolloutStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EndpointsApiServiceRolloutStrategy value: $value');
  }
}
