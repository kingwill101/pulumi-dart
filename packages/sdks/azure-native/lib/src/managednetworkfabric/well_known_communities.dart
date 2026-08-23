/// `Internet` - Advertise routes to internet community.
/// `LocalAS` - Advertise routes to only localAS peers.
/// `NoAdvertise` - Don't advertise routes to any peer.
/// `NoExport` - Don't export to next AS.
/// `GShut` - Graceful Shutdown (GSHUT) withdraw routes before terminating BGP connection.
enum WellKnownCommunities {
  valueInternet("Internet"),
  valueLocalAS("LocalAS"),
  valueNoAdvertise("NoAdvertise"),
  valueNoExport("NoExport"),
  valueGShut("GShut");

  const WellKnownCommunities(this.wireValue);
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
