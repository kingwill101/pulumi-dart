/// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
enum RouterBgpAdvertiseModeComputeBeta {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpAdvertiseModeComputeBeta(this.value);
  final String value;

  static RouterBgpAdvertiseModeComputeBeta fromValue(String value) {
    for (final item in RouterBgpAdvertiseModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertiseModeComputeBeta value: $value');
  }
}

