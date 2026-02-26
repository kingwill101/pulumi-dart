/// Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.
enum EndpointsApiServiceRolloutStrategy2 {
  unspecifiedRolloutStrategy("UNSPECIFIED_ROLLOUT_STRATEGY"),
  fixed("FIXED"),
  managed("MANAGED");

  const EndpointsApiServiceRolloutStrategy2(this.value);
  final String value;

  static EndpointsApiServiceRolloutStrategy2 fromValue(String value) {
    for (final item in EndpointsApiServiceRolloutStrategy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EndpointsApiServiceRolloutStrategy2 value: $value');
  }
}
