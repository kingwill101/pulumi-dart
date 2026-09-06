import 'package:pulumi/pulumi.dart' as pulumi;

/// Forward policy for selecting upstream DNS server. See [forward plugin](https://coredns.io/plugins/forward) for more information.
enum LocalDNSForwardPolicy implements pulumi.PulumiEnum<String> {
  valueSequential("Sequential"),
  valueRoundRobin("RoundRobin"),
  valueRandom("Random");

  const LocalDNSForwardPolicy(this.wireValue);
  @override
  final String wireValue;

  static LocalDNSForwardPolicy fromValue(String value) {
    for (final item in LocalDNSForwardPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSForwardPolicy value: $value');
  }
}
