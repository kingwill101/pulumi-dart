import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination server for DNS queries to be forwarded from localDNS.
enum LocalDNSForwardDestination implements pulumi.PulumiEnum<String> {
  valueClusterCoreDNS("ClusterCoreDNS"),
  valueVnetDNS("VnetDNS");

  const LocalDNSForwardDestination(this.wireValue);
  @override
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
