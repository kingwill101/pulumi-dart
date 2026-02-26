/// The BFD packet mode for this BGP peer. If set to CONTROL_AND_ECHO, BFD echo mode is enabled for this BGP peer. In this mode, if the peer router also has BFD echo mode enabled, BFD echo packets will be sent to the other router. If the peer router does not have BFD echo mode enabled, only control packets will be sent. If set to CONTROL_ONLY, BFD echo mode is disabled for this BGP peer. If this router and the peer router have a multihop connection, this should be set to CONTROL_ONLY as BFD echo mode is only supported on singlehop connections. The default is CONTROL_AND_ECHO.
enum RouterBgpPeerBfdPacketMode {
  controlAndEcho("CONTROL_AND_ECHO"),
  controlOnly("CONTROL_ONLY");

  const RouterBgpPeerBfdPacketMode(this.value);
  final String value;

  static RouterBgpPeerBfdPacketMode fromValue(String value) {
    for (final item in RouterBgpPeerBfdPacketMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerBfdPacketMode value: $value');
  }
}
