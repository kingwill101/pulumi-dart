/// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
enum RouterBgpPeerBfdSessionInitializationMode {
  active("ACTIVE"),
  disabled("DISABLED"),
  passive("PASSIVE");

  const RouterBgpPeerBfdSessionInitializationMode(this.value);
  final String value;

  static RouterBgpPeerBfdSessionInitializationMode fromValue(String value) {
    for (final item in RouterBgpPeerBfdSessionInitializationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouterBgpPeerBfdSessionInitializationMode value: $value',
    );
  }
}
