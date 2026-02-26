/// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
enum RouterBgpPeerEnable2 {
  false_("FALSE"),
  true_("TRUE");

  const RouterBgpPeerEnable2(this.value);
  final String value;

  static RouterBgpPeerEnable2 fromValue(String value) {
    for (final item in RouterBgpPeerEnable2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerEnable2 value: $value');
  }
}
