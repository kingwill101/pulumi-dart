/// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
enum RouterBgpPeerEnable3 {
  false_("FALSE"),
  true_("TRUE");

  const RouterBgpPeerEnable3(this.value);
  final String value;

  static RouterBgpPeerEnable3 fromValue(String value) {
    for (final item in RouterBgpPeerEnable3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerEnable3 value: $value');
  }
}
