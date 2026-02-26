/// The state of the stream.
enum StreamState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  created("CREATED"),
  running("RUNNING"),
  paused("PAUSED"),
  maintenance("MAINTENANCE"),
  failed("FAILED"),
  failedPermanently("FAILED_PERMANENTLY"),
  starting("STARTING"),
  draining("DRAINING");

  const StreamState2(this.value);
  final String value;

  static StreamState2 fromValue(String value) {
    for (final item in StreamState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamState2 value: $value');
  }
}
