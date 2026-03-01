/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseModeComputeBeta {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseModeComputeBeta(this.value);
  final String value;

  static RouterBgpPeerAdvertiseModeComputeBeta fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RouterBgpPeerAdvertiseModeComputeBeta value: $value',
    );
  }
}
