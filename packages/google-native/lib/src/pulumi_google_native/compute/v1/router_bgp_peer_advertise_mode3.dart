/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseMode3 {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseMode3(this.value);
  final String value;

  static RouterBgpPeerAdvertiseMode3 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseMode3 value: $value');
  }
}
