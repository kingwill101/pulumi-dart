/// Specifies refill policy of the pool.
enum RefillPolicy {
  always("always");

  const RefillPolicy(this.value);
  final String value;

  static RefillPolicy fromValue(String value) {
    for (final item in RefillPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RefillPolicy value: $value');
  }
}

