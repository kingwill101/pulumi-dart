/// Destination server for DNS queries to be forwarded from localDNS.
enum LocalDNSForwardDestination {
  valueClusterCoreDNS("ClusterCoreDNS"),
  valueVnetDNS("VnetDNS");

  const LocalDNSForwardDestination(this.value);
  final String value;

  static LocalDNSForwardDestination fromValue(String value) {
    for (final item in LocalDNSForwardDestination.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSForwardDestination value: $value');
  }
}

