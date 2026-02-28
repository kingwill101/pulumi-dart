/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseModeComputeV1 {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseModeComputeV1(this.value);
  final String value;

  static RouterBgpAdvertiseModeComputeV1 fromValue(String value) {
    for (final item in RouterBgpAdvertiseModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseModeComputeV1 value: $value');
  }
}

