/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseMode {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseMode(this.value);
  final String value;

  static RouterBgpPeerAdvertiseMode fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseMode value: $value');
  }
}
