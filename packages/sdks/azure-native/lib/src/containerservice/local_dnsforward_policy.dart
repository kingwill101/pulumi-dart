/// Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
enum LocalDNSForwardPolicy {
  valueSequential("Sequential"),
  valueRoundRobin("RoundRobin"),
  valueRandom("Random");

  const LocalDNSForwardPolicy(this.value);
  final String value;

  static LocalDNSForwardPolicy fromValue(String value) {
    for (final item in LocalDNSForwardPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSForwardPolicy value: $value');
  }
}

