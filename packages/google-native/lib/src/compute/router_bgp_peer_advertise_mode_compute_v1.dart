/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseModeComputeV1 {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseModeComputeV1(this.value);
  final String value;

  static RouterBgpPeerAdvertiseModeComputeV1 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseModeComputeV1 value: $value');
  }
}

