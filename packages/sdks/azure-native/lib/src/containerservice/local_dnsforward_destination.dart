/// Destination server for DNS queries to be forwarded from localDNS.
enum LocalDNSForwardDestination {
  valueClusterCoreDNS("ClusterCoreDNS"),
  valueVnetDNS("VnetDNS");

  const LocalDNSForwardDestination(this.wireValue);
  final String wireValue;

  static LocalDNSForwardDestination fromValue(String value) {
    for (final item in LocalDNSForwardDestination.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSForwardDestination value: $value');
  }
}
