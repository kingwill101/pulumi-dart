/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseMode2 {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseMode2(this.value);
  final String value;

  static RouterBgpPeerAdvertiseMode2 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseMode2 value: $value');
  }
}
