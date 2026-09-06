import 'package:pulumi/pulumi.dart' as pulumi;

/// `Internet` - Advertise routes to internet community.
/// `LocalAS` - Advertise routes to only localAS peers.
/// `NoAdvertise` - Don't advertise routes to any peer.
/// `NoExport` - Don't export to next AS.
/// `GShut` - Graceful Shutdown (GSHUT) withdraw routes before terminating BGP connection.
enum WellKnownCommunities implements pulumi.PulumiEnum<String> {
  valueInternet("Internet"),
  valueLocalAS("LocalAS"),
  valueNoAdvertise("NoAdvertise"),
  valueNoExport("NoExport"),
  valueGShut("GShut");

  const WellKnownCommunities(this.wireValue);
  @override
  final String wireValue;

  static WellKnownCommunities fromValue(String value) {
    for (final item in WellKnownCommunities.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WellKnownCommunities value: $value');
  }
}
